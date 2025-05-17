import abjad
import baca
import evans
import trinton
import random
import math
from abjadext import rmakers
from itertools import cycle


def rhythm_1(stage=1, map_rotation=0):
    def return_rhythm_1(durations):
        container = abjad.Container()
        for duration in durations:
            numerator = int(duration.numerator)
            denominator = int(duration.denominator)
            meter = abjad.Meter(duration)

            if math.log2(denominator).is_integer():
                if numerator % 3 == 0 and numerator != 15:
                    if meter.is_compound is True:
                        half_duration = abjad.Duration(numerator, denominator * 2)
                        selections = rmakers.accelerando(
                            [half_duration, half_duration],
                            [(1, 20), (1, 8), (1, 32)],
                            [(1, 8), (1, 20), (1, 32)],
                        )
                        container.extend(selections)

                    else:
                        selections = rmakers.accelerando(
                            [duration], [(1, 20), (1, 8), (1, 32)]
                        )
                        container.extend(selections)

                if numerator % 2 == 0 and numerator % 3 != 0 or numerator == 1:
                    selections = rmakers.accelerando(
                        [duration], [(1, 8), (1, 20), (1, 32)]
                    )
                    container.extend(selections)

                def is_prime(n):
                    for i in range(2, n):
                        if (n % i) == 0:
                            return False
                        else:
                            return True

                if is_prime(numerator) is True and numerator > 3 and numerator % 9 != 0:
                    new_numerator = numerator / 2
                    numerator_1 = new_numerator + 0.5
                    numerator_1 = int(numerator_1)
                    numerator_2 = new_numerator - 0.5
                    numerator_2 = int(numerator_2)
                    new_durations = [
                        abjad.Duration(numerator_1, denominator),
                        abjad.Duration(numerator_2, denominator),
                    ]
                    selections = rmakers.accelerando(
                        new_durations,
                        [(1, 8), (1, 20), (1, 32)],
                        [(1, 20), (1, 8), (1, 32)],
                    )
                    container.extend(selections)
            else:
                selections = rmakers.accelerando([duration], [(1, 8), (1, 20), (1, 32)])
                container.extend(selections)

        if stage < 2:
            logistic_map_digit = trinton.logistic_map(x=4, r=-1, n=12)
            logistic_map_sequence = trinton.rotated_sequence(
                logistic_map_digit, map_rotation % len(logistic_map_digit)
            )
            rmakers.force_rest(abjad.select.leaves(container))
            note_selector = trinton.patterned_tie_index_selector(
                logistic_map_sequence[0:8], 10
            )
            notes = note_selector(abjad.select.leaves(container))
            rmakers.force_note(notes)

        rmakers.duration_bracket(container)
        rmakers.feather_beam(container, beam_rests=True)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_1


def rhythm_2(stage=1, font_size=-3):
    def return_rhythm_2(durations):
        if stage == 1:
            durations = durations
        if stage > 1:
            new_durations = []
            for duration in durations:
                numerator = int(duration.numerator)
                denominator = int(duration.denominator)
                meter = abjad.Meter(duration)
                if stage == 2:
                    duration_modifier = abjad.Duration((1, denominator * 4))
                    half_duration = duration / 2
                    new_durations.append(half_duration + duration_modifier)
                    new_durations.append(half_duration - duration_modifier)

                if stage == 3:
                    if numerator % 3 == 0 and numerator != 15:
                        if meter.is_compound is True:
                            prototype = []
                            for _ in range(0, numerator):
                                if len(prototype) == 0:
                                    prototype.append(
                                        abjad.Duration((3, denominator * 2))
                                    )
                                else:
                                    prototype_duration = sum(prototype)
                                    if prototype_duration == abjad.Duration(
                                        (numerator, denominator)
                                    ):
                                        pass
                                    else:
                                        prototype.append(
                                            abjad.Duration((3, denominator * 2))
                                        )

                            for new_duration in prototype:
                                new_durations.append(new_duration)
                        else:
                            new_duration = abjad.Duration((1, denominator))
                            for _ in range(0, numerator):
                                new_durations.append(new_duration)

                    if numerator % 2 == 0 and numerator % 3 != 0:
                        new_duration = abjad.Duration((1, denominator))
                        for _ in range(0, numerator):
                            new_durations.append(new_duration)

                    def is_prime(n):
                        for i in range(2, n):
                            if (n % i) == 0:
                                return False
                            else:
                                return True

                    if (
                        is_prime(numerator) is True
                        and numerator > 3
                        and numerator % 9 != 0
                    ):
                        prototype_durations = []

                        prototype_durations.append(abjad.Duration((3, denominator * 2)))

                        for _ in range(0, numerator):
                            if sum(prototype_durations) == abjad.Duration(
                                (numerator, denominator)
                            ):
                                pass
                            else:
                                prototype_durations.append(
                                    abjad.Duration((1, denominator))
                                )

                        for duration in prototype_durations:
                            new_durations.append(duration)
            durations = new_durations

        container = abjad.Container()

        rhythm_selections = rmakers.talea(durations, [1], 32, extra_counts=[4])

        container.extend(rhythm_selections)
        rmakers.rewrite_dots(container)
        for tuplet in abjad.select.tuplets(container):
            abjad.beam(tuplet, beam_rests=True)
        for tuplet in abjad.select.tuplets(container):
            if isinstance(abjad.get.parentage(tuplet).parent, abjad.Tuplet):
                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\once \override TupletBracket.stencil = ##f",
                            r"\once \override TupletNumber.stencil = ##f",
                        ],
                        site="before",
                    ),
                    tuplet,
                )
            else:
                if stage == 3:
                    relevant_leaves = [
                        abjad.select.leaf(tuplet, -2),
                        abjad.select.leaf(tuplet, -1),
                    ]
                    rmakers.force_rest(relevant_leaves)
                    trinton.fuse_tuplet_rests(container)

                transparent_noteheads_ = trinton.transparent_noteheads(
                    selector=trinton.pleaves()
                )

                transparent_noteheads_(tuplet)

                abjad.beam(tuplet)

                abjad.slur(abjad.select.leaves(tuplet, pitched=True))

                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            rf"\set fontSize = #{font_size}",
                            r"\override Staff.Dots.stencil = ##f",
                            r"\my-hack-slash",
                        ],
                        site="before",
                    ),
                    abjad.select.leaf(tuplet, 0),
                )

                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\set fontSize = #-1",
                            r"\revert Staff.Dots.stencil",
                        ],
                        site="absolute_after",
                    ),
                    abjad.select.leaf(tuplet, -1),
                )

                rmakers.duration_bracket(tuplet)

        rmakers.trivialize(container)
        rmakers.rewrite_rest_filled(container)
        rmakers.rewrite_sustained(container)

        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_2


def rhythm_3(stage=1, p=0.5, seed=1, tuplet_index=0):
    def return_rhythm_3(durations):
        beat_regions = []
        for duration in durations:
            numerator = int(duration.numerator)
            denominator = int(duration.denominator)
            meter = abjad.Meter(duration)

            if numerator % 3 == 0 and numerator != 15:
                regions = []
                if meter.is_compound is True:
                    range_limit = int(numerator / 3)
                    for _ in range(0, range_limit):
                        regions.append(abjad.Duration((3, denominator)))

                else:
                    for _ in range(0, numerator):
                        regions.append(abjad.Duration((1, denominator)))

                beat_regions.append(regions)

            if numerator % 2 == 0 and numerator % 3 != 0:
                regions = []
                for _ in range(0, numerator):
                    regions.append(abjad.Duration((1, denominator)))

                beat_regions.append(regions)

            def is_prime(n):
                for i in range(2, n):
                    if (n % i) == 0:
                        return False
                    else:
                        return True

            if is_prime(numerator) is True and numerator > 3 and numerator % 9 != 0:
                regions = []
                regions.append(abjad.Duration((3, denominator)))

                for _ in range(0, numerator):
                    if sum(regions) == numerator / denominator:
                        pass
                    else:
                        regions.append(abjad.Duration((2, denominator)))

                regions = trinton.rotated_sequence(regions, 1)

                beat_regions.append(regions)

        container = abjad.Container()

        beat_regions = abjad.sequence.flatten(beat_regions)

        music = rmakers.tuplet(beat_regions, [(1,)])
        container.extend(music)

        if stage > 1:
            random_walk = trinton.random_walk(
                chord=[2, 2, 3, 2, 3, 2, 3, 3, 4, 3, 4, 6], seed=seed
            )

            secondary_tuplet_ratios = []
            new_ratio = []
            for i, step in enumerate(random_walk):
                if len(new_ratio) != 5:
                    new_ratio.append(step)
                else:
                    new_tuplet_ratio = tuple(new_ratio)
                    secondary_tuplet_ratios.append(new_tuplet_ratio)
                    new_ratio.clear()

            if stage == 2:
                relevant_tuplets = []
                tuplets = abjad.select.tuplets(container)

                random.seed(seed)
                random_floats = [random.random() for _ in range(0, len(tuplets))]

                for float, tuplet in zip(random_floats, tuplets):
                    if float <= p:
                        relevant_tuplets.append(tuplet)

            if stage == 3:
                relevant_tuplets = abjad.select.tuplets(container)

            secondary_tuplet_ratios = trinton.rotated_sequence(
                secondary_tuplet_ratios, tuplet_index % len(secondary_tuplet_ratios)
            )

            for tuplet, secondary_tuplet_ratio in zip(
                relevant_tuplets, secondary_tuplet_ratios
            ):
                new_tuplet = rmakers.tuplet(
                    [abjad.get.duration(tuplet)], [secondary_tuplet_ratio]
                )
                abjad.mutate.replace(tuplet, new_tuplet)

        rmakers.rewrite_dots(container)
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rmakers.trivialize(container)
        for tuplet in abjad.select.tuplets(container):
            abjad.beam(tuplet, beam_rests=True)
        rmakers.rewrite_rest_filled(container)
        rmakers.rewrite_sustained(container)
        rmakers.extract_trivial(container)

        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_3


def rhythm_4(stage=1, rest_size=1):
    def return_rhythm_4(durations):
        talea_numerators = []
        for duration in durations:
            numerator = int(duration.numerator)
            denominator = int(duration.denominator)
            meter = abjad.Meter(duration)
            if numerator % 3 == 0 and numerator != 15:
                if meter.is_compound is True:
                    for _ in range(0, int(numerator / 3)):
                        new_numerators = [2, 1]
                        if denominator != 16:
                            new_new_numerators = []
                            if denominator < 16:
                                multiplier = 16 / denominator
                            if denominator > 16:
                                multiplier = denominator / 16
                            for numer in new_numerators:
                                new_numerator = numer * multiplier
                                new_numerator = int(new_numerator)
                                new_new_numerators.append(new_numerator)
                            new_numerators = new_new_numerators

                        for _ in new_numerators:
                            talea_numerators.append(_)

                else:
                    for _ in range(0, numerator):
                        talea_numerator = 1
                        if denominator != 16:
                            if denominator < 16:
                                multiplier = 16 / denominator
                            if denominator > 16:
                                multiplier = denominator / 16
                            talea_numerator = int(talea_numerator * multiplier)
                        talea_numerators.append(talea_numerator)

            if numerator % 2 == 0 and numerator % 3 != 0 or numerator == 1:
                for _ in range(0, numerator):
                    talea_numerator = 1
                    if denominator != 16:
                        if denominator < 16:
                            multiplier = 16 / denominator
                        if denominator > 16:
                            multiplier = denominator / 16
                        talea_numerator = int(talea_numerator * multiplier)
                    talea_numerators.append(talea_numerator)

            def is_prime(n):
                for i in range(2, n):
                    if (n % i) == 0:
                        return False
                    else:
                        return True

            if is_prime(numerator) is True and numerator > 3 and numerator % 9 != 0:
                new_numerator = numerator / 2
                numerator_1 = new_numerator - 0.5
                numerator_1 = int(numerator_1)
                numerator_2 = new_numerator + 0.5
                numerator_2 = int(numerator_2)
                new_durations = [
                    abjad.Duration(numerator_1, denominator),
                    abjad.Duration(numerator_2, denominator),
                ]

                for new_duration in new_durations:
                    duration_numerator = new_duration.numerator
                    duration_denominator = new_duration.denominator

                    if duration_numerator % 2 == 0 or duration_numerator == 1:
                        ratio = [3, 1]
                        if new_duration >= abjad.Duration((1, 4)):
                            multiplier = 4 / duration_denominator
                            new_ratio = []
                            for _ in ratio:
                                new_ = _ * multiplier
                                new_ratio.append(int(new_))
                            ratio = new_ratio
                        else:
                            raise Exception(
                                rf"{new_duration}: This ratio does not scale smaller than a total duration of 1/4"
                            )

                    if duration_numerator % 3 == 0:
                        ratio = [2, 1]
                        if new_duration >= abjad.Duration((3, 16)):
                            if duration_denominator != 16:
                                multiplier = 16 / duration_denominator
                                new_ratio = []
                                for _ in ratio:
                                    new_ = _ * multiplier
                                    new_ratio.append(int(new_))
                                ratio = new_ratio
                        else:
                            raise Exception(
                                rf"{new_duration}: This ratio does not scale smaller than a total duration of 3/16"
                            )

                    for _ in ratio:
                        talea_numerators.append(_)

        if stage > 1:
            new_numerators = []
            rest_numerator = rest_size * -1

            for _ in talea_numerators:
                new_numerators.append(_)
                new_numerators.append(rest_numerator)

            talea_numerators = new_numerators

        container = abjad.Container()
        talea = rmakers.talea(durations, talea_numerators, 16)
        container.extend(talea)
        rmakers.rewrite_dots(container)
        rmakers.trivialize(container)
        rmakers.rewrite_rest_filled(container)
        rmakers.rewrite_sustained(container)
        rmakers.extract_trivial(container)

        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_4

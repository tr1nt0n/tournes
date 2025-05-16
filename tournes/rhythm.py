import abjad
import baca
import evans
import trinton
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
                numerator_1 = new_numerator + 0.5
                numerator_1 = int(numerator_1)
                numerator_2 = new_numerator - 0.5
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
                        if duration_denominator != 16:
                            if duration_denominator < 16:
                                multiplier = 16 / duration_denominator
                            if duration_denominator > 16:
                                multiplier = duration_denominator / 16
                            new_ratio = []
                            for _ in ratio:
                                new_ = _ * multiplier
                                new_ratio.append(int(new_))
                            ratio = new_ratio
                        for _ in ratio:
                            talea_numerators.append(_)

                    if duration_numerator % 3 == 0:
                        ratio = [2, 1]
                        if duration_denominator != 16:
                            if duration_denominator < 16:
                                multiplier = 16 / duration_denominator
                            if duration_denominator > 16:
                                multiplier = duration_denominator / 16
                            new_ratio = []
                            for _ in ratio:
                                new_ = _ * multiplier
                                new_ratio.append(int(new_))
                            ratio = new_ratio
                        for _ in ratio:
                            talea_numerators.append(_)

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

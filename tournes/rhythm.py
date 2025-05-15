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

                if numerator % 2 == 0 and numerator % 3 != 0:
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

import abjad
import baca
import evans
import trinton
import itertools
from tournes import library

# sieve-based pitching


def return_interval_list_from_sieve(sieve=library.final_sieve):
    vectors = sieve.get_boolean_vector(total_length=len(sieve))

    interval_list_1 = []

    interval_counter = 1

    for vector in vectors:
        if vector == 1:
            interval_list_1.append(interval_counter)
            interval_counter = 1
        else:
            interval_counter += 1
            interval_list_1.append(interval_counter)

    interval_list = []

    interval_counter = 0

    for interval in interval_list_1:
        if interval_counter % 2 == 0:
            interval_list.append(interval)
        if interval_counter % 2 == 1:
            new_interval = interval * -1
            interval_list.append(new_interval)

        interval_counter += 1

    return interval_list


def return_sieve_transposition_pitch_list(
    first_pitch, interval_list=return_interval_list_from_sieve(), index=0
):
    intervals = trinton.rotated_sequence(interval_list, index % len(interval_list))

    intervals.insert(0, 0)

    pitch_list = []

    previous_pitch = first_pitch

    for interval in intervals:
        previous_pitch_class = previous_pitch.pitch_class

        previous_pitch_number = previous_pitch_class.number

        new_interval = previous_pitch_number + interval

        new_pitch = abjad.NamedPitch(abjad.NumberedPitchClass(new_interval).name)

        pitch_list.append(new_pitch)

        previous_pitch = new_pitch

    return pitch_list

import abjad
import baca
import evans
import trinton
import itertools
from tournes import library

# sieve-based pitching


def return_interval_list_from_sieve(sieve=library.final_sieve):
    if isinstance(sieve, list):
        vectors = []
        for subsieve in sieve:
            subvectors = subsieve.get_boolean_vector(total_length=len(subsieve))
            for vector in subvectors:
                vectors.append(vector)
    else:
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


def clarinet_pitching_1(index=0, selector=trinton.pleaves(), clarinet="bass"):
    def do_clarinet_pitching_1(selections):
        selections = selector(selections)

        sieve = library.final_sieve
        vectors = sieve.get_boolean_vector(total_length=len(sieve))
        vectors = trinton.rotated_sequence(vectors, index % len(vectors))

        pitch_list = []

        if clarinet == "bass":
            chord = [
                "gs",
                "b",
                "a",
                "ds'",
                "a",
                "b",
            ]
        else:
            chord = ["a", "f'", "b", "a", "ds'", "a", "b", "f'"]
        random_walk = trinton.random_walk(
            chord=chord,
            seed=6,
        )

        counter = 0

        for vector in vectors:
            if vector == 1:
                counter += 1
            random_walk = trinton.rotated_sequence(random_walk, counter)

            relevant_pitch = random_walk[0]

            pitch_list.append(relevant_pitch)

        handler = evans.PitchHandler(pitch_list=pitch_list)
        handler(selections)

    return do_clarinet_pitching_1


def string_pitching_1(
    fundamental, sieve=library.final_sieve, index=0, selector=trinton.pleaves()
):
    def return_string_pitching_1(selections):
        selections = selector(selections)

        pitch_list = [
            evans.ETPitch(
                fundamental=fundamental,
                repeating_ratio="2/1",
                number_of_divisions=24,
                scale_degree=_.number,
                with_quarter_tones=True,
            )
            for _ in return_sieve_transposition_pitch_list(
                first_pitch=abjad.NamedPitch(fundamental),
                interval_list=return_interval_list_from_sieve(
                    sieve=sieve,
                ),
                index=index,
            )
        ]

        handler = evans.PitchHandler(pitch_list)

        handler(selections)

    return return_string_pitching_1

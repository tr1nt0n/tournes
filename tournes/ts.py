import abjad
import baca
import evans
import trinton
from itertools import cycle

# Time Signature System 1

ts_system_1_roots = [
    (5, 4),
    (2, 8),
    (9, 8),
    (4, 12),
    (4, 4),
    (5, 12),
    (7, 8),
    (2, 4),
    (3, 4),
    (7, 12),
    (5, 8),
    (8, 12),
    (2, 4),
    (3, 4),
]

partitioned_system_1_roots = abjad.sequence.partition_by_counts(
    sequence=ts_system_1_roots,
    counts=[4, 3, 3, 4],
    overhang=True,
)

helianthated_system_1 = baca.sequence.helianthate(partitioned_system_1_roots, n=-1, m=1)

helianthated_system_1 = abjad.sequence.flatten(helianthated_system_1)


def return_system_1_ts(measure_amount, index=0):
    rotated_sequence = trinton.rotated_sequence(
        helianthated_system_1, index % len(helianthated_system_1)
    )

    return rotated_sequence[0:measure_amount]


# Time Signature System 2


def return_system_2_ts(measure_amount, index=0):
    rotated_sequence = trinton.rotated_sequence(
        [
            (5, 8),
            (3, 4),
            (3, 4),
            (5, 8),
            (4, 4),
            (5, 8),
            (4, 4),
            (5, 8),
            (3, 4),
            (4, 4),
            (3, 4),
            (5, 8),
            (4, 4),
            (5, 8),
            (4, 4),
            (5, 8),
            (3, 4),
            (3, 4),
        ],
        index % 18,
    )

    return rotated_sequence[0:measure_amount]


# Time Signature System 5

root_numerators = [
    # Roopak Taal
    2,
    2,
    3,
    # Jhap Taal
    2,
    3,
    2,
    3,
    # Deepchandi Taal
    3,
    4,
    3,
    4,
    # Ek Taal
    12,
]

partitioned_numerators = abjad.sequence.partition_by_counts(
    sequence=root_numerators,
    counts=[
        3,
        4,
        5,
    ],
    overhang=True,
)

helianthated_numerators = baca.sequence.helianthate(partitioned_numerators, n=-1, m=1)

taal_numerator_sequence = evans.Sequence(helianthated_numerators).flatten()

taal_ts_sequence = []

for numerator in taal_numerator_sequence:
    if numerator == 12:
        pair = (numerator, 8)
    else:
        pair = (numerator, 4)

    taal_ts_sequence.append(pair)

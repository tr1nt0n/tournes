import abjad
import baca
import evans
import trinton
from tournes import library
from tournes import pitch

# score

test_time_signatures = []

for grouping in library.sieve_groupings:
    grouping_1 = grouping[0]
    grouping_2 = grouping[-1]
    if isinstance(grouping_1, list):
        grouping_1 = abjad.sequence.flatten(grouping_1)
    if isinstance(grouping_2, list):
        grouping_2 = abjad.sequence.flatten(grouping_2)

    grouping_1_length = len(grouping_1)
    grouping_2_length = len(grouping_2)

    if grouping_1_length > grouping_2_length:
        numerator = grouping_1_length + 1
        test_time_signatures.append((numerator, 32))
    else:
        numerator = grouping_2_length + 1
        test_time_signatures.append((numerator, 32))


score = library.tournes_score(
    test_time_signatures,
)

for measure, sieve_grouping, first_pitch in zip(
    list(range(0, 10)),
    library.sieve_groupings,
    [
        "bf",
        "b",
        "bf",
        "c",
        "bf",
        "b",
        "a",
        "c",
        "a",
    ],
):
    measure_number = measure + 1

    for subgroup, voice_name in zip(
        sieve_grouping, ["flute voice", "bassclarinet voice"]
    ):
        if isinstance(subgroup, list):
            flattened_subgroup = abjad.sequence.flatten(subgroup)
            subgroup_length = len(flattened_subgroup) + 1
        else:
            subgroup_length = len(subgroup) + 1

        tuplet = []

        for _ in range(0, subgroup_length):
            tuplet.append(1)

        tuplet = tuple(tuplet)

        trinton.make_music(
            lambda _: trinton.select_target(_, (measure_number,)),
            evans.RhythmHandler(evans.tuplet([tuplet])),
            evans.PitchHandler(
                [
                    _.number
                    for _ in pitch.return_sieve_transposition_pitch_list(
                        first_pitch=abjad.NamedPitch(first_pitch),
                        interval_list=pitch.return_interval_list_from_sieve(
                            sieve=subgroup
                        ),
                        index=0,
                    )
                ]
            ),
            trinton.noteheads_only(),
            trinton.octavation(octave=1, selector=trinton.pleaves()),
            trinton.vertical_accidentals(
                selector=trinton.pleaves(), direction=abjad.UP
            ),
            trinton.invisible_tuplet_brackets(),
            voice=score[voice_name],
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure_number,)),
        trinton.attachment_command(
            attachments=[
                abjad.bundle(
                    abjad.Markup(
                        rf"""\markup \fontsize #2 {{
                            \override #'(font-name . "Bodoni72 Book Italic") {{
                                "Section {measure_number}:"
                            }}
                        }}"""
                    ),
                    r"- \tweak padding #10",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.TimeSignature.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# library.write_instrument_names(score=score)

# library.write_short_instrument_names(score=score)

# beautification


# trinton.remove_redundant_time_signatures(score=score)
# library.clean_time_signatures(score=score)

# render file

trinton.make_sc_file(
    score=score,
    tempo=((1, 32), 15),
    current_directory="/Users/trintonprater/scores/tournes/tournes/etc/harmonic_structure_sketches",
)

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/tournes/tournes/etc/harmonic_structure_sketches",
#     build_path="/Users/trintonprater/scores/tournes/tournes/etc/harmonic_structure_sketches",
#     segment_name="harmonic_rhythm_sketch",
#     includes=[
#         "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )

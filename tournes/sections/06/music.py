import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from itertools import cycle
from tournes import library
from tournes import pitch
from tournes import rhythm
from tournes import ts

# score

section_ts = ts.return_system_1_ts(measure_amount=9, index=-5)

section_ts.extend([(6, 4) for _ in range(0, 6)])

score = library.tournes_score(section_ts)

# flute music


# globals

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="eighth",
                tempo=84,
                padding=14.5,
                site="after",
                hspace=0.5,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
            trinton.return_metronome_markup(
                note_value="eighth",
                tempo=72,
                padding=0,
                metric_modulation=None,
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=18,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        tag=None,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Accel." } """,
            trinton.return_metronome_markup(
                note_value="eighth",
                tempo=84,
                padding=0,
                metric_modulation=None,
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        tag=None,
    ),
    voice=score["Global Context"],
)

# breaking

# for measure in [
#     3,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     2,
#     9,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     1,
#     3,
#     4,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+PARTS"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     1,
#     3,
#     4,
#     10,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     5,
#     8,
#     11,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [4, 5, 7, 9, 10, 12, 13, 14]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+PARTS"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     6,
#     8,
#     11,
#     15,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+PARTS"),
#         ),
#         voice=score["Global Context"],
#     )

# spacing

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 16 12 17 3 14 10)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/06",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

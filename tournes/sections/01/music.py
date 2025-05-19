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

section_ts = [(6, 4) for _ in range(0, 9)]

section_ts.extend(ts.return_system_1_ts(measure_amount=9, index=9))

score = library.tournes_score(section_ts)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 1, -100], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            5,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 64),
        boolean_vector=[1, 0],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="flute graces 1",
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=3)),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            2,
            2,
            3,
            2,
            3,
            2,
            3,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    voice=score["flute voice"],
)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=3)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=3, map_rotation=0)),
    pitch.clarinet_pitching_1(index=5),
    trinton.vertical_accidentals(selector=trinton.select_leaves_by_index([16, 23, 38])),
    library.clarinet_articulations_1(
        finger_number_index=0, selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-three-quarters-closed",
            "\woodwind-open",
            "\woodwind-closed",
            "\woodwind-half-closed",
            "\woodwind-closed",
            "\woodwind-open",
            "\woodwind-three-quarters-closed",
            "\woodwind-closed",
            "\woodwind-half-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                3,
                10,
                10,
                11,
                11,
                14,
                14,
                25,
                25,
                28,
                28,
                33,
                33,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[4, 0.2, 2, 1, 4, 3, 2, 1, 0.5, 0.6, 0.7, 0.5, 3, 0.2, 4, 0.2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            0.5,
            1,
            0.25,
            0.5,
            0.2,
            0.4,
            1,
            1,
            0.5,
            0.4,
            0.2,
            0.7,
        ],
        divisions=[24],
        counts=[40],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=11,
        forget=False,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Bass",
                tweaks=[r"- \tweak padding 14"],
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=2,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-12, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=3, map_rotation=1)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.45, seed=1, tuplet_index=0)),
    voice=score["bassclarinet voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([-2, 58, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([23, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.talea([71, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=0)),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 6, 6, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([-11, 1, 1, -11, -1, 1, -9, 1, -1000], 8)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.50, seed=5, tuplet_index=4)),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            5,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 64),
        boolean_vector=[
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            1,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="violin graces 1",
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            6,
            3,
            3,
            3,
            3,
        )
    ),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=3)),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((6, 5, 6, 4, 6, 7, 8)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1, -100], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            5,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 64),
        boolean_vector=[
            1,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="cello graces 1",
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3, font_size=-3)),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=3, map_rotation=5)),
    voice=score["cello voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=90,
                padding=11,
                metric_modulation=None,
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
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
            trinton.return_metronome_markup(
                note_value="eighth",
                tempo=60,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'4."),
                    right_rhythm=abjad.Note("c'8"),
                ),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=90,
                padding=17,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
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

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

# breaking

for measure in [4]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 3]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/01",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/tournes-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

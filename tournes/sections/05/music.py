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

section_ts = ts.return_system_5_ts(measure_amount=6, index=24)

section_ts.extend([(6, 4) for _ in range(0, 6)])

score = library.tournes_score(section_ts)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.55,
            seed=1,
            tuplet_index=4,
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.PitchHandler(pitch_list=["df"]),
    evans.PitchHandler(pitch_list=["11/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 7])
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 6", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="11°/sounding A-flat ( with cello )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            3,
            0.5,
            0.2,
            0.5,
            3,
            0.5,
            3,
            0.5,
            3,
            0.5,
            1,
            0.2,
            1,
            0.2,
            0.5,
            0.2,
            0.7,
            0.5,
            1.5,
            1,
            0.5,
            0.2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            2,
            2,
            3,
            3,
            2,
            3,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8.5,
        forget=False,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(pitched=True),
        peaks=[
            3,
            0.5,
            3,
            0.5,
            3,
            0.5,
            1,
            0.2,
            3,
            0.5,
            0.2,
            0.5,
            3,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            3,
            3,
            1,
            3,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8.5,
        forget=False,
    ),
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=1)),
    evans.PitchHandler(pitch_list=["e"]),
    evans.PitchHandler(pitch_list=["9/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 4, 8, 11])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 5.5",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="9°/sounding D ( with violin )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.2,
            1,
            1.5,
            1,
            0.5,
            1,
            2,
            0.2,
            1,
            0.5,
            1,
            1.5,
            1,
            0.2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
            4,
            3,
            2,
            1,
            3,
            1,
            4,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.5,
            1,
            3,
            0.2,
            3,
            0.5,
            3,
            0.5,
            1,
            3,
            0.2,
            3,
            0.5,
            3,
            1.5,
            1,
            0.2,
            1,
            1.5,
            1,
            1.5,
            1,
            0.2,
            1,
            1.5,
            1,
            1.5,
            1,
            0.2,
            1,
            1.5,
            1,
            1.5,
            1,
            0.2,
            1,
            1.5,
            1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            3,
            1,
            4,
            3,
            3,
            2,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        rhythm.rhythm_3(stage=1),
    ),
    evans.PitchHandler(pitch_list=["cs"]),
    evans.PitchHandler(pitch_list=["13/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.pleaves(
            exclude=[
                0,
            ]
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 6.5",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="13°/sounding B ( with violin )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
        direction=None,
        right_padding=10,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.5,
            3,
            1,
            0.2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            2,
            2,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=9.5,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

# accordion music

for voice_name, rest_size in zip(
    ["accordion 1 voice", "accordion 3 voice"],
    [
        [1, 2, 1, 3, 2],
        [2, 2, 1, 3, 1],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 3)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=rest_size)),
        trinton.rewrite_meter_command(boundary_depth=-1),
        evans.PitchHandler(
            [
                [
                    "a,,,",
                    "b,,,",
                    "c,,",
                    "d,,",
                ],
                [
                    "c,,",
                    "d,,",
                    "e,,",
                    "f,,",
                ],
                [
                    "e,,",
                    "f,,",
                    "g,,",
                    "a,,",
                ],
                [
                    "g,,",
                    "a,,",
                    "b,,",
                    "c,",
                ],
                [
                    "b,,",
                    "c,",
                    "d,",
                    "e,",
                ],
                ["d,", "e,", "f,", "g,"],
                [
                    "f,",
                    "g,",
                    "a,",
                    "b,",
                ],
                [
                    "a,",
                    "b,",
                    "c",
                    "d",
                ],
            ]
        ),
        trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.change_lines(
        lines=5,
        clef="bass",
        invisible_barlines=False,
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                7,
                8,
                11,
                12,
                16,
                17,
                20,
                22,
                23,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                5,
                5,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, 6], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([7, -1], pitched=True)
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                4,
                5,
                9,
                12,
                15,
                16,
                17,
                18,
                21,
            ]
        ),
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, 5], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([6, -1], pitched=True)
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 30, 65, 65, 100]),
    ),
    voice=score["accordion 1 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[3, 1, 2, 1])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["bqs"]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string=r"scratch, tasto",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 4, 8, 12, 13, 16, 17, 21]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.55,
            seed=1,
            tuplet_index=0,
        )
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.PitchHandler(pitch_list=["d"]),
    evans.PitchHandler(pitch_list=["10/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 3])
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 6", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="10°/sounding D ( with clarinet )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            1,
            0.2,
            1,
            1.5,
            1,
            1.5,
            1,
            0.2,
            0.5,
            1,
            3,
            0.2,
            3,
            0.5,
            3,
            0.5,
            1,
            3,
            0.2,
            3,
            0.5,
            3,
            1,
            1.5,
            1,
            1.5,
            1,
            0.2,
            1,
            1.5,
            1,
            1.5,
            1,
            0.2,
            1,
            1.5,
            1,
            1.5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            3,
            1,
            4,
            3,
            3,
            2,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8.5,
        forget=False,
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        rhythm.rhythm_3(stage=1),
    ),
    evans.PitchHandler(pitch_list=["b,"]),
    evans.PitchHandler(pitch_list=["14/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.pleaves(
            exclude=[
                0,
            ]
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 6", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="14°/sounding B ( with clarinet )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=10,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.5,
            3,
            1,
            0.2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            2,
            2,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=9,
        forget=False,
    ),
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.55,
            seed=2,
            tuplet_index=6,
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    evans.PitchHandler(pitch_list=["af,"]),
    evans.PitchHandler(pitch_list=["12/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 7])
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 4.5",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="12°/sounding A-flat ( with flute )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.change_lines(
        lines=5,
        clef="treble",
        invisible_barlines=False,
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            3,
            1,
            0.2,
            1,
            0.2,
            0.5,
            0.2,
            0.7,
            0.5,
            1.5,
            1,
            0.5,
            0.2,
            0.5,
            0.2,
            0.5,
            3,
            0.5,
            3,
            0.5,
            3,
            0.5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            3,
            3,
            1,
            3,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=6.5,
        forget=False,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(pitched=True),
        peaks=[
            3,
            0.5,
            3,
            3,
            0.5,
            0.2,
            0.5,
            3,
            0.5,
            3,
            0.5,
            1,
            0.2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            2,
            3,
            2,
            2,
            3,
            3,
            2,
            3,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=6.5,
        forget=False,
    ),
    voice=score["cello voice"],
)

# globals

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=54,
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
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=162,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=17,
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
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=72,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("9:8", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=17,
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
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=54,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=12,
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
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted half",
                tempo=54,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=12,
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4, 5)),
#     trinton.spanner_command(
#         strings=[
#             r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
#             trinton.return_metronome_markup(
#                 note_value="quarter",
#                 tempo=72,
#                 padding=0,
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Note("c'4."),
#                     right_rhythm=abjad.Note("c'4"),
#                 ),
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=18,
#         tweaks=None,
#         right_padding=-7,
#         direction=None,
#         full_string=True,
#         command="",
#         tag=None,
#     ),
#     voice=score["Global Context"],
# )

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
for measure in [
    2,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [
    1,
    3,
    4,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+PARTS"),
        ),
        voice=score["Global Context"],
    )

for measure in [
    1,
    3,
    4,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [
    5,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 16 12 17 3 14 10)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3.5 16 13.5 17.5 2 22 18)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/05",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

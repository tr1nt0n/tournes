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

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[3, 2, 4, 1])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                6,
                8,
                11,
                12,
                13,
                15,
                20,
                23,
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.StemTremolo(32),
                r"- \tweak stencil #ly:text-interface::print",
                r"""- \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }""",
            ),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"( M )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[r"- \tweak font-size 2"],
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    evans.PitchHandler(
        [
            "c'''",
            "e'''",
            "b''",
            "e'''",
            "c'''",
            "d'''",
        ],
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 10, 10, -1], pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=["whistle", "overblow", "whistle."],
        selector=trinton.select_leaves_by_index(
            [0, 10, 10, -1],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.tuplet([(1, 1)])),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"( M )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[r"- \tweak font-size 2"],
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.55,
            seed=3,
            tuplet_index=6,
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    evans.PitchHandler(pitch_list=["df"]),
    evans.PitchHandler(pitch_list=["11/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 10])
    ),
    # trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0, 10], pitched=True, grace=False)),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 3.5",
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
        string="11°/sounding A-flat ( with cello )",
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
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            4,
            3,
            5,
            3,
            4,
            3,
            5,
            3,
            4,
            2,
            3,
            1,
            3,
            1,
            2,
            1,
            2,
            0.5,
            1,
            0.5,
            1,
            0.7,
            1,
            0.3,
            1,
            0.2,
            1.5,
            0.1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            1,
            1,
            1,
            1,
            2,
            2,
            3,
            3,
            2,
            3,
            3,
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
        padding=8.5,
        forget=False,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 15)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[4, 3, 1, 2])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 15)),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                11,
                12,
                17,
                18,
                22,
                23,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 11], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.StemTremolo(32),
                r"- \tweak stencil #ly:text-interface::print",
                r"""- \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }""",
            ),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"( M )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[r"- \tweak font-size 2"],
    ),
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Bass, Traffic Cone IN",
                # tweaks=[r"- \tweak padding 14"],
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
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.rewrite_rest_filled,
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.trivialize,
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.extract_trivial,
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.BreathMark()],
        selector=trinton.select_leaves_in_tuplet(pairs=[(0, -1)], cycle_leaves=True),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            6,
            2,
            2,
            3,
            2,
        )
    ),
)

for measures, stage in zip([(7,), (8, 9)], [2, 1]):
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        evans.RhythmHandler(rhythm.rhythm_2(stage=stage)),
        voice=score["bassclarinet voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.PitchHandler(
        [
            "c'''",
            "e'''",
            "b''",
            "e'''",
            "c'''",
            "d'''",
        ],
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"3/4 overblow",
        selector=trinton.select_leaves_by_index([0, 60], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=0,
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
    trinton.spanner_command(
        strings=["", "1/3 air", "norm.", "air"],
        selector=trinton.select_leaves_by_index(
            [60, 85, 85, 100, 100, -1],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"+ throat-scream",
        selector=trinton.select_leaves_by_index([34, 60], pitched=True),
        padding=10,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("|>o"), abjad.Articulation(">")],
        selector=trinton.select_leaves_in_tuplet(pairs=[(0, 0)], cycle_leaves=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_in_tuplet(pairs=[(0, -1)], cycle_leaves=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_in_tuplet(pairs=[(0, 0)], cycle_leaves=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([80, 89, 89]),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([-3, 2, 1], 4)),
    evans.PitchHandler(["aqs"]),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Traffic Cone OUT",
                # tweaks=[r"- \tweak padding 14"],
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=2,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=["1/5 air", "1/2 air"],
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, grace=True, pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.49,
            seed=12,
            tuplet_index=6,
        )
    ),
    evans.PitchHandler(pitch_list=["gs,"]),
    evans.PitchHandler(pitch_list=["10/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 6])
    ),
    # trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0, 6], pitched=True, grace=False)),
    trinton.hooked_spanner_command(
        string="10°/sounding F-sharp ( with violin )",
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
    lambda _: trinton.select_target(_, (11,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            4,
            3,
            5,
            3,
            4,
            3,
            5,
            3,
            4,
            2,
            3,
            1,
            3,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
            2,
            3,
            1,
            2,
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
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            3,
            4,
            2,
            1,
            0.5,
            1,
            0.5,
            1,
            0.7,
            1,
            0.3,
            1,
            0.2,
            1.5,
            0.1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
            2,
            2,
            1,
            1,
            1,
            1,
            1,
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
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.PitchHandler(["gqs"]),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True, grace=False)),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([9, 10, 11, 13, 15, 17], grace=False),
    ),
    trinton.spanner_command(
        strings=["1/5 air", "4/5 air"],
        selector=trinton.select_logical_ties_by_index(
            [0, 8, 8, -1], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, grace=True, pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[2, 4, 1, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            [
                "c,,",
                "d,,",
                "e,,",
                "f,,",
            ],
            [
                "a,,,",
                "b,,,",
                "c,,",
                "d,,",
            ],
            [
                "f,,,",
                "g,,,",
                "a,,,",
                "b,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            ["a", "b", "c'", "d'"],
            ["a", "b", "c'", "d'"],
            ["a", "b", "c'", "d'"],
        ]
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                7,
                10,
                11,
                12,
                13,
                14,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        octave=-2,
        selector=trinton.select_leaves_by_index([0, 5], pitched=True, grace=False),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[4, 1, 3, 1, 1])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            [
                "c,,",
                "d,,",
                "e,,",
                "f,,",
            ],
            [
                "a,,,",
                "b,,,",
                "c,,",
                "d,,",
            ],
            [
                "f,,,",
                "g,,,",
                "a,,,",
                "b,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            ["a", "b", "c'", "d'"],
            ["a", "b", "c'", "d'"],
            ["a", "b", "c'", "d'"],
            ["a", "b", "c'", "d'"],
        ]
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                4,
                6,
                9,
                10,
                11,
                12,
                13,
                15,
                18,
                19,
                20,
                22,
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.ottava_command(
        octave=-2,
        selector=trinton.select_leaves_by_index([0, 5], pitched=True, grace=False),
    ),
    voice=score["accordion 3 voice"],
)

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (8,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (9,)),
        evans.RhythmHandler(evans.tuplet([(1, 1)])),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[1, 3, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 13)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 15)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[3, 3, 1])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 15)),
    evans.PitchHandler(
        [
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "f,,,",
                "g,,,",
                "a,,,",
                "b,,,",
            ],
            [
                "a,,,",
                "b,,,",
                "c,,",
                "d,,",
            ],
            ["c,,", "d,,", "e,,", "f,,"],
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
            ["b,,", "c,", "d,", "e,"],
            ["d,", "e,", "f,", "g,"],
            ["f,", "g,", "a,", "b,"],
            ["a,", "b,", "c", "d"],
            [
                "c",
                "d",
                "e",
                "f",
            ],
            ["e", "f", "g", "a"],
            [
                "g",
                "a",
                "b",
                "c'",
            ],
            ["b", "c'", "d'", "e'"],
            ["d'", "e'", "f'", "g'"],
            ["f'", "g'", "a'", "b'"],
            ["a'", "b'", "c''", "d''"],
            ["c''", "d''", "e''", "f''"],
        ]
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True, grace=False)),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                9,
                10,
                11,
                12,
                14,
                15,
                16,
                17,
                20,
                21,
                22,
                23,
                27,
                28,
                30,
                31,
                32,
                33,
                37,
                38,
                39,
                41,
                43,
                44,
                45,
                46,
                50,
                51,
                52,
                53,
                56,
                57,
                58,
                59,
                61,
                62,
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            ),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 2))], preselector=trinton.pleaves(grace=False)
        ),
        direction=abjad.UP,
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup {
    #                 \hspace #-2 {
    #                     ( \note {2} #2 \override #'(font-size . 5) {.} )
    #                 }
    #             }"""
    #         ),
    #     ],
    #     selector=trinton.durational_selector(durations=[abjad.Duration((3, 4))], preselector=trinton.pleaves(grace=False)),
    #     direction=abjad.UP,
    # ),
    trinton.ottava_command(
        octave=-2,
        selector=trinton.select_leaves_by_index([0, 20], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_logical_ties_by_index(
            [22], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 14, 17, 23], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 15)),
    evans.PitchHandler(
        [
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "d,,,",
                "e,,,",
                "f,,,",
                "g,,,",
            ],
            [
                "f,,,",
                "g,,,",
                "a,,,",
                "b,,,",
            ],
            [
                "a,,,",
                "b,,,",
                "c,,",
                "d,,",
            ],
            ["c,,", "d,,", "e,,", "f,,"],
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
            ["b,,", "c,", "d,", "e,"],
            ["d,", "e,", "f,", "g,"],
            ["f,", "g,", "a,", "b,"],
            ["a,", "b,", "c", "d"],
            [
                "c",
                "d",
                "e",
                "f",
            ],
            ["e", "f", "g", "a"],
            [
                "g",
                "a",
                "b",
                "c'",
            ],
            ["b", "c'", "d'", "e'"],
            ["d'", "e'", "f'", "g'"],
            ["f'", "g'", "a'", "b'"],
            ["a'", "b'", "c''", "d''"],
            ["c''", "d''", "e''", "f''"],
        ]
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True, grace=False)),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [25, 26, 27, 28, 29, 30, 32, 34, 35, 36, 37, 38, 40, 41, 42, 43],
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            ),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 2))], preselector=trinton.pleaves(grace=False)
        ),
        direction=abjad.UP,
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup {
    #                 \hspace #-2 {
    #                     ( \note {2} #2 \override #'(font-size . 5) {.} )
    #                 }
    #             }"""
    #         ),
    #     ],
    #     selector=trinton.durational_selector(durations=[abjad.Duration((3, 4))], preselector=trinton.pleaves(grace=False)),
    #     direction=abjad.UP,
    # ),
    trinton.ottava_command(
        octave=-2,
        selector=trinton.select_leaves_by_index(
            [0, 14, 27, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("treble"), abjad.Clef("bass")],
        selector=trinton.select_logical_ties_by_index(
            [22, 26], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["accordion 3 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    evans.PitchHandler(
        [
            "c'''",
            "e'''",
            "b''",
            "e'''",
            "c'''",
            "d'''",
        ],
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 68, 68, 96, 96, -1], pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=["flaut. moltiss.", "norm.", "scratch + pont.", "flaut. moltiss."],
        selector=trinton.select_leaves_by_index(
            [0, 68, 68, 96, 96, -1],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.tuplet([(1, 1)])),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
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
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True, grace=False),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.49,
            seed=7,
            tuplet_index=5,
        )
    ),
    evans.PitchHandler(pitch_list=["fs,,"]),
    evans.PitchHandler(pitch_list=["7/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 10])
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 10], pitched=True, grace=False)
    ),
    trinton.hooked_spanner_command(
        string="7°/sounding F-sharp ( with clarinet )",
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            4,
            3,
            5,
            3,
            4,
            3,
            5,
            3,
            4,
            2,
            3,
            1,
            3,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            2,
            2,
            3,
            3,
            2,
            3,
            1,
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            3,
            4,
            2,
            1,
            0.5,
            1,
            0.5,
            1,
            0.7,
            1,
            0.3,
            1,
            0.2,
            1.5,
            0.1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            1,
            3,
            2,
            2,
            1,
            1,
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
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
        selector=trinton.select_leaves_by_index([9, 10, 11, 12, 13, 14], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, -2], first=True, grace=False, pitched=True
        ),
    ),
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[1, 2, 4, 1, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=["eqs,"]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False), invisible=True
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                3,
                6,
                10,
                13,
                15,
                16,
                20,
                21,
            ],
            grace=False,
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(pitched=True), zero_padding=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 4, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(1, 1, 1, 1, 1),
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, grace=False, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=4.5,
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
    voice=score["cello voice"],
)

for measure, stage in zip([4, 5], [1, 2]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rhythm.rhythm_2(stage=stage)),
        voice=score["cello voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    trinton.attachment_command(
        attachments=[abjad.BreathMark()],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, -1)]),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((6, 1, 1, 1, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("|>o"), abjad.Articulation(">")],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, 0)]),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, -1)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, 0)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.select_leaves_by_index(
            [46, 57, 57, 62, 62, 67, 67], pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut.",
        selector=trinton.select_leaves_by_index([0, 33], pitched=True),
        padding=8.5,
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
    trinton.spanner_command(
        strings=["norm.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [
                34,
                41,
            ],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["1/2 scr.", "flaut.", "3/4 scr.", "flaut.", "norm."],
        selector=trinton.select_leaves_by_index(
            [42, 48, 48, 57, 57, 62, 62, 67, 67, 69],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["3/4 scr.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [70, 76],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-1,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["scr.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [78, 84],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-1,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["scr.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [
                86,
                92,
            ],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-1,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["scr.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [94, 100],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-1,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.tuplet([(1, 1)])),
    evans.PitchHandler(pitch_list=["eqs,"]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False), invisible=True
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            evans.make_fancy_gliss(1, 1, 1, 1, 1),
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, grace=False, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=0,
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=2,
            p=0.55,
            seed=3,
            tuplet_index=0,
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    evans.PitchHandler(pitch_list=["af,"]),
    evans.PitchHandler(pitch_list=["13/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 10])
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 10], pitched=True, grace=False)
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
        string="13°/sounding A-flat ( with flute )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
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
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            4,
            3,
            5,
            3,
            4,
            3,
            5,
            3,
            4,
            2,
            3,
            1,
            3,
            1,
            2,
            1,
            2,
            0.5,
            1,
            0.5,
            1,
            0.7,
            1,
            0.3,
            1,
            0.2,
            1.5,
            0.1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
            3,
            2,
            3,
            3,
            2,
            2,
            1,
            1,
            1,
            1,
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
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 15)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[2, 1, 4])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 15)),
    evans.PitchHandler(pitch_list=["eqs,"]),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False), invisible=True
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [9, 10, 11, 13, 19, 20, 21, 22, 24, 26],
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index(
            list(range(18, 28)), pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(1, 1, 1, 1, 1, 1),
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, grace=False, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4.5,
        direction=None,
        right_padding=0,
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 11], first=True, pitched=True, grace=False
        ),
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
                note_value="eighth",
                tempo=84,
                padding=14.5,
                site="after",
                hspace=1,
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
#     11,
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

for measure in [
    1,
    5,
    9,
    11,
    15,
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
    10,
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

for measure in [2, 4, 7, 8, 10, 12, 14]:
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
    3,
    11,
    15,
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
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 15 10 16.5 4 16 15)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1.5 14 8 10 2 14 22)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (5 23 20.5 17.5 9.5 23 24)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (12,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-1 17.5 12.5 2 18 22 20)))",
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

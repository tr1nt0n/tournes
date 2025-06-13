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
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, 1, 2])),
    trinton.call_rmaker(
        rmaker=rmakers.rewrite_rest_filled,
        selector=trinton.select_tuplets_by_index([0, 1, 2]),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.trivialize, selector=trinton.select_tuplets_by_index([0, 1, 2])
    ),
    trinton.call_rmaker(
        rmaker=rmakers.extract_trivial,
        selector=trinton.select_tuplets_by_index([0, 1, 2]),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.BreathMark()],
        selector=trinton.patterned_tie_index_selector(
            [7], 8, last=True, pitched=True, grace=False
        ),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1,)),
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
        selector=trinton.select_leaves_by_index([0, 68], pitched=True),
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
        strings=["", "1/3 air"],
        selector=trinton.select_leaves_by_index(
            [68, -1],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-3,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                7,
                8,
                8,
                15,
                16,
                16,
                23,
                24,
                24,
                31,
                32,
                32,
                39,
                40,
                40,
                47,
                48,
                48,
                55,
                56,
                56,
                62,
                63,
                63,
                67,
                68,
                68,
                -1,
            ],
            pitched=True,
        ),
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

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[1, 2, 4, 1, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=["eqs,"]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
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
        ),
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
        attachments=[abjad.Articulation("espressivo"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
        selector=trinton.patterned_tie_index_selector(
            [7], 8, last=True, pitched=True, grace=False
        ),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                21,
                22,
                22,
                33,
                34,
                34,
                41,
                42,
                42,
                49,
                50,
                50,
                57,
                58,
                58,
                65,
                66,
                66,
                73,
                74,
                74,
                81,
                82,
                82,
                89,
                90,
                90,
                97,
                98,
                98,
                105,
                106,
                106,
                113,
                114,
                114,
                -1,
            ],
            pitched=True,
            grace=False,
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
        strings=["1/2 scr.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [
                42,
                49,
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
        strings=["3/4 scr.", "flaut."],
        selector=trinton.select_leaves_by_index(
            [50, 57],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [
                58,
                65,
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [66, 73],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [74, 81],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [82, 89],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [90, 97],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [98, 105],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [106, 113],
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
        strings=["scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [114, -1],
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
    1,
    5,
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
for measure in [2, 4]:
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

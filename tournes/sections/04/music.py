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

section_ts = ts.return_system_5_ts(measure_amount=7, index=14)

section_ts.extend(ts.return_system_2_ts(measure_amount=5, index=6))

section_ts.extend([(1, 4), (2, 4), (1, 4)])

score = library.tournes_score(section_ts)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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
    trinton.spanner_command(
        strings=["whistle", "norm.", "whistle"],
        selector=trinton.select_leaves_by_index([0, 13, 13, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pppp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 13, 13, -1],
            pitched=True,
        ),
    ),
    voice=score["flute voice"],
)

for voice_name, rest_size in zip(
    ["flute voice", "accordion 3 voice", "violin voice", "cello voice"], [3, 2, 1, 4]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=rest_size)),
        trinton.rewrite_meter_command(boundary_depth=-1),
        voice=score[voice_name],
    )

for voice_name in [
    "flute voice",
    "accordion 1 voice",
    "accordion 3 voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (3,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 6], pitched=True),
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
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
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
    trinton.spanner_command(
        strings=[
            "whistle",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([0, 26, 26, 35], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        strings=[
            "whistle",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([36, 50, 50, 55], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        strings=[
            "whistle",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([56, 67, 67, 71], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        strings=[
            "whistle",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([72, 81, 81, 84], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        strings=[
            "whistle",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([86, 92, 92, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        attachments=cycle([abjad.StartHairpin("o<"), abjad.Dynamic('"ffff"')]),
        selector=trinton.select_leaves_by_index(
            [0, 26, 36, 50, 56, 67, 72, 81, 86, 92], pitched=True
        ),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Piccolo",
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
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(evans.talea([3, 3, 2], 16)),
    evans.PitchHandler(["ds'", "b'", "cs'"]),
    trinton.change_notehead_command(
        notehead="la", selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.hooked_spanner_command(
        string=r"air",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3.5,
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
    trinton.attachment_command(
        attachments=[abjad.Articulation(r"tremolo-articulation")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Alto",
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
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Traffic Cone IN",
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
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=3)),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[3, 4],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 128),
        boolean_vector=[
            0,
            0,
            0,
            1,
            0,
            0,
            1,
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
            0,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            0,
            1,
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
            0,
            1,
            0,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="feather beam clarinet graces",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    pitch.clarinet_pitching_1(index=0, selector=trinton.pleaves(grace=False)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "a",
            "gs",
            "d'",
            "ds'",
            "fs'",
            "e'",
            "c'",
            "b",
            "as'",
            "gs'",
            "b",
            "d'",
            "ef'",
            "af'",
            "a",
            "e'",
            "bf'",
            "b",
            "gf'",
            "f'",
            "e''",
            "a",
            "f'",
            "b'",
            "g",
            "e'",
            "a'",
            "ds''",
            "a",
            "ef'",
            "d''",
            "b",
            "f",
            "e'",
            "fs'",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [1, 2, 4, 8, 9, 11, 12, 13, 15, 16, 18, 23, 27, 29, 30, 33, 34],
            pitched=True,
            grace=True,
        )
    ),
    library.clarinet_articulations_1(
        finger_number_index=0,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(grace=False)),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [
                25,
                55,
                58,
                63,
                65,
                70,
                89,
                95,
            ],
            pitched=True,
            grace=False,
        )
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.StartSlur(),
    #         abjad.StopSlur()
    #     ],
    #     selector=trinton.select_leaves_by_index([])
    # ),
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
            "\woodwind-closed",
            "\woodwind-three-quarters-closed",
            "\woodwind-open",
            "\woodwind-closed",
            "\woodwind-half-closed",
            "\woodwind-closed",
            "\woodwind-open",
            "\woodwind-three-quarters-closed",
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
                38,
                38,
                42,
                42,
                46,
                46,
                49,
                49,
                52,
                52,
                65,
                65,
                77,
                77,
                81,
                81,
                -1,
            ],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"+ throat-scream",
        selector=trinton.select_leaves_by_index([-40, -1], pitched=True, grace=False),
        padding=8,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    library.clean_rhythm_1_bursts(),
    voice=score["bassclarinet voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.2,
            1,
            1.5,
            5,
            3,
            2,
            3,
            2,
            1,
            2,
            1,
            3,
            1,
            2,
            3,
            4,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            1,
            2,
            5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.5,
            0.5,
            0.5,
            1,
            1,
            1,
            2,
            1,
            1.5,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            2,
            5,
            5,
            3,
            1,
            2,
            3,
            2,
            3,
            2,
            1,
            5,
            0.5,
            2,
            1,
            3,
            4,
            5,
            0.5,
            1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            3,
            3,
            1,
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
        padding=9.5,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 11)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            3,
            4,
            5,
            0.5,
            3,
            2,
            1,
            5,
            0.5,
            5,
            2,
            1,
            5,
            3,
            4,
            2,
            4,
            2,
            5,
            2,
            3,
            5,
            1,
            5,
            0.5,
            5,
            2,
            4,
            5,
            3,
            1,
            4,
            1,
            5,
            3,
            4,
            3,
            4,
            5,
            0.5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.5,
            0.5,
            0.5,
            1,
            0.5,
            0.5,
            0.5,
            3,
            6,
            3,
            6,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            3,
            2,
            1,
            5,
            0.5,
            5,
            2,
            1,
            5,
            3,
            4,
            2,
            4,
            2,
            5,
            2,
            3,
            5,
            1,
            5,
            0.5,
            5,
            0.5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            0.5,
            0.5,
            0.5,
            3,
            6,
            0.5,
            0.5,
            0.5,
            6,
            3,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
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
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="B-flat Soprano",
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

# accordion music

for voice_name in [
    "accordion 1 voice",
    "accordion 3 voice",
    "violin voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
        voice=score[voice_name],
    )

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["accordion 1 voice"], 0))

for measure in [1, 3]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.PitchHandler(
            [
                [
                    "a,,,",
                    "b,,,",
                    "c,,",
                    "d,,",
                ]
            ]
        ),
        trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
        trinton.ottava_command(
            octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score["accordion 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(
        [
            [
                "a,,,",
                "b,,,",
                "c,,",
                "d,,",
            ]
        ]
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 3, 3, 27], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -2], 32, extra_counts=[4])
        ),
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.detach_command(
        detachments=[abjad.Articulation, abjad.Ottava],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.call_rmaker(
        rmaker=abjad.beam, selector=trinton.select_tuplets_by_index([0])
    ),
    trinton.call_rmaker(
        rmaker=rmakers.duration_bracket, selector=trinton.select_tuplets_by_index([0])
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index(list(range(0, 10)))
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.LilyPondLiteral(
                [
                    r"\set fontSize = #-3",
                    r"\my-hack-slash",
                ],
                site="before",
            ),
            abjad.StopSlur(),
            abjad.LilyPondLiteral(
                [
                    r"\set fontSize = #-1",
                ],
                site="absolute_after",
            ),
            abjad.Ottava(n=-2),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 9, 10, 11]),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
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
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, seed=10, p=0.45, tuplet_index=17)),
    evans.PitchHandler(
        [
            ["af", "ef''"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.2,
            1,
            0.5,
            1,
            0.2,
            3,
            0.5,
            1,
            2,
            1,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            0.2,
            1,
            0.5,
            1,
            0.2,
            3,
            0.5,
            1,
            2,
            1,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            0.2,
            1,
            0.5,
            1,
            0.2,
            3,
            0.5,
            1,
            2,
            1,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            0.2,
            1,
            0.5,
            1,
            0.2,
            3,
            0.5,
            1,
            2,
            1,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            1,
            0.5,
            0.5,
            0.5,
            2,
            1,
            1.5,
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
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.5,
            2,
            1,
            2,
            0.5,
            1,
            0.5,
            2,
            1,
            2,
            0.5,
            1,
            5,
            0.5,
            5,
            0.5,
            5,
            0.5,
            2,
            1,
            2,
            0.5,
            1,
            0.5,
            2,
            1,
            2,
            0.5,
            1,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.5,
            0.5,
            0.5,
            1,
            2,
            1.5,
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
        padding=9.5,
        forget=False,
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
        tag=None,
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.hooked_spanner_command(
        string=r"bellows",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
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
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
            abjad.Articulation("tremolo-articulation"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
    ),
    voice=score["accordion 1 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 3, 4], pitched=True, grace=False
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
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
    trinton.spanner_command(
        strings=[
            "flaut. moltiss. + tasto",
            "2/3 scratch + pont. moltiss.",
        ],
        selector=trinton.select_leaves_by_index([0, 33, 33, -1], pitched=True),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 33],
            pitched=True,
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=13)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    pitch.string_pitching_1(
        fundamental="af", sieve=library.sieve_5b, index=0, selector=trinton.pleaves()
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.patterned_leaf_index_selector(
            [0], 2, pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([10, 12, 15], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-down",
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([0, 6, 6, 9, 9, 11], pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=4,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-up",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([12, 16], pitched=True),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=4,
        command="One",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"1/4 spz.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
        direction=None,
        right_padding=2,
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
    library.string_finger_pressures_1(
        index=0, seed=6, p=0.49, selector=trinton.pleaves()
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0, 4, 10, 12, -1], pitched=True),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[1, 2, 1, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
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
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 6, 10, 11, 12, 13, 17, 19]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 6, 15], pitched=True, grace=False),
    ),
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(["eqs,"]),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        invisible=True,
        pitch_matching=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
            ),
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 3, 4, 8], pitched=True, grace=False
        ),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.rhythm_1(stage=3),
    ),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[3, 4],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 43),
        boolean_vector=[0, 0, 0, 0, 0, 1, 0, 0, 1, 0],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="feather beam cello graces",
    ),
    pitch.string_pitching_1(
        fundamental="bf",
        sieve=library.sieve_5a,
        index=0,
        selector=trinton.pleaves(grace=False),
    ),
    trinton.octavation(octave=-1, selector=trinton.pleaves(grace=False)),
    library.string_finger_pressures_1(
        index=1, seed=3, p=0.49, selector=trinton.pleaves(grace=False)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "f,",
            "f'",
            "bf,",
            "gqs,",
            "gqs'",
            "a,",
            "a'",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    library.clean_rhythm_1_bursts(),
    trinton.vertical_accidentals(
        selector=trinton.pleaves(grace=True, exclude=[0, 1, 3])
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.pleaves(
            grace=True,
            exclude=[
                0,
            ],
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(grace=True),
        zero_padding=True,
        tweaks=[r"- \tweak Glissando.thickness #2"],
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([6], pitched=True, grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"ff"'),
            abjad.Dynamic('"mp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                4,
                5,
                6,
                7,
                8,
                9,
            ],
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[r"\bow-tip-half-down", r"\normale-bow-rotation"],
        selector=trinton.select_leaves_by_index([0, 4], grace=False),
        style="solid-line-with-arrow",
        padding=3.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[r"1/4 spz.", r"spz."],
        selector=trinton.select_leaves_by_index([0, 4], grace=False),
        style="solid-line-with-arrow",
        padding=6,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"\bow-tip-half-up",
        selector=trinton.select_leaves_by_index([6, 7], pitched=True, grace=False),
        padding=6,
        direction=None,
        right_padding=3.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 spz.",
        selector=trinton.select_leaves_by_index([6, 7], pitched=True, grace=False),
        padding=8.5,
        direction=None,
        right_padding=3.5,
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
        attachments=[
            abjad.bundle(
                abjad.Markup(r'\markup { "1/2 spz." }'),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
                r"""- \tweak font-size 0""",
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.talea([1, 30, 1, 1, 8, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            "aqf'",
            "c''",
            "a'",
            "aqf'",
            "bf'",
            "af'",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3], pitched=True, first=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.bundle(
                    abjad.Markup(r"""\markup { \hspace #-1 "pizz." }"""),
                    r"""- \tweak font-name "Bodoni72 Book Italic" """,
                    r"""- \tweak font-size 0""",
                ),
                abjad.bundle(
                    abjad.Markup(r"""\markup { "arco + flaut." }"""),
                    r"""- \tweak font-name "Bodoni72 Book Italic" """,
                    r"""- \tweak font-size 0""",
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 3, 4], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4, 5], pitched=True, grace=False
        ),
        zero_padding=True,
        slur=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 \override #'(font-size . 5) {.} )
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.Dynamic("ff"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 3, 4, 4, 5], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
        tag=None,
    ),
    trinton.change_notehead_command(notehead="la", selector=trinton.pleaves()),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.hooked_spanner_command(
        string=r"tailpiece",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
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
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["cello voice"],
)

# globals

# fermate

trinton.fermata_measures(
    score=score,
    measures=[13, 15],
    fermata="extremely-long-fermata",
    voice_names=library.all_voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-5,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

trinton.fermata_measures(
    score=score,
    measures=[14],
    fermata="middle-fermata",
    voice_names=library.all_voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=False,
    last_measure=False,
    padding=-5,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

for measure in [13, 15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.bundle(
                    abjad.Markup(
                        r"""\markup \override #'(font-name . "Bodoni72 Book") { \override #'(font-size . 4) { "30\"" } }"""
                    ),
                    r"- \tweak padding 5.5",
                )
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book") { \override #'(font-size . 4) { "15\"" } }"""
                ),
                r"- \tweak padding 5.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                # metric_modulation=abjad.MetricModulation(
                #     left_rhythm=abjad.Tuplet("3:2", "c'2"),
                #     right_rhythm=abjad.Note("c'4"),
                # ),
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.return_metronome_markup(
#                 note_value="dotted quarter",
#                 tempo=40,
#                 padding=15,
#                 site="after",
#                 hspace=2,
#                 string_only=False,
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=72,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'4."),
                    right_rhythm=abjad.Note("c'4"),
                ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=18,
        tweaks=None,
        right_padding=-7,
        direction=None,
        full_string=True,
        command="",
        tag=None,
    ),
    voice=score["Global Context"],
)

# breaking

for measure in [
    3,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [
    1,
    6,
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
    2,
    4,
    5,
    7,
    9,
    10,
    12,
    13,
    14,
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
#
for measure in [
    3,
    6,
    8,
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
for measure in [4, 5, 7, 9, 10, 12, 13, 14]:
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
    6,
    8,
    11,
    15,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+PARTS"),
        ),
        voice=score["Global Context"],
    )

# spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 20 12 10 2 16 24)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0.5 25.5 16 13 6 12 17)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-3 26.5 21 15 8 11.5 18)))",
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
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/04",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

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

section_ts = ts.return_system_3_ts(measure_amount=6, index=13)

section_ts.extend(ts.return_system_2_ts(measure_amount=6, index=1))

score = library.tournes_score(section_ts)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
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
    trinton.hooked_spanner_command(
        string=r"overblow + throat-scream",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=1)),
    evans.PitchHandler(pitch_list=["f''"]),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="4°/sounding C ( with cello )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.2, 4, 0.2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[1, 1, 0.2],
        divisions=[3],
        counts=[8],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=4,
        forget=False,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
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
    trinton.hooked_spanner_command(
        string=r"whistle",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                -8,
                1,
                -8,
                1,
                -7,
                1,
                -7,
                1,
                -7,
                1,
                -7,
                1,
                -7,
            ],
            16,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        ["df'", "c'", "dqf'", "ef'"],
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                8,
                10,
                15,
                16,
            ],
            grace=False,
        ),
    ),
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
        leaf_duration=(1, 128),
        boolean_vector=[
            0,
            1,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="flute graces 1",
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["df'", "c'", "dqf'", "ef'"],
        selector=trinton.pleaves(grace=True, exclude=[0, 5]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["c'", "ef'"],
        selector=trinton.select_leaves_by_index([0, 5], pitched=True, grace=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.pleaves(grace=True, exclude=[0, 2, 5, 7])
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 5], pitched=True, grace=True)
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([0, 5], pitched=True, grace=True)
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Articulation("staccatissimo"), abjad.Articulation(">")]
        ),
        selector=trinton.pleaves(grace=False),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }"""
                ),
            ]
        ),
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string="""\markup { "loud key clicks + pitch" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.Dynamic("f")]),
        selector=trinton.patterned_leaf_index_selector(
            [
                0,
            ],
            5,
            pitched=True,
            grace=True,
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("|>"), abjad.Dynamic("p")]),
        selector=trinton.patterned_leaf_index_selector(
            [0, 4], 5, pitched=True, grace=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.Dynamic("f")]),
        selector=trinton.patterned_leaf_index_selector(
            [
                0,
            ],
            2,
            pitched=True,
            grace=False,
        ),
        direction=abjad.DOWN,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
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
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 10, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BreathMark(), abjad.StopHairpin()],
        selector=trinton.patterned_tie_index_selector(
            [9], 10, last=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BreathMark(), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.spanner_command(
        strings=["overblow", "whistle"],
        selector=trinton.select_leaves_by_index([0, 8], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
        right_padding=-1,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "( sim. )" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                10,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=1)),
    evans.PitchHandler(pitch_list=["fs,"]),
    evans.PitchHandler(pitch_list=["10/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 4, 6])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="10°/sounding C-sharp ( with violin )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.2, 2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
        ],
        divisions=[8],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=7.5,
        forget=False,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.2, 2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[1],
        divisions=[15],
        counts=[6],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=7.5,
        forget=False,
    ),
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.45, seed=7, tuplet_index=0)),
    evans.PitchHandler(pitch_list=["c'"]),
    evans.PitchHandler(pitch_list=["10/1"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False)
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 8", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="10°/sounding B-flat ( with violin )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[3, 4, 2, 5, 4, 5, 2, 3, 0.2, 0.4, 0.1, 1, 0.5, 4, 3, 5, 0.2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            2,
            1,
            1,
            3,
            1,
            1,
            2,
            1,
            2,
            1,
            1,
            0.2,
            1,
            0.5,
            1,
            3,
        ],
        divisions=[17],
        counts=[22],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=10.5,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Bass",
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
    evans.RhythmHandler(evans.talea([1, 22, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["ds", "ff", "eqf"]),
    trinton.continuous_glissando(
        zero_padding=True, selector=trinton.pleaves(exclude=[0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slapped", site="before"),
            abjad.LilyPondLiteral(r"\revert-noteheads", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
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
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([11, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["gf", "fqs"]),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    abjad.slur,
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([-8, 1, 32, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ds", "ff", "eqf"]),
    trinton.continuous_glissando(
        zero_padding=True, selector=trinton.pleaves(exclude=[0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slapped", site="before"),
            abjad.LilyPondLiteral(r"\revert-noteheads", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([12, 1], 16)),
    evans.PitchHandler(["df,", "c,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.continuous_glissando(zero_padding=True),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([33, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["ef,", "d,"]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.continuous_glissando(slur=True, zero_padding=True),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["d,"]),
    voice=score["accordion 3 voice"],
)

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 6)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=5)),
        trinton.rewrite_meter_command(boundary_depth=-2),
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
        trinton.change_notehead_command(notehead="cluster"),
        trinton.ottava_command(
            octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        trinton.linear_attachment_command(
            attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
            selector=trinton.select_leaves_by_index(
                [
                    3,
                    6,
                    10,
                    12,
                    13,
                    15,
                    16,
                    18,
                    19,
                    21,
                ],
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    evans.RhythmHandler(evans.talea([-8, 67, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["f,", "e,"]),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), slur=True, zero_padding=True
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
        selector=trinton.select_leaves_by_index([-3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 4, 4, -1], pitched=True, grace=False
        ),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    evans.RhythmHandler(evans.talea([-4, 2, -6, 5, -8, 5, -100], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=["ef,", "f,", "e,"]),
    voice=score["accordion 3 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.45, seed=6, tuplet_index=0)),
    evans.PitchHandler(pitch_list=["bf"]),
    evans.PitchHandler(pitch_list=["9/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 6.5",
                site="before",
            ),
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="9°/sounding B-flat ( with clarinet )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[4, 0.2, 4, 0.5, 5, 3, 4, 2, 5, 3, 4, 0.2, 4, 0.5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1,
            1,
            1,
            0.2,
            0.2,
            1,
            0.2,
            0.2,
            1,
            0.2,
            1,
            0.2,
            0.5,
        ],
        divisions=[14],
        counts=[14],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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
    trinton.hooked_spanner_command(
        string=r"flaut. + pont. moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.3, seed=7, tuplet_index=0)),
    evans.PitchHandler(pitch_list=["a"]),
    evans.PitchHandler(pitch_list=["7/1"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False)
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="7°/sounding A ( with cello )",
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
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.2, 1.5, 4, 3, 4, 2, 5, 0.2, 0.4, 0.2, 0.7, 3, 5, 3, 4, 2, 3, 1, 0.2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[3, 1, 2, 1, 1, 2],
        divisions=[19],
        counts=[14],
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
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.talea([2, -7, 2, -7, 2, -6, 2, -6, 2, -6], 32)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["a", "gqs", "gqs", "a", "b", "bqf", "aqs", "gqs"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \hspace #-4 \center-column { \line { "pizz." } \line { "ponticello possibile" } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.4,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                6,
                8,
                9,
                11,
                12,
                14,
                15,
                17,
                18,
                22,
            ],
            grace=False,
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.49, seed=3, tuplet_index=0)),
    evans.PitchHandler(pitch_list=["cs,"]),
    evans.PitchHandler(pitch_list=["11/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 12, 18])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="11°/sounding C-sharp ( with flute )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[4, 5, 3, 4, 0.5, 1, 0.2, 0.7, 0.5, 1, 2, 5, 4, 5, 2, 3, 0.1, 0.5, 0.1],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            2,
            1,
            3,
            1,
        ],
        divisions=[19],
        counts=[12],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=6.5,
        forget=False,
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            0.5,
            1,
            0.2,
            0.7,
            0.5,
            1,
            2,
            5,
            4,
            5,
            2,
            3,
            0.1,
            0.5,
            0.1,
            4,
            5,
            3,
            4,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            2,
            1,
            3,
            1,
            1,
        ],
        divisions=[19],
        counts=[22],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=6.5,
        forget=False,
    ),
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    trinton.hooked_spanner_command(
        string=r"3/4 scratch + molto sul ponticello",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=1,
        )
    ),
    evans.PitchHandler(pitch_list=["c"]),
    evans.PitchHandler(pitch_list=["3/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    abjad.beam,
    trinton.attachment_command(
        attachments=[abjad.Clef("tenor")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="3°/sounding C ( with flute )",
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
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            5,
            0.2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[5, 1],
        divisions=[2],
        counts=[8],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8,
        forget=False,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.3, seed=12, tuplet_index=3)),
    evans.PitchHandler(pitch_list=["a"]),
    evans.PitchHandler(pitch_list=["5/1"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False)
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.ottava_command(
        octave=1,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
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
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="5°/sounding A ( with violin )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[
            4,
            3,
            4,
            2,
            5,
            0.2,
            0.4,
            0.7,
            3,
            5,
            3,
            4,
            2,
            3,
            1,
            0.2,
            1.5,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            2,
            1,
            1,
            1,
            3,
        ],
        divisions=[17],
        counts=[14],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=7.5,
        forget=False,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([14, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["e,", "cqs,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation(">"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
    ),
    trinton.continuous_glissando(zero_padding=True),
    abjad.slur,
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea([25, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["fs,", "ds,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, -1]),
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 \override #'(font-size . 5) {...} )
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([-2], pitched=True),
        direction=abjad.UP,
    ),
    abjad.slur,
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.talea([1, 14, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["cqs,", "f,", "eqf,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Dynamic("ff"),
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
            abjad.StartHairpin("|>"),
            abjad.StartSlur(),
            abjad.Articulation(">"),
            abjad.Dynamic("pp"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                0,
                1,
                1,
                -1,
                -1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "pizz." } }"""
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "arco" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[0]), zero_padding=True
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([2], pitched=True),
        direction=abjad.UP,
    ),
    # abjad.slur,
    voice=score["cello voice"],
    beam_meter=True,
)

# globals

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'4"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=17,
                site="after",
                # hspace=0.5,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'4"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=7,
                site="after",
                # hspace=0.5,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=81,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=17,
                site="after",
                # hspace=0.5,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=81,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=4.5,
                site="after",
                # hspace=0.5,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted quarter",
                tempo=40,
                padding=15,
                site="after",
                hspace=2,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted quarter",
                tempo=40,
                padding=4.5,
                site="after",
                hspace=0,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=45,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
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
        right_padding=-7.5,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=45,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
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
        right_padding=-7.5,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

# breaking

# for measure in [
#     6,
#     8,
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
    3,
    8,
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

for measure in [1, 4, 5, 7, 9, 11, 12]:
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
    2,
    6,
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

for measure in [11]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+PARTS"),
        ),
        voice=score["Global Context"],
    )

# spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 26 9 15 6 24 25)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 17 17 14 5 8 8)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 12 12 14.5 2 16 16.5)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 19 19 14 2 19 18)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/03",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

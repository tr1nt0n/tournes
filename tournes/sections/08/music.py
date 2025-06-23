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

section_ts = ts.return_system_3_ts(measure_amount=6, index=-8)

section_ts.extend(ts.return_system_2_ts(measure_amount=6, index=3))

section_ts.append((1, 4))

score = library.tournes_score(section_ts)

# flute music

for measure, map_rotation in zip([4, 6, 7, 8, 9], [1, 5, 10, 15, 20]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=map_rotation)),
        voice=score["flute voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.PitchHandler(
        [
            _.number
            for _ in pitch.return_sieve_transposition_pitch_list(
                first_pitch=abjad.NamedPitch("bf"),
                interval_list=pitch.return_interval_list_from_sieve(
                    sieve=library.final_sieve,
                ),
                index=0,
            )
        ]
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                3,
                7,
                9,
                11,
                13,
                15,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 3, 3, 4], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=2,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [5, 10, 10, 14, 14, 15], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [16, 19, 19, 22], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index([23, 27], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [28, 32, 32, 35], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index([36, 38], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 3, 3, 4], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=2,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [5, 10, 10, 14, 14, 15], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=5.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [16, 19, 19, 22], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index([23, 27], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [28, 32, 32, 35], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index([36, 38], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=11.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=4,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=1,
        )
    ),
    evans.PitchHandler(pitch_list=["g,"]),
    evans.PitchHandler(pitch_list=["6/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 4, 6])
    ),
    trinton.hooked_spanner_command(
        string="3°/sounding D ( with cello )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
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
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0, 1.5, 5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
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
        padding=5.5,
        forget=False,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 5, 6, -1], pitched=True),
    ),
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    trinton.call_rmaker(
        rmaker=rmakers.rewrite_rest_filled,
        selector=trinton.select_tuplets_by_index([0, -1]),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.trivialize, selector=trinton.select_tuplets_by_index([0, -1])
    ),
    trinton.call_rmaker(
        rmaker=rmakers.extract_trivial,
        selector=trinton.select_tuplets_by_index([0, -1]),
    ),
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
    trinton.spanner_command(
        strings=["norm.", "", "o.b.", "norm."],
        selector=trinton.select_leaves_by_index([0, 10, 10, -1], pitched=True),
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
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 10, 10, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=1,
        )
    ),
    evans.PitchHandler(pitch_list=["b,"]),
    evans.PitchHandler(pitch_list=["11/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 4, 6])
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 4, 6])
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 5",
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
        string="11°/sounding A ( with violin )",
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
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0, 1.5, 5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
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
        padding=7,
        forget=False,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 5, 6, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            [
                -3,
                2,
                1,
                -3,
                2,
                1,
                -6,
                5,
                1,
                -6,
                1,
                1,
                -2,
                5,
                1,
                -6,
                5,
                1,
                -6,
                2,
                1,
                -3,
                6,
                1,
                -7,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            "ef,",
            "d,",
            "ef,",
            "d,",
            "ef,",
            "dqs,",
            "ef,",
            "dqs,",
            "ef,",
            "d,",
            "ef,",
            "d,",
            "ef,",
            "dqs,",
            "ef,",
            "d,",
        ]
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_logical_ties_by_index(
            [7], first=True, pitched=True, grace=False
        )
    ),
    trinton.continuous_glissando(
        zero_padding=True, slur=True, selector=trinton.logical_ties(pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea([3, -3, 3, -3, 6, -6, 6, -2, 2, -6, 6, -6, 6, -3, 3, -7, 7], 16)
    ),
    evans.PitchHandler([["g,", "f,", "e,", "d,", "c,"]]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    # trinton.linear_attachment_command(
    #     attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
    #     selector=trinton.select_leaves_by_index(
    #         [1, 2, 3, 4, 7, 9, 10, 11, 12, 13], grace=False
    #     ),
    # ),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["accordion 3 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
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
    trinton.spanner_command(
        strings=["pont. moltiss.", "tasto moltiss.", "pont. moltiss."],
        selector=trinton.select_leaves_by_index(
            [0, 17, 17, -1],
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["flaut.", "", "scratch", "flaut."],
        selector=trinton.select_leaves_by_index(
            [0, 17, 17, -1],
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 17, 17, -1]),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=1,
        )
    ),
    evans.PitchHandler(pitch_list=["a,"]),
    evans.PitchHandler(pitch_list=["13/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 4, 6])
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.OttavaBracket.staff-padding = 5",
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
        string="13°/sounding A ( with clarinet )",
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
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0, 1.5, 5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
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
        padding=7.5,
        forget=False,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 5, 6, -1], pitched=True),
    ),
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            "flaut. + tasto moltiss.",
            "",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 41],
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["scratch + ponticello moltiss.", "flaut. + tasto moltiss."],
        selector=trinton.select_leaves_by_index(
            [41, -1],
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-14,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 41, 41, -1]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        rhythm.rhythm_3(
            stage=1,
        )
    ),
    evans.PitchHandler(pitch_list=["d,"]),
    evans.PitchHandler(pitch_list=["10/1"], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0, 4, 6])
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 4, 6])
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="5°/sounding D ( with flute )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7,
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
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0, 1.5, 5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            3,
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
        padding=6,
        forget=False,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 5, 6, -1], pitched=True),
    ),
    voice=score["cello voice"],
)

# globals


# fermate

trinton.fermata_measures(
    score=score,
    measures=[13],
    fermata="extremely-long-fermata",
    voice_names=library.all_voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=True,
    padding=-5,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[abjad.BarLine("|.", site="after")],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted eighth",
                tempo=56,
                padding=14.5,
                site="after",
                hspace=3.5,
                string_only=False,
                # metric_modulation=abjad.MetricModulation(
                #     left_rhythm=abjad.Note("c'8."),
                #     right_rhythm=abjad.Note("c'4"),
                # ),
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted eighth",
                tempo=56,
                padding=7,
                site="after",
                hspace=0,
                string_only=False,
                # metric_modulation=abjad.MetricModulation(
                #     left_rhythm=abjad.Note("c'8."),
                #     right_rhythm=abjad.Note("c'4"),
                # ),
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
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
        padding=18.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+SCORE"),
    ),
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
        padding=6.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+PARTS"),
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
    3,
    9,
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


for measure in [1, 2, 4, 5, 7, 8, 10, 11, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [10, 11, 12]:
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


# spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 10 8 14.5 4 10 8)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 15 8 13 2 10 8)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 18 12 10 2 16 19.5)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 20 10 10 2 18 20)))",
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

# colophon

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\override Staff.TextScript.whiteout = 0",
            #     site="before",
            # ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #4 { \right-column \override #'(font-name . "Bodoni72 Book Italic") { \line { "March - August 2025" } \line { "Dresden DE - Coralville IA" } } }"""
                ),
                r"- \tweak X-extent ##f",
                r"- \tweak padding 3",
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
        direction=abjad.DOWN,
    ),
    voice=score["cello voice"],
)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/08",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

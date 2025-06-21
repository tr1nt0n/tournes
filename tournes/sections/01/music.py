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
    trinton.pitch_with_selector_command(
        pitch_list=["dqf'", "ef'", "d'", "cs'", "dqs'"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["dqf'", "d'"], selector=trinton.pleaves(grace=False)
    ),
    trinton.vertical_accidentals(selector=trinton.pleaves(exclude=[0], grace=True)),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True)
    ),
    trinton.hooked_spanner_command(
        string="""\markup \hspace #1 { "loud key clicks + pitch" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=True),
        padding=8.5,
        direction=None,
        right_padding=15,
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
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.padding = #4.5",
                site="before",
            ),
            trinton.make_custom_dynamic("s. f"),
            abjad.Articulation("staccatissimo"),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=3)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo"), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.flute_multiphonic,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        direction=None,
        right_padding=5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=3)),
    evans.PitchHandler(
        [
            _.number
            for _ in pitch.return_sieve_transposition_pitch_list(
                first_pitch=abjad.NamedPitch("cs"),
                interval_list=pitch.return_interval_list_from_sieve(
                    sieve=library.sieve_1,
                ),
                index=0,
            )
        ]
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([2, 8, 26], pitched=True)
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mp"'),
            abjad.Articulation("tenuto"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic('"mf"'),
            abjad.Dynamic('"mp"'),
            abjad.Articulation("staccato"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                4,
                6,
                6,
                7,
                7,
                10,
                13,
                13,
                18,
                19,
                19,
                21,
                22,
                23,
                24,
                25,
                30,
                31,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Markup(r"\flute-one-hundred-thirty-five-degrees")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [1, 4],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-parallel",
        selector=trinton.select_leaves_by_index([5, 6], pitched=True),
        padding=9,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+SCORE"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-parallel",
            r"\flute-ninety-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [
                7,
                10,
                10,
                12,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[r"\flute-ninety-degrees", r"\flute-parallel"],
        selector=trinton.select_leaves_by_index(
            [
                13,
                16,
                16,
                18,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=None,
        end_hook_right_padding=2,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-parallel",
        selector=trinton.select_leaves_by_index([19, 21], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+SCORE"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [
                21,
                22,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-one-hundred-thirty-five-degrees",
        selector=trinton.select_leaves_by_index([23, 24], pitched=True),
        padding=10.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+SCORE"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-ninety-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [
                25,
                27,
                27,
                30,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-forty-five-degrees",
        selector=trinton.select_leaves_by_index([31, 33], pitched=True),
        padding=9,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+SCORE"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [1, 4],
            pitched=True,
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
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-parallel",
        selector=trinton.select_leaves_by_index([5, 6], pitched=True),
        padding=10.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+PARTS"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-parallel",
            r"\flute-ninety-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [
                7,
                10,
                10,
                12,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[r"\flute-ninety-degrees", r"\flute-parallel"],
        selector=trinton.select_leaves_by_index(
            [
                13,
                16,
                16,
                18,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=None,
        end_hook_right_padding=2,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-parallel",
        selector=trinton.select_leaves_by_index([19, 21], pitched=True),
        padding=11,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+PARTS"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [
                21,
                22,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-one-hundred-thirty-five-degrees",
        selector=trinton.select_leaves_by_index([23, 24], pitched=True),
        padding=12,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+PARTS"),
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-ninety-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [
                25,
                27,
                27,
                30,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.hooked_spanner_command(
        string=r"\flute-forty-five-degrees",
        selector=trinton.select_leaves_by_index([31, 33], pitched=True),
        padding=10.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=abjad.Tag("+PARTS"),
        tweaks=None,
    ),
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"ffff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"overblow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
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
        string=r"overblow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["flute voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1, rest_size=3)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([2, 3], pitched=True)),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 2, 5], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
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
    lambda _: trinton.select_target(_, (17, 18)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=8)),
    evans.PitchHandler(
        [
            _.number
            for _ in pitch.return_sieve_transposition_pitch_list(
                first_pitch=abjad.NamedPitch("cs"),
                interval_list=pitch.return_interval_list_from_sieve(
                    sieve=library.sieve_3,
                ),
                index=0,
            )
        ]
    ),
    trinton.octavation(octave=2, selector=trinton.pleaves()),
    trinton.octavation(octave=1, selector=trinton.pleaves(exclude=[0, -1])),
    trinton.octavation(
        octave=1, selector=trinton.select_leaves_by_index([2], pitched=True)
    ),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([1, -2], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            abjad.Dynamic('"mp"'),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\flute-forty-five-degrees")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [1, 2, 2, 4],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2, map_rotation=0)),
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
        tag=abjad.Tag("+SCORE"),
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
        tag=abjad.Tag("+SCORE"),
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
        padding=13.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
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
        padding=13,
        forget=False,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-12, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ds"]),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.LaissezVibrer(),
            abjad.LilyPondLiteral(
                [
                    r"\slapped",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert-noteheads",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2, map_rotation=1)),
    pitch.clarinet_pitching_1(index=24),
    # trinton.annotate_leaves_locally(),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([19, 23, 24, 39])
    ),
    library.clarinet_articulations_1(
        finger_number_index=5, selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-open",
            "\woodwind-half-closed",
            "\woodwind-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                7,
                7,
                8,
                8,
                11,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=-1,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-open",
            "\woodwind-half-closed",
            "\woodwind-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [
                11,
                18,
                18,
                20,
                20,
                23,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=0,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\woodwind-three-quarters-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [23, 27, 27, 30],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=0,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\woodwind-half-closed",
            r"\woodwind-open",
        ],
        selector=trinton.select_leaves_by_index(
            [30, 35, 35, 39],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0, 0.5, 1.5, 5, 0.2, 0.4, 0.6, 5, 3, 2, 3, 1, 3, 4],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.8,
            0.9,
            1,
            0.2,
        ],
        divisions=[20],
        counts=[40],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=10,
        forget=False,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-open",
            "\woodwind-half-closed",
            "\woodwind-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                7,
                7,
                8,
                8,
                11,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=-1,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-open",
            "\woodwind-half-closed",
            "\woodwind-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [
                11,
                18,
                18,
                20,
                20,
                23,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=0,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\woodwind-three-quarters-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [23, 27, 27, 30],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=0,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\woodwind-half-closed",
            r"\woodwind-open",
        ],
        selector=trinton.select_leaves_by_index(
            [30, 35, 35, 39],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0, 0.5, 1.5, 5, 0.2, 0.4, 0.6, 5, 3, 2, 3, 1, 3, 4],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.8,
            0.9,
            1,
            0.2,
        ],
        divisions=[20],
        counts=[40],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=12,
        forget=False,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.45, seed=1, tuplet_index=0)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.PitchHandler(pitch_list=["c'"]),
    evans.PitchHandler(pitch_list=["5/1"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.hooked_spanner_command(
        string="5°/sounding B-flat ( with violin )",
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
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.pitch_with_selector_command(
        pitch_list=["cs'"], selector=trinton.pleaves(exclude=[-1])
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["6/1"], as_ratios=True, selector=trinton.pleaves(exclude=[-1])
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["ds"], selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, exclude=[-1])
    ),
    trinton.hooked_spanner_command(
        string="6°/sounding B ( with violin )",
        selector=trinton.select_leaves_by_index([0, -2], pitched=True),
        padding=11,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                7,
                8,
                9,
                10,
                11,
                13,
                14,
                15,
                16,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [
                5,
                6,
                12,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([0, 3, 9, 10, 13, 16], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\slapped", site="before"),
            abjad.LilyPondLiteral(r"\revert-noteheads", site="absolute_after"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.pleaves(),
        peaks=[5, 4, 5, 3, 5, 3.5, 4.5, 2, 5, 0.2, 5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[0.2, 0.3, 0.2, 0.4, 0.2, 0.4, 0.2, 0.1, 1, 1.5, 1],
        divisions=[11],
        counts=[7],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=0,
        right_text=None,
        padding=10,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    library.graphic_bow_pressure_spanner(
        selector=trinton.pleaves(),
        peaks=[
            5,
            0.2,
            5,
            5,
            4,
            5,
            3,
            5,
            3.5,
            4.5,
            2,
        ],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            1,
            1.5,
            1,
            0.2,
            0.3,
            0.2,
            0.4,
            0.2,
            0.4,
            0.2,
            0.1,
        ],
        divisions=[24],
        counts=[12],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=0,
        right_text=None,
        padding=10,
        forget=False,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    rmakers.trivialize,
    rmakers.rewrite_rest_filled,
    rmakers.extract_trivial,
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"ffff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"3/4 overblow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1, rest_size=3)),
    evans.PitchHandler(pitch_list=["gqs"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.spanner_command(
        strings=[
            "air",
            "1/3 air",
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=3.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        command="",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2, map_rotation=2)),
    pitch.clarinet_pitching_1(index=17),
    library.clarinet_articulations_1(
        finger_number_index=16, selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-closed",
            "\woodwind-half-closed",
            "\woodwind-three-quarters-closed",
            "\woodwind-open",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 4, 4, 7, 7, -1],
            pitched=True,
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
        tag=abjad.Tag("+SCORE"),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[4, 1, 2.5, 0.2, 0.3],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[1, 2, 3, 1, 0.5],
        divisions=[5],
        counts=[10],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=9.5,
        forget=False,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-closed",
            "\woodwind-half-closed",
            "\woodwind-three-quarters-closed",
            "\woodwind-open",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 4, 4, 7, 7, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=12,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[4, 1, 2.5, 0.2, 0.3],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[1, 2, 3, 1, 0.5],
        divisions=[5],
        counts=[10],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=11.5,
        forget=False,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"ffff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 overblow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
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
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(
        rhythm.rhythm_1(stage=3),
    ),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            4,
            3,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 64),
        boolean_vector=[0, 1, 0, 1, 0, 0, 0],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="feather beam cello graces",
    ),
    pitch.clarinet_pitching_1(
        index=0, clarinet="soprano", selector=trinton.pleaves(grace=False)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["a", "e'", "gs'", "f''", "f'", "gf'", "e''"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([2, 5], grace=True)
    ),
    library.clarinet_articulations_1(
        finger_number_index=0,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.clean_rhythm_1_bursts(),
    trinton.spanner_command(
        strings=[
            "\woodwind-three-quarters-closed",
            "\woodwind-closed",
            "\woodwind-three-quarters-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2, 2, -1], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=9.2,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+SCORE"),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.1, 1, 4, 0.1, 0.2, 1, 4, 0.2, 0.4, 0.3, 1, 2, 3],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            2,
            0.3,
            1,
            2,
            0.4,
            0.3,
            2,
            0.2,
            0.1,
            0.2,
            0.5,
            0.5,
            0.3,
        ],
        divisions=[13],
        counts=[14],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8.7,
        forget=False,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            "\woodwind-three-quarters-closed",
            "\woodwind-closed",
            "\woodwind-three-quarters-closed",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2, 2, -1], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11.2,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=abjad.Tag("+PARTS"),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.1, 1, 4, 0.1, 0.2, 1, 4, 0.2, 0.4, 0.3, 1, 2, 3],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            2,
            0.3,
            1,
            2,
            0.4,
            0.3,
            2,
            0.2,
            0.1,
            0.2,
            0.5,
            0.5,
            0.3,
        ],
        divisions=[13],
        counts=[14],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=10.7,
        forget=False,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["bassclarinet voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([-2, 58, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["d,", "cs,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        no_ties=False,
        tweaks=None,
        zero_padding=True,
        invisible_center=False,
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
        selector=trinton.select_leaves_by_index([-2], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin("|>"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([-8, 2, -6, 3, -8, 2, -100], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["d,", "cs,", "cs,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([23, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["df,", "cqs,"]),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        no_ties=False,
        tweaks=None,
        zero_padding=True,
        invisible_center=False,
    ),
    abjad.slur,
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
        selector=trinton.select_leaves_by_index([1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([-2, -3, -1], 4, treat_tuplets=False)),
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.invisible_rests(),
    trinton.spanner_command(
        strings=[
            "no air",
            "3/4 air",
            "1/4 air",
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        command="",
        tag=None,
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.talea([71, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ef,", "d,"]),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        no_ties=False,
        tweaks=None,
        zero_padding=True,
        invisible_center=False,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 \override #'(font-size . 5) {.} )
                    }
                }"""
            ),
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([-4, -3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("pf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, -2, -2, -1]),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.talea([-3, 4, -2, 2, 1], 8),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ef,", "ef,", "e,"]),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([-3, -1], pitched=True),
    ),
    voice=score["accordion 3 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([-3, -2, -1], 4, treat_tuplets=False)),
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.invisible_rests(),
    trinton.spanner_command(
        strings=[
            "1/4 air",
            "3/4 air",
            "no air",
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        command="",
        tag=None,
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                -1,
                -3,
                5,
            ],
            8,
            extra_counts=[1, 0, 0],
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["ef,", "ef,", "ef,", "f,", "e,"]),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2]),
    ),
    voice=score["accordion 3 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((2, 1, 3)),
)

for voice_name in [
    "accordion 1 voice",
    "accordion 3 voice",
    "violin voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (11,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1, rest_size=1)),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (11,)),
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
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (13,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1, rest_size=1)),
        trinton.force_rest(selector=trinton.select_leaves_by_index([0], pitched=True)),
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
            attachments=[abjad.Articulation("tenuto")], selector=trinton.pleaves()
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index([14], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (15,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1, rest_size=1)),
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
            attachments=[abjad.Articulation("tenuto")], selector=trinton.pleaves()
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=0)),
    pitch.string_pitching_1(
        fundamental="a", sieve=library.sieve_1a, index=16, selector=trinton.pleaves()
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([5, 6, 7, 8, 14, 15], pitched=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([1, 2, 13, 14], pitched=True)
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                12,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([3, 4, 7, 8, 11, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-up",
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, 3], pitched=True),
        style="solid-line-with-arrow",
        padding=7.2,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([4, 6], pitched=True),
        style="solid-line-with-arrow",
        padding=8.2,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\bow-tip-half-up")],
        selector=trinton.select_leaves_by_index([8], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[r"\bow-tip-half-down", r"\bow-tip-half-up"],
        selector=trinton.select_leaves_by_index([9, 11], pitched=True),
        style="solid-line-with-arrow",
        padding=9,
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
        strings=[r"\bow-tip-half-up", r"\bow-tip-up"],
        selector=trinton.select_leaves_by_index([12, 15], pitched=True),
        style="solid-line-with-arrow",
        padding=9,
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
        strings=[
            r"3/4 spz.",
            r"1/2 spz.",
        ],
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
        style="solid-line-with-arrow",
        padding=9,
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
    trinton.spanner_command(
        strings=[
            r"norm.",
            r"spz.",
        ],
        selector=trinton.select_leaves_by_index([4, 7], pitched=True),
        style="solid-line-with-arrow",
        padding=10,
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
    trinton.spanner_command(
        strings=[r"spz.", r"1/6 spz."],
        selector=trinton.select_leaves_by_index(
            [
                8,
                10,
                10,
                12,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11.2,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=0,
        command="Two",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"",
            r"spz.",
            r"norm.",
        ],
        selector=trinton.select_leaves_by_index([12, 13, 13, 15], pitched=True),
        style="solid-line-with-arrow",
        padding=11.2,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"mf"'),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"mp"'),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                9,
                10,
                11,
                12,
                12,
                -1,
            ],
            pitched=True,
        ),
    ),
    library.string_finger_pressures_1(
        index=0, seed=3, p=0.5, selector=trinton.pleaves()
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 6, 6, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([-11, 1, 1, -11, -1, 1, -9, 1, -1000], 8)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["a", "gqs", "gqs", "a"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \hspace #-7 \center-column { \line { "pizz." } \line { "ponticello possibile" } }""",
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_3(stage=2, p=0.50, seed=5, tuplet_index=4)),
    trinton.pitch_with_selector_command(
        pitch_list=["cs'"], selector=trinton.select_leaves_by_index([-1], pitched=True)
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.pitch_with_selector_command(
        pitch_list=["bf,"], selector=trinton.logical_ties(pitched=True)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["6/1"], as_ratios=True, selector=trinton.logical_ties(pitched=True)
    ),
    trinton.hooked_spanner_command(
        string="6°/sounding B-flat ( with clarinet )",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.4,
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
    lambda _: trinton.select_target(_, (9,)),
    trinton.pitch_with_selector_command(
        pitch_list=["b,"],
        selector=trinton.logical_ties(pitched=True, exclude=[-1], grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["7/1"],
        as_ratios=True,
        selector=trinton.logical_ties(pitched=True, exclude=[-1], grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["cs'", "b", "c'", "ef'", "dqs'"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True)
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([2, 3, 4], pitched=True, grace=True)
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.pleaves(exclude=[0], grace=True),
        direction=abjad.DOWN,
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.hooked_spanner_command(
        string="7°/sounding B ( with clarinet )",
        selector=trinton.select_leaves_by_index([0, -2], pitched=True, grace=False),
        padding=7.5,
        direction=None,
        right_padding=1,
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
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[4, 0.2, 4, 2.75, 4.5, 0.2, 3],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.5,
        ],
        divisions=[7],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=5.3,
        forget=False,
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(exclude=[-1], grace=False),
        peaks=[0.1, 3, 1, 2, 1, 4, 3, 4, 2, 3, 2, 4, 2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            0.5,
            0.5,
            0.5,
            0.5,
            0.25,
            0.25,
            0.25,
            0.2,
            0.1,
            0.2,
            0.2,
            0.3,
            1,
            0.5,
            0.7,
            1,
        ],
        divisions=[40],
        counts=[31],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=6.7,
        forget=False,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin("|>"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, -1], grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("downbow")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.logical_ties(
            first=True, pitched=True, exclude=[0, -2], grace=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index([-2], grace=True, first=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_logical_ties_by_index(
            [-1], pitched=True, grace=False, first=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_logical_ties_by_index(
            [0], pitched=True, grace=True, first=True
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.PitchHandler(["bqs"]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"scratch, tasto",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"ffff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 scratch",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
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
        string=r"2/3 scratch",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    evans.PitchHandler(["bqs"]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"scratch, tasto",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 18)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2)),
    pitch.string_pitching_1(
        fundamental="a", sieve=library.sieve_3, index=1, selector=trinton.pleaves()
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([4, 5, 7, 8, 10], pitched=True),
    ),
    # trinton.vertical_accidentals(
    #     selector=trinton.select_leaves_by_index([-1], pitched=True)
    # ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-up",
            r"\bow-tip-up",
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                3,
                5,
                5,
                9,
                9,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
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
        strings=[r"norm.", r"1/5 spz.", r"spz.", r"norm.", r"1/2 spz."],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                2,
                5,
                5,
                8,
                8,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11.2,
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
    library.string_finger_pressures_1(
        index=0, seed=4, p=0.39, selector=trinton.pleaves()
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
                2,
                5,
                5,
                7,
                7,
                9,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("tenor"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=3)),
    pitch.string_pitching_1(
        fundamental="g", sieve=library.sieve_1, index=4, selector=trinton.pleaves()
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                0,
                5,
                7,
                9,
                11,
                13,
                14,
                15,
                16,
                17,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                22,
                24,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(list(range(25, 36)), pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([25], pitched=True),
    ),
    # trinton.vertical_accidentals(
    #     selector=trinton.select_leaves_by_index([1, 2, 13, 14], pitched=True)
    # ),
    library.string_finger_pressures_1(
        index=0,
        seed=7,
        p=0.45,
        selector=trinton.pleaves(),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([1, 4, 4, 5], pitched=True),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_leaves_by_index([5, 6], pitched=True),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-down",
            r"\bow-tip-half-up",
        ],
        selector=trinton.select_leaves_by_index([7, 10], pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-up",
            r"\normale-bow-rotation",
            r"\bow-tip-up",
        ],
        selector=trinton.select_leaves_by_index([13, 15, 15, 17, 17, 18], pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-up",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([19, 24], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
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
        strings=[
            r"\bow-tip-half-up",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_leaves_by_index([25, 28, 28, 30], pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-up",
        ],
        selector=trinton.select_leaves_by_index([31, 34], pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
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
        strings=[
            r"1/3 spz.",
            r"3/4 spz.",
        ],
        selector=trinton.select_leaves_by_index([1, 4], pitched=True),
        style="solid-line-with-arrow",
        padding=13,
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
        string=r"1/4 spz.",
        selector=trinton.select_leaves_by_index([5, 6], pitched=True),
        padding=13,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.spanner_command(
        strings=[r"norm.", r"spz.", r"2/3 spz."],
        selector=trinton.select_leaves_by_index([7, 10, 10, 12, 12, 14], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=0,
        command="Two",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[r" ", r"norm.", r"3/4 spz."],
        selector=trinton.select_leaves_by_index([14, 16, 16, 18], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"spz.",
            r"norm.",
        ],
        selector=trinton.select_leaves_by_index([19, 22, 22, 24], pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[r"norm.", r"1/2 spz.", r"norm."],
        selector=trinton.select_leaves_by_index([25, 27, 27, 29, 29, 30], pitched=True),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"5/6 spz.",
        selector=trinton.select_leaves_by_index([31, 34], pitched=True),
        padding=10.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([0, 5, 29, 30], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [
                35,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"mp"'),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"fp"'),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<|"),
            abjad.Dynamic('"fp"'),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                4,
                5,
                6,
                7,
                11,
                13,
                15,
                15,
                16,
                17,
                17,
                18,
                19,
                19,
                23,
                25,
                29,
                31,
                33,
            ],
            pitched=True,
        ),
    ),
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
    trinton.pitch_with_selector_command(
        pitch_list=["dqs,"], selector=trinton.pleaves(grace=False)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["dqs,", "e,", "cs,", "ds,", "fqs,"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True)
    ),
    trinton.vertical_accidentals(selector=trinton.pleaves(exclude=[0, 1], grace=True)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.pleaves(exclude=[0], grace=True),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("downbow")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True, grace=True),
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([2, -1], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\grace-half-harmonic")],
        selector=trinton.select_leaves_by_index([1], pitched=True, grace=True),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"1/3 scratch",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2, map_rotation=5)),
    pitch.string_pitching_1(
        fundamental="d", sieve=library.sieve_2a, index=4, selector=trinton.pleaves()
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([8, 17, 26, 35], pitched=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [1, 2, 3, 4, 5, 6, 18, 19, 21, 22, 23, 24, 37, 38, 39], pitched=True
        )
    ),
    library.string_finger_pressures_1(
        index=2,
        seed=13,
        p=0.6,
        selector=trinton.pleaves(),
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-up",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
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
        strings=[r"norm.", r"spz.", r"1/5 spz."],
        selector=trinton.select_leaves_by_index([0, 19, 19, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=10.5,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 17, 17, 26, 29, 29, -1], pitched=True
        ),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.PitchHandler(["eqs,"]),
    trinton.aftergrace_command(invisible=True, pitch_matching=True),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
            ),
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
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
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.tuplet([(-2, 1, 1)])),
    evans.PitchHandler(["eqs,"]),
    trinton.aftergrace_command(invisible=True, pitch_matching=True),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
            ),
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7,
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
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    evans.PitchHandler(["eqs,"]),
    trinton.aftergrace_command(invisible=True, pitch_matching=True),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
            ),
            abjad.Articulation("espressivo"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
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
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 16)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=2, map_rotation=2)),
    pitch.string_pitching_1(
        fundamental="bf", sieve=library.sieve_2b, index=2, selector=trinton.pleaves()
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1,
        selector=trinton.pleaves(),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [1, 7, 13, 15, 16, 17, 19], pitched=True
        ),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([17, 18, 33, 34], pitched=True)
    ),
    library.string_finger_pressures_1(
        index=3,
        seed=12,
        p=0.49,
        selector=trinton.pleaves(),
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-up",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_leaves_by_index([0, 5, 5, 7], pitched=True),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\bow-tip-half-up",
            r"\bow-tip-up",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_leaves_by_index(
            [7, 9, 9, 12, 12, 15, 15, 17], pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([17, 24, 24, 27], pitched=True),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\bow-tip-up",
        ],
        selector=trinton.select_leaves_by_index([27, 31, 31, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=10.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"3/4 spz.",
        selector=trinton.select_leaves_by_index([0, 8], pitched=True),
        padding=12.5,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
    ),
    trinton.spanner_command(
        strings=[r"", r"spz.", r"1/2 spz.", r"norm.", r"spz."],
        selector=trinton.select_leaves_by_index(
            [8, 12, 12, 22, 22, 26, 26, 31, 31, -1], pitched=True
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 0""",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                5,
                5,
                7,
                8,
                8,
                12,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 18)),
    evans.RhythmHandler(
        rhythm.rhythm_1(stage=3),
    ),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            4,
            3,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 64),
        boolean_vector=[0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="feather beam cello graces",
    ),
    pitch.string_pitching_1(
        fundamental="a",
        sieve=library.sieve_2,
        index=0,
        selector=trinton.pleaves(grace=False),
    ),
    trinton.octavation(octave=-1, selector=trinton.pleaves(grace=False)),
    library.string_finger_pressures_1(
        index=12, seed=4, p=0.49, selector=trinton.pleaves(grace=False)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "af,",
            "af'",
            "ef",
            "ef'",
            "fs,",
            "fs'",
            "e,",
            "eqf,",
            "ef'",
            "eqf,",
            "b,",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    library.clean_rhythm_1_bursts(),
    trinton.vertical_accidentals(
        selector=trinton.pleaves(grace=True, exclude=[0, 4, 7])
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.pleaves(grace=True, exclude=[0, 4, 7])
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(grace=True),
        zero_padding=True,
        tweaks=[r"- \tweak Glissando.thickness #2"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<|"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [2, 2, 5, 8, 11],
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[r"\bow-tip-half-up", r"\normale-bow-rotation"],
        selector=trinton.select_leaves_by_index([2, 5], grace=False),
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
        strings=[r"1/3 spz.", r"spz."],
        selector=trinton.select_leaves_by_index([2, 5], grace=False),
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
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([8, 11], grace=False),
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
        strings=[
            r"spz.",
            r"1/3 spz.",
        ],
        selector=trinton.select_leaves_by_index([8, 11], grace=False),
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
                tempo=90,
                padding=15,
                metric_modulation=None,
                site="after",
                hspace=1,
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
                tempo=90,
                padding=17.5,
                metric_modulation=None,
                site="after",
                hspace=0,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 32 14 12 4 18.5 16)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# spacing

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 18.5 14.5 14 1.5 12.5 18)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 23.5 15 10 3.5 14 22.5)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 30 18 11 2.5 17 27)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
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
        padding=13.5,
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
        padding=18,
        tweaks=None,
        right_padding=-7.5,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+PARTS"),
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
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                site="after",
                hspace=0.5,
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
                tempo=90,
                padding=5.5,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                site="after",
                hspace=0.5,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

# breaking

for measure in [4, 7, 12, 18]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 3, 5, 8]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

for measure in [10, 11, 13, 14, 16, 17]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# extract parts

trinton.extract_parts(score=score)

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

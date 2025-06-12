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

section_ts = ts.return_system_3_ts(measure_amount=6, index=7)

section_ts.extend(ts.return_system_1_ts(measure_amount=6, index=0))

score = library.tournes_score(section_ts)

# flute music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
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
        strings=[
            "whistle",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([0, 45, 45, -1], pitched=True),
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
    trinton.hooked_spanner_command(
        string=r"throat-scream",
        selector=trinton.select_leaves_by_index([45, -1], pitched=True),
        padding=10.5,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 45], pitched=True),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([-2, 2, -1], 16)),
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
        string="""\markup \hspace #1.6 { "loud key clicks + pitch" }""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8.5,
        direction=None,
        right_padding=1,
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
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=30)),
    evans.PitchHandler(
        [
            _.number
            for _ in pitch.return_sieve_transposition_pitch_list(
                first_pitch=abjad.NamedPitch("ef"),
                interval_list=pitch.return_interval_list_from_sieve(
                    sieve=library.sieve_4,
                ),
                index=2,
            )
        ]
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.Markup(r"\flute-forty-five-degrees"),
                abjad.Markup(r"\flute-one-hundred-thirty-five-degrees"),
                abjad.Markup(r"\flute-parallel"),
            ],
        ),
        selector=trinton.patterned_leaf_index_selector(
            [3, 4], 5, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"pppp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-ninety-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2],
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
        tag=None,
    ),
    trinton.spanner_command(
        strings=[r"\flute-ninety-degrees", r"\flute-forty-five-degrees"],
        selector=trinton.select_leaves_by_index(
            [5, 7],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-ninety-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [10, 12],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-ninety-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [15, 17],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-ninety-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [20, 22],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.tuplet([(1, 1), (1, 1, 1, 1), (-4, 1)])),
    evans.PitchHandler(pitch_list=[["gqf'", "af''"]]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, 4], pitched=True),
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

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
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
        strings=[
            "air",
            "overblow",
        ],
        selector=trinton.select_leaves_by_index([0, 45, 45, -1], pitched=True),
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
        command="",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"throat-scream",
        selector=trinton.select_leaves_by_index([45, -1], pitched=True),
        padding=10.5,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 45], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.tuplet([(1, 1)])),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.tuplet([(3, 2)])),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 12)),
    evans.PitchHandler(pitch_list=["aqs"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                8,
                10,
                11,
                12,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[
            "air",
            "1/3 air",
            "air",
            "1/2 air",
            "air",
            "1/5 air",
            "air",
            "3/4 air",
            "air",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                4,
                6,
                6,
                9,
                9,
                13,
                13,
                17,
                17,
                19,
                19,
                22,
                22,
                25,
            ]
        ),
        style="solid-line-with-arrow",
        padding=3,
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
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 5, 18], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# accordion music

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
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
            attachments=[abjad.Clef("bass")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        trinton.linear_attachment_command(
            attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
            selector=trinton.select_leaves_by_index(
                [
                    4,
                    17,
                    18,
                    20,
                ],
                pitched=True,
                grace=False,
            ),
        ),
        trinton.linear_attachment_command(
            attachments=cycle(
                [abjad.BeamCount(left=2, right=1), abjad.BeamCount(left=1, right=2)]
            ),
            selector=trinton.select_leaves_by_index(
                [10, 11], pitched=True, grace=False
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 7, -1]),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([39, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["af", "gqs"]),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), slur=True, zero_padding=True
    ),
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
        selector=trinton.select_leaves_by_index([-3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([4, -1], pitched=True, grace=False),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["g"]),
    voice=score["accordion 3 voice"],
)

for voice_name in ["accordion 1 voice", "accordion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (7, 9)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
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
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        trinton.linear_attachment_command(
            attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
            selector=trinton.select_leaves_by_index([4, 5], pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (10,)),
        evans.RhythmHandler(evans.tuplet([(-1, 2, -1)])),
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
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (11,)),
        evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=5)),
        trinton.rewrite_meter_command(boundary_depth=-1),
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
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (12,)),
        evans.RhythmHandler(evans.tuplet([(-2, 2, -1)])),
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
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        # trinton.linear_attachment_command(
        #     attachments=cycle(
        #         [
        #             abjad.StartBeam(),
        #             abjad.StopBeam()
        #         ]
        #     ),
        #     selector=trinton.select_leaves_by_index(
        #         [
        #             4, 5
        #         ],
        #         pitched=True,
        #         grace=False
        #     ),
        # ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 12], pitched=True, grace=False),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
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
        selector=trinton.select_leaves_by_index([2], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["accordion 3 voice"],
)

# violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
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
        strings=[
            "flaut. moltiss. + ponticello",
            "2/3 scratch, tasto",
        ],
        selector=trinton.select_leaves_by_index([0, 45, 45, -1], pitched=True),
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
        command="",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"ffff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 45], pitched=True),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=1)),
    pitch.string_pitching_1(
        fundamental="bf",
        sieve=library.sieve_3,
        index=12,
        selector=trinton.pleaves(),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([1, 3], pitched=True),
    ),
    library.string_finger_pressures_1(
        index=6, seed=4, p=0.39, selector=trinton.pleaves()
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic('"pppp"'),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([3, 4, 5], pitched=True, grace=False),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-up",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 3, 3, -1],
            pitched=True,
        ),
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
        strings=[r"norm.", "spz."],
        selector=trinton.select_leaves_by_index(
            [0, 3, 3, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10.7,
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
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([-3, 2, 16, 1], 16)),
    evans.PitchHandler(["g", "a", "gs"]),
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
            0,
            0,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="violin graces 1",
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g", "aqf", "gs", "d'", "ef'"], selector=trinton.pleaves(grace=True)
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([1, 3], grace=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True)
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([1, 2, 4], pitched=True, grace=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.pleaves(exclude=[0], grace=True),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("downbow")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.StartSlur(),
            trinton.make_custom_dynamic("ffmf"),
            abjad.Glissando(zero_padding=True),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 1, 1, -1, -1], pitched=True, grace=False
        ),
    ),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.tuplet([(1, 1)])),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.tuplet([(-1, 3, -1)])),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    evans.PitchHandler(["bqs"]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 0, 8]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, 1]),
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
    voice=score["violin voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=1)),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.tuplet([(1, 1)])),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
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
        selector=trinton.logical_ties(
            exclude=[47], first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([94, 95], pitched=True),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
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
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                4,
                17,
                18,
                20,
                21,
                32,
                33,
                36,
                39,
                40,
                45,
                47,
                48,
                49,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.BeamCount(left=2, right=1), abjad.BeamCount(left=1, right=2)]
        ),
        selector=trinton.select_leaves_by_index([10, 11], pitched=True, grace=False),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 4, 42, 56], pitched=True, grace=False
        ),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=1)),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(
        evans.RhythmHandler(evans.tuplet([(-1, 1, -1, 2)])),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
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
        selector=trinton.logical_ties(
            exclude=[1, 2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3, 4, 5], pitched=True),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
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
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [2, 3, 4, 5], pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + pont.",
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

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted quarter",
                tempo=48,
                padding=15,
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
#     lambda _: trinton.select_target(_, (7, 9)),
#     trinton.spanner_command(
#         strings=[
#             r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
#             trinton.return_metronome_markup(
#                 note_value="eighth",
#                 tempo=60,
#                 padding=0,
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Note("c'4."),
#                     right_rhythm=abjad.Note("c'8"),
#                 ),
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=13.5,
#         tweaks=None,
#         right_padding=-7.5,
#         direction=None,
#         full_string=True,
#         command="",
#         tag=None,
#     ),
#     voice=score["Global Context"],
# )

# breaking

for measure in [6, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )
#
# for measure in [1, 3, 5, 8]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
for measure in [
    1,
    2,
    4,
    5,
    7,
    8,
    10,
    11,
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
    3,
    9,
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
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 18.5 14.5 14 1.5 12.5 18)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/02",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

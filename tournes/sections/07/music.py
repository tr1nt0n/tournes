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

section_ts = ts.return_system_2_ts(measure_amount=6, index=-3)

section_ts.extend(ts.return_system_5_ts(measure_amount=3, index=7))

section_ts.append((1, 4))

score = library.tournes_score(section_ts)

# flute music

for measure, map_rotation in zip([1, 2, 3], [2, 10, 3]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=map_rotation)),
        voice=score["flute voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(
        [
            _.number
            for _ in pitch.return_sieve_transposition_pitch_list(
                first_pitch=abjad.NamedPitch("d"),
                interval_list=pitch.return_interval_list_from_sieve(
                    sieve=library.sieve_7,
                ),
                index=1,
            )
        ]
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [2, 6, 10, 11, -1], pitched=True, grace=False
        ),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([2, 3, 4], pitched=True, grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(r"\flute-parallel"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-one-hundred-thirty-five-degrees",
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index([1, 4], pitched=True, grace=False),
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
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index([5, 9], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=4.5,
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
            r"\flute-forty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [10, -2, -2, -1], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=2,
        end_hook_style="dashed-line-with-hook",
        tag=None,
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
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    -1,
                    1,
                ),
                (-2, 1, -1, 1),
                (-1, 1, 1),
            ]
        )
    ),
    evans.PitchHandler(["bf'", "e''", "fs''", "a''", "c'''", "ef'''"]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "be" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([2, 3, 4, 5], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccatissimo")], selector=trinton.pleaves()
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-ninety-degrees",
            r"\flute-one-hundred-thirty-five-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2, 2, -1], pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=True,
        end_hook_right_padding=2,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 1, 3], pitched=True),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
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
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, 0)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"whistle",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
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
    voice=score["flute voice"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.RhythmHandler(evans.talea([4, 1, -5, 23, 1, -1, 38, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["gf", "fqs", "e''", "ds''", "f", "eqs"]),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        zero_padding=True,
        slur=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
        zero_padding=True,
        slur=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([4, 5], pitched=True),
        zero_padding=True,
        slur=True,
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
        selector=trinton.select_leaves_by_index([3, -3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [2, 2, 3, 5, 6, 6, 8, -1],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 air",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
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
    trinton.hooked_spanner_command(
        string=r"1/2 air",
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
        padding=7.5,
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
        strings=[r"""\markup { \hspace #2 { "" } }""", r"""\markup  { "4/5 air" } """],
        selector=trinton.select_leaves_by_index([3, 5], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(evans.talea([23, 1, -1, 38, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["d'", "cs'", "ef,", "dqs,"]),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        zero_padding=True,
        slur=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
        zero_padding=True,
        slur=True,
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
        selector=trinton.select_leaves_by_index([1, -3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 1, 3, 4, 4, 6, -1],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([-1], grace=False), invisible=True
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 air",
        selector=trinton.select_leaves_by_index([0, 1]),
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
    trinton.spanner_command(
        strings=[r"""\markup { \hspace #2 { "" } }""", r"""\markup { "4/5 air" } """],
        selector=trinton.select_leaves_by_index(
            [1, -1],
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=2,
        command="One",
        tag=None,
    ),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[2, 4, 1, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["g,", "f,", "e,", "d,", "c,"]]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 2, 3, 4, 7, 9, 10, 11, 12, 13], grace=False
        ),
    ),
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

for measure in [1, 2, 3]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rhythm.rhythm_2(stage=measure)),
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
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, 0)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
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
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        rhythm.rhythm_4(
            stage=2,
            rest_size=[
                4,
                4,
                3,
                2,
                1,
                1,
                1,
                1,
                1,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0], pitched=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            "bqs",
            "b",
            "cs'",
            "fqs'",
            "gqf'",
            "fs''",
            "aqf''",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_leaves_by_index([9, 10, 13, 14]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"pizz.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
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
    trinton.hooked_spanner_command(
        string=r"ponticello possibile",
        selector=trinton.select_leaves_by_index(
            [2, 6],
        ),
        padding=8,
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
    trinton.spanner_command(
        strings=["", "molto tasto"],
        selector=trinton.select_leaves_by_index(
            [6, 13, 13, -1],
        ),
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
        end_hook_right_padding=2,
        command="Two",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 2, 4], pitched=True),
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.call_rmaker(
        rmaker=rmakers.rewrite_rest_filled,
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.trivialize, selector=trinton.select_tuplets_by_index([-1])
    ),
    trinton.call_rmaker(
        rmaker=rmakers.extract_trivial, selector=trinton.select_tuplets_by_index([-1])
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
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
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, 0)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
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
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(
        rhythm.rhythm_4(stage=2, rest_size=[5, 5, 4, 3, 2, 1, 1, 1, 1])
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0], pitched=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            "eqs,",
            "f,",
            "gqf,",
            "fs,",
            "bqs,",
            "c",
            "cqs",
            "cqf'",
            "d'",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([13, 14, 17, 18]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2, 3], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"pizz.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.2,
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
    trinton.hooked_spanner_command(
        string=r"ponticello possibile",
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
        padding=6.7,
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
    trinton.spanner_command(
        strings=["", "molto tasto"],
        selector=trinton.select_leaves_by_index(
            [3, 6, 6, -1],
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=6.7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
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
        attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 3, 6], pitched=True),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-2, -1])),
    trinton.call_rmaker(
        rmaker=rmakers.rewrite_rest_filled,
        selector=trinton.select_tuplets_by_index([-2, -1]),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.trivialize, selector=trinton.select_tuplets_by_index([-2, -1])
    ),
    trinton.call_rmaker(
        rmaker=rmakers.extract_trivial,
        selector=trinton.select_tuplets_by_index([-2, -1]),
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["g'", "e'", "a'", "e'", "f'", "g'", "e'", "g'", "a'"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_in_tuplet(cycle_leaves=True, pairs=[(0, 0)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + ponticello moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
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

# globals


# fermate

trinton.fermata_measures(
    score=score,
    measures=[10],
    fermata="middle-fermata",
    voice_names=library.all_voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-5,
    extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.spanner_command(
        strings=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                padding=0,
                metric_modulation=None,
                site="before",
                hspace=None,
                string_only=True,
            ),
            trinton.return_metronome_markup(
                note_value="eighth",
                tempo=72,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'4"),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=17.5,
        tweaks=None,
        right_padding=-8,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                padding=0,
                metric_modulation=None,
                site="before",
                hspace=None,
                string_only=True,
            ),
            trinton.return_metronome_markup(
                note_value="eighth",
                tempo=72,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'4"),
                    right_rhythm=abjad.Note("c'8"),
                ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=6,
        tweaks=None,
        right_padding=-8,
        direction=None,
        full_string=True,
        command="",
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                padding=17.5,
                site="after",
                hspace=0,
                string_only=False,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'8."),
                    right_rhythm=abjad.Note("c'4"),
                ),
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
                padding=7,
                site="after",
                hspace=0,
                string_only=False,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'8."),
                    right_rhythm=abjad.Note("c'4"),
                ),
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (13, 14)),
#     trinton.spanner_command(
#         strings=[
#             r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Accel." } """,
#             trinton.return_metronome_markup(
#                 note_value="eighth",
#                 tempo=84,
#                 padding=0,
#                 metric_modulation=None,
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=10,
#         tweaks=None,
#         right_padding=0,
#         direction=None,
#         full_string=True,
#         command="",
#         tag=None,
#     ),
#     voice=score["Global Context"],
# )

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

# for measure in [
#     1,
#     5,
#     9,
#     11,
#     15,
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
#     10,
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
for measure in [
    1,
    2,
    4,
    5,
    6,
    8,
    9,
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
    7,
    10,
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
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 15 10 16.5 4 16 15)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

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

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/tournes/tournes/sections/07",
    build_path="/Users/trintonprater/scores/tournes/tournes/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

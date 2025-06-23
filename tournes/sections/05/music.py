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

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([-6, 1, -6, 1, -9, 1, -1000], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            5,
            3,
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
            1,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="flute graces 1",
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "bf'",
            "eqs'",
            "f'",
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "eqs'",
            "d'",
            "fs'",
            "dqf'",
            "ef'",
            "f'",
            "ef'",
            "cqs'",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([0, 5], grace=True, pitched=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            grace=True,
            pitched=True,
        )
    ),
    trinton.vertical_accidentals(
        selector=trinton.pleaves(
            grace=True,
            exclude=[
                0,
                1,
            ],
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccatissimo"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([1, 2], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "pe" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("|>"),
            abjad.Dynamic("p"),
            abjad.bundle(abjad.Dynamic("f"), r"- \tweak X-offset -1"),
            abjad.StartHairpin("|>"),
            abjad.bundle(abjad.Dynamic("p"), r"- \tweak X-offset 0.5"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                5,
                5,
                7,
            ],
            first=True,
            pitched=True,
            grace=True,
        ),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (1, 1, 1, 1, 1), (-1,), (2, 1, 3, 1), (1, 1, 1, 1, 1)])
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            4,
            3,
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
            1,
            1,
            0,
        ],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="flute graces 2",
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "c'",
            "f'",
            "bqf'",
            "e'",
            "dqf'",
            "e''",
            "gqf'",
            "af'",
            "a''",
            "af'''",
            "af'''",
            "af'''",
            "af'''",
            "af'''",
            "af'''",
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "af'",
            "bf'",
            "gf''",
            "f''",
            "af'''",
            "a'''",
            "g'''",
            "af'''",
            "cqf''''",
            "b'''",
            "f'''",
            "bf''",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                8,
                9,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([0, 4, 7], grace=True, pitched=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 4, 7], grace=True, pitched=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([7], pitched=True, grace=False),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 5, 6, 8, 9, 11], pitched=True, grace=True
        )
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([2, 3, 5, 6], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccatissimo"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 4, 6, 8, 9, 10, 13], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index(
            [2, 7, 9, 10, 11, 12, 13], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=3, right=0),
        ],
        selector=trinton.select_leaves_by_index([6, 8], pitched=True, grace=False),
    ),
    trinton.manual_beam_positions(
        positions=(-9, -8),
        selector=trinton.select_leaves_by_index([5, 8], pitched=True, grace=False),
    ),
    trinton.manual_beam_positions(
        positions=(-5, -5),
        selector=trinton.select_leaves_by_index([9, 13], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "pe" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [1, 4, 9, 10, 13], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2, 7, 8, 11, 12], pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"\flute-forty-five-degrees",
            r"\flute-ninety-degrees",
        ],
        selector=trinton.select_leaves_by_index(
            [5, 6],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 4, 5, 6, 7, 9], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 1, 2, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1, 1, 1), (-1,), (2, -2, 2, -4, 2)])
    ),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            5,
            3,
            4,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 128),
        boolean_vector=[0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="flute graces 3",
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "af'''",
            "af'''",
            "gf'''",
            "af'''",
            "af'''",
            "af'''",
            "gf'''",
            "af'''",
            "af'''",
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "af'''",
            "f'''",
            "eqf'''",
            "e'''",
            "dqf'''",
            "af'''",
            "b'''",
            "aqs'''",
            "gf'''",
            "g'''",
            "d'''",
            "dqf'''",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\revert Voice.Stem.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([0, 5, 8], grace=True, pitched=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0, 5, 8], grace=True, pitched=True)
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index(
            [2, 3, 4, 7, 9, 10, 11], pitched=True, grace=True
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccatissimo"),
        ],
        selector=trinton.pleaves(exclude=[1, 5, 6], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "pe" } }"""
            ),
        ],
        selector=trinton.pleaves(exclude=[1, 5, 6], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 5, 6], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([-2], pitched=True, grace=False),
    ),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((7, 1, 4)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    trinton.hooked_spanner_command(
        string=r"\flute-one-hundred-thirty-five-degrees",
        selector=trinton.select_leaves_by_index([9, -1], pitched=True, grace=False),
        padding=12.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["flute voice"],
)

for measure, map_rotation in zip([10, 11, 12], [0, 7, 11]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=map_rotation)),
        voice=score["flute voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.PitchHandler(
        [
            ["gqf'", "af''"],
            "af'",
            ["gqf'", "af''"],
            "f'",
            ["gqf'", "af''"],
            "df'",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r'\markup \upright { \hspace #-1.8 { "( M )" } }'),
                r"- \tweak font-size 2",
            ),
        ],
        selector=trinton.patterned_leaf_index_selector(
            [0], 2, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            abjad.Articulation("espressivo"),
            abjad.bundle(
                abjad.StemTremolo(128),
                r"- \tweak stencil #ly:text-interface::print",
                r"""- \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }""",
            ),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                8,
                9,
                13,
                14,
                18,
            ],
            pitched=True,
            grace=False,
        ),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([13, 1, 2, 2, 2, 2, 2], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4, 5, 6], pitched=True, grace=False
        ),
        slash=True,
    ),
    evans.PitchHandler(
        [
            "g'",
            "fs'",
            "af'",
            "g'",
            "af'",
            "g'",
            "af'",
            "g'",
            "af'",
            "g'",
            "af'",
            "g'",
        ]
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        slur=True,
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Glissando(zero_padding=True),
            abjad.StartSlur(),
        ],
        selector=trinton.logical_ties(
            exclude=[0, 1], last=True, grace=False, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopSlur(),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.StartBeam(), abjad.StopBeam()],
        ),
        selector=trinton.select_leaves_by_index(
            [1, 2, 3, -1], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Stem.direction = #DOWN", site="before"
            ),
        ],
        selector=trinton.logical_ties(
            exclude=[0, 1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            "norm.",
            "overblow",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=-4,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            """\markup { \hspace #-1.5 { "1/2 o.b." } }""",
            """\markup { "norm." }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0.5,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            """\markup { \hspace #-1.5 { "1/2 o.b." } }""",
            """\markup { "norm." }""",
        ],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0.5,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            """\markup { \hspace #-1.5 { "1/2 o.b." } }""",
            """\markup { "norm." }""",
        ],
        selector=trinton.select_logical_ties_by_index([6, 7], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0.5,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            """\markup { \hspace #-1.5 { "1/2 o.b." } }""",
            """\markup { "norm." }""",
        ],
        selector=trinton.select_logical_ties_by_index([8, 9], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0.5,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            """\markup { \hspace #-1.5 { "1/2 o.b." } }""",
            """\markup { "norm." }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [10, 11], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0.5,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"throat-scream",
        selector=trinton.select_logical_ties_by_index([6, 9], first=True, pitched=True),
        padding=10,
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
    voice=score["bassclarinet voice"],
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
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.Dynamic('"ffff"'),
                abjad.StartHairpin(">o"),
                abjad.StartHairpin("o<"),
            ],
        ),
        selector=trinton.select_leaves_by_index(
            [0, 0, 13, 27, 27, 41, 55], pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            "1/2 overblow",
            "1/2 air",
            "1/2 overblow",
            "1/2 air",
            "1/2 overblow",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                13,
                13,
                27,
                27,
                41,
                41,
                55,
            ],
            pitched=True,
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
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.talea([-2, 7, 1, -2, 5, 1, -3, 9, 1, -2, 6, 1, -1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "af'",
            "gqs'",
            "af'",
            "g'",
            "g'",
            "fs'",
            "af'",
            "gqs'",
        ]
    ),
    trinton.continuous_glissando(
        zero_padding=True, slur=True, selector=trinton.pleaves()
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 5, 7, 9, 10, 11, 13, 15, 16, 17, 18, 19, 20, 21],
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.patterned_tie_index_selector(
            [1],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.spanner_command(
        strings=["overblow", "1/4 air"],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["overblow", "1/4 air"],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["overblow", "1/4 air"],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["overblow", "1/4 air"],
        selector=trinton.select_logical_ties_by_index([6, 7], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["overblow", "1/4 air"],
        selector=trinton.select_logical_ties_by_index([8, 9], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea([47, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["g,", "fs,"]),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), slur=True, zero_padding=True
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
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea([100], 16)),
    evans.PitchHandler(["fs,"]),
    voice=score["accordion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.talea([6, 1, -2, 8, 1, -3, 7, 1, -2], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        slash=True,
    ),
    evans.PitchHandler(
        ["c'", "b", "d'", "cs'", "c'", "bqs", "f'", "e'", "fs'", "eqs'"]
    ),
    trinton.continuous_glissando(
        zero_padding=True, slur=True, selector=trinton.pleaves()
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
                4,
                5,
                7,
                9,
                10,
                11,
                13,
                16,
                18,
                20,
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.patterned_tie_index_selector(
            [1],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0],
            2,
            first=True,
            pitched=True,
        ),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(rhythm.rhythm_4(stage=2, rest_size=[5, 4, 2, 3])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            [
                "a,",
                "b,",
                "c",
                "d",
            ],
            [
                "a,",
                "b,",
                "c",
                "d",
            ],
            [
                "f,",
                "g,",
                "a,",
                "b,",
            ],
            ["d,", "e,", "f,", "g,"],
            [
                "b,,",
                "c,",
                "d,",
                "e,",
            ],
            [
                "g,,",
                "a,,",
                "b,,",
                "c,",
            ],
            [
                "e,,",
                "f,,",
                "g,,",
                "a,,",
            ],
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
        ]
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
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(notehead="cluster"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [2, 3, 4, 5, 6, 7, 9, 12, 13, 14, 15, 16],
        ),
    ),
    voice=score["accordion 3 voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        evans.talea([-12, 1, -6, 12, 1, -1, 1, -1, 1, -3, 8, 1, -100], 16)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.OnBeatGraceHandler(
        number_of_attacks=[
            6,
        ],
        durations=[
            1,
        ],
        attack_number_forget=False,
        durations_forget=False,
        font_size=(-4),
        forced_multiplier=None,
        leaf_duration=(1, 128),
        boolean_vector=[0, 0, 0, 0, 1, 0, 0, 0, 0],
        vector_forget=False,
        attack_count=-1,
        durations_count=-1,
        vector_count=-1,
        name="violin graces 1",
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d'", "bf", "gqs", "gqs", "a'", "fs'", "eqf'"],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["a'", "bf'", "aqf'", "g'", "fs'", "dqs'"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True)
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True)
    ),
    trinton.vertical_accidentals(selector=trinton.pleaves(grace=True, exclude=[0])),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [1, 2], pitched=True, grace=False
        ),
        zero_padding=True,
        slur=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], pitched=True, grace=False
        ),
        zero_padding=True,
        slur=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.bundle(abjad.Articulation("snappizzicato"), r"- \tweak font-size #3"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
            ],
            first=True,
            pitched=True,
            grace=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([3, 4], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup { \hspace #-3 { \center-column { \line { "pizz." } \line { "pont. poss." } } } }"""
                ),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
                r"""- \tweak font-size 0""",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { \hspace #-1 { "arco" } }"""),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
                r"""- \tweak font-size 0""",
            ),
            abjad.Articulation("downbow"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
            grace=True,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.pleaves(exclude=[0], grace=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.Articulation(">"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 1, 3, 3, 5, 6, 8, 8, 8, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("|>"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=True),
    ),
    trinton.spanner_command(
        strings=["arco, norm.", "1/2 scratch", "norm."],
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
                3,
                5,
            ],
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
    trinton.spanner_command(
        strings=["3/4 scratch", "1/4 scratch"],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=6,
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
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    evans.RhythmHandler(evans.talea([-3, 8, 1, -3, 5, 1, -2, 3, 1, -3, 7, 1, -1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        ["b", "gqs", "d'", "c'", "df'", "aqf", "gf'", "f'", "b'", "aqf'"]
    ),
    trinton.continuous_glissando(
        zero_padding=True, slur=True, selector=trinton.pleaves()
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                3,
                4,
                5,
                6,
                8,
                11,
                12,
                14,
                15,
                16,
                18,
                20,
                21,
                22,
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.patterned_tie_index_selector(
            [1],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0],
            2,
            first=True,
            pitched=True,
        ),
    ),
    trinton.spanner_command(
        strings=["1/2 scratch", "flaut."],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["1/2 scratch", "flaut."],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[r'\markup { \hspace #-3 { "1/2 scratch" } }', r"\markup { flaut. }"],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["1/2 scratch", "flaut."],
        selector=trinton.select_logical_ties_by_index([6, 7], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
    ),
    trinton.spanner_command(
        strings=["1/2 scratch", "flaut."],
        selector=trinton.select_logical_ties_by_index([8, 9], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"- \tweak font-size #0",
        ],
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=1,
        command="",
        tag=None,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=2)),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(rhythm.rhythm_2(stage=3)),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1, -2])),
    trinton.call_rmaker(
        rmaker=rmakers.trivialize, selector=trinton.select_tuplets_by_index([0, -1, -2])
    ),
    trinton.call_rmaker(
        rmaker=rmakers.rewrite_rest_filled,
        selector=trinton.select_tuplets_by_index([0, -1, -2]),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.extract_trivial,
        selector=trinton.select_tuplets_by_index([0, -1, -2]),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
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
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                11,
                18,
                24,
                24,
                38,
                51,
                52,
                66,
                79,
                80,
                94,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut.",
        selector=trinton.select_leaves_by_index([0, 18], pitched=True),
        padding=8,
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
        strings=[
            "",
            "2/3 scratch",
            "flaut.",
            "2/3 scratch",
            "flaut.",
            "2/3 scratch",
            "flaut.",
            "2/3 scratch",
        ],
        selector=trinton.select_leaves_by_index(
            [
                18,
                24,
                24,
                38,
                38,
                51,
                51,
                66,
                66,
                79,
                79,
                94,
                94,
                -1,
            ],
            pitched=True,
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
        end_hook=False,
        end_hook_right_padding=1,
        command="One",
        tag=None,
    ),
    voice=score["cello voice"],
)

for measure, map_rotation in zip([10, 11, 12], [11, 24, 1]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rhythm.rhythm_1(stage=1, map_rotation=map_rotation)),
        voice=score["cello voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.PitchHandler(["e,", "fqs,"]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"flaut. + tasto moltiss.",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10.5,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                6,
                10,
                15,
                19,
                20,
                23,
            ],
            pitched=True,
            grace=False,
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
                note_value="quarter",
                tempo=54,
                padding=14.5,
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
                note_value="quarter",
                tempo=54,
                padding=3.5,
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
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=162,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=5,
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
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=72,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("9:8", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=5,
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
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=54,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=5,
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
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="dotted half",
                tempo=54,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'4"),
                ),
                padding=7.5,
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
    10,
    12,
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
    8,
    11,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3.5 22 11.5 13.5 2 17 19.5)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-3 24.5 11 7 2 14 19.5)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3.5 21 16 9 2 10 14)))",
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8, 9)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/40)",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/20)",
#                 site="before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         tag=abjad.Tag("+PARTS"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (9,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"proportionalNotationDuration = #(ly:make-moment 1 20)",
#                 site="absolute_before"
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+PARTS")
#     ),
#     voice=score["Global Context"]
# )

# extract parts

trinton.extract_parts(score=score)

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

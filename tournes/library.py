import abjad
import baca
import evans
import trinton
import itertools
import random
import tournes

# score


def tournes_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Flute(),
            abjad.BassClarinet(),
            abjad.Accordion(),
            abjad.Accordion(),
            abjad.Accordion(),
            abjad.Violin(),
            abjad.Cello(),
        ],
        groups=[
            2,
            3,
            2,
        ],
        staff_types=[
            [
                "Staff",
                "Staff",
            ],
            [
                "Staff",
                "timeSignatureStaff",
                "Staff",
            ],
            ["Staff", "Staff"],
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# immutables

sieve_1a = eval("""abjad.index([0, 1, 7], 8)""")
sieve_1b = eval("""abjad.index([1, 3], 5)""")
sieve_1 = eval("""sieve_1a & sieve_1b""")

sieve_2a = eval("""abjad.index([0, 1, 2], 8)""")
sieve_2b = eval("""abjad.index([0], 5)""")
sieve_2 = eval("""sieve_2a & sieve_2b""")

sieve_3 = eval("""abjad.index([3], 8)""")

sieve_4 = eval("""abjad.index([4], 8)""")

sieve_5a = eval("""abjad.index([5, 6], 8)""")
sieve_5b = eval("""abjad.index([2, 3, 4], 5)""")
sieve_5 = eval("""sieve_5a & sieve_5b""")

sieve_6a = eval("""abjad.index([1], 8)""")
sieve_6b = eval("""abjad.index([2], 5)""")
sieve_6 = eval("""sieve_6a & sieve_6b""")

sieve_7a = eval("""abjad.index([1], 8)""")
sieve_7b = eval("""abjad.index([2], 5)""")
sieve_7 = eval("""sieve_7a & sieve_7b""")

final_sieve = eval(
    """sieve_1 | sieve_2 | sieve_3 | sieve_4 | sieve_5 | sieve_6 | sieve_7"""
)

first_voice_names = eval(
    """[
        "flute voice",
        "bassclarinet voice",
        "accordion 1 voice",
        "violin voice",
        "cello voice"
    ]"""
)

all_voice_names = eval(
    """[
        "flute voice",
        "bassclarinet voice",
        "accordion 1 voice",
        "accordion 3 voice",
        "violin voice",
        "cello voice"
    ]"""
)

flute_multiphonic = r"""\markup
    \override #'(layer . 20) {
        \hspace #-4 {
        \general-align #Y #DOWN {
            \epsfile #Y #16 #"flute_multiphonic.eps"
        }
    }
}"""

# notation tools


def clean_rhythm_1_bursts(selector=trinton.pleaves()):
    def return_clean_rhythm_1_bursts(selections):
        selections = selector(selections)

        slur_leaves = []

        for leaf in abjad.select.leaves(selections, grace=False):
            if isinstance(abjad.get.parentage(leaf).parent, abjad.Voice):
                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\once \override Stem.stencil = ##f",
                            r"\once \override Flag.stencil = ##f",
                        ],
                        site="before",
                    ),
                    leaf,
                )
                abjad.attach(abjad.Articulation(">"), leaf, direction=abjad.DOWN)

            else:
                slur_leaves.append(leaf)

        contiguous_leaf_groups = abjad.select.group_by_contiguity(slur_leaves)
        for group in contiguous_leaf_groups:
            if len(group) > 1:
                abjad.slur(group)

        graces = abjad.select.leaves(selections, grace=True)

        contiguous_grace_groups = abjad.select.group_by_contiguity(graces)

        for group in contiguous_grace_groups:
            first_leaf = abjad.select.leaf(group, 0)
            abjad.override(first_leaf).NoteHead.transparent = True
            abjad.attach(
                abjad.LilyPondLiteral(
                    [
                        r"\once \override NoteHead.no-ledgers = ##t",
                        r"\once \override Accidental.stencil = ##f",
                    ],
                    site="before",
                ),
                first_leaf,
            )

    return return_clean_rhythm_1_bursts


def string_finger_pressures_1(index=0, seed=3, p=0.5, selector=trinton.pleaves()):
    def return_string_finger_pressures_1(selections):
        selections = selector(selections)
        random.seed(seed)

        for leaf, num in zip(
            selections, [random.random() for _ in range(0, len(selections))]
        ):
            if leaf.written_pitch == abjad.NamedPitch(
                "g"
            ) or leaf.written_pitch == abjad.NamedPitch("c,"):
                pass
            else:
                if num > p:
                    abjad.attach(
                        abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                        leaf,
                    )
                else:
                    if p - num >= 0.3:
                        pass
                    else:
                        abjad.tweak(leaf.note_head, r"\tweak style #'harmonic")

    return return_string_finger_pressures_1


def clarinet_articulations_1(
    finger_number_index=0, selector=trinton.logical_ties(first=True, pitched=True)
):
    def do_clarinet_articulations_1(selections):
        selections = selector(selections)

        finger_numbers = trinton.random_walk(chord=[1, 3, 2, 3], seed=6)

        finger_numbers = trinton.rotated_sequence(
            finger_numbers, finger_number_index % len(finger_numbers)
        )

        finger_number_counter = 0

        for i, leaf in enumerate(selections):
            previous_leaf = selections[i - 1]
            next_leaf = selections[(i + 1) % len(selections)]

            if (
                previous_leaf.written_pitch == leaf.written_pitch
                or leaf.written_pitch == next_leaf.written_pitch
            ):
                if not isinstance(abjad.get.parentage(leaf).parent, abjad.Voice):
                    color_fingering = abjad.Markup(
                        rf"""\markup {{ \override #'(font-size . 0.75) {{ \circle {{ {finger_numbers[i % len(finger_numbers)]} }} }} }}"""
                    )
                    finger_number_counter += 1
                    abjad.attach(color_fingering, leaf, direction=abjad.UP)

    return do_clarinet_articulations_1


# spanners


def graphic_bow_pressure_spanner(
    selector=trinton.logical_ties(),
    peaks=[0, 1, 4, 2],
    peak_direction=abjad.DOWN,
    anchor_point_step_sizes=[1, 0.5, 1, 0.25],  # must be greater than 1
    divisions=[4, 5],
    counts=[1, 3, 1, 2],
    cyclic=True,
    left_broken_text=None,
    left_text=None,
    right_padding=None,
    right_text=None,
    padding=2,
    forget=False,
):
    if peak_direction == abjad.UP:
        peaks = [0 - _ for _ in peaks]
    cyc_peaks = evans.CyclicList(peaks, forget=forget)
    if divisions is None:
        divisions = [len(peaks)]
    cyc_divisions = evans.CyclicList(divisions, forget=forget)
    cyc_anchor_points = evans.CyclicList(anchor_point_step_sizes, forget=forget)

    def returned_function(argument, counts=counts):
        selections = selector(argument)
        ties = abjad.select.logical_ties(selections, pitched=True)
        if counts is None:
            counts = [len(ties)]
        groups = abjad.select.partition_by_counts(
            ties, counts, cyclic=cyclic, overhang=cyclic
        )
        for group in groups:
            final = abjad.select.leaf(group, -1)
            # next_leaf = abjad.get.leaf(final, 1)
            group.append(final)
        for group in groups:
            current_divisions = cyc_divisions(r=1)[0]
            current_peaks = cyc_peaks(r=current_divisions)
            current_anchor_point_step_sizes = cyc_anchor_points(r=current_divisions - 1)
            normalized_step_sizes = evans.Sequence(
                current_anchor_point_step_sizes
            ).normalize_to_sum(1)
            summed_steps = abjad.math.cumulative_sums(normalized_step_sizes)
            zipped_peaks_and_positions = [_ for _ in zip(summed_steps, current_peaks)]
            pairs = str(tuple([f"({x} . {y})" for x, y in zipped_peaks_and_positions]))
            current_peaks = pairs.replace(",", "")
            current_peaks = current_peaks.replace("'", "")
            constructed_string = rf"\startBowSpan #'{current_peaks}"
            start_indicator = abjad.StartTextSpan(
                command=constructed_string,
                left_broken_text=left_broken_text,
                left_text=left_text,
                right_padding=right_padding,
                right_text=right_text,
            )
            bundle = abjad.bundle(
                start_indicator,
                abjad.Tweak(rf"- \tweak padding {padding}"),
            )
            stop_indicator = abjad.StopTextSpan(
                command=r"\stopBowSpan",
            )
            abjad.attach(bundle, abjad.select.leaf(group, 0))
            abjad.attach(stop_indicator, abjad.select.leaf(group, -1))

    return returned_function


# selectors


def sieve_selector(
    sieve=final_sieve, first=False, last=False, pitched=None, grace=None, exclude=None
):
    def selector(argument):
        out = []
        index = []
        pattern = sieve
        ties = abjad.select.logical_ties(argument, pitched=pitched, grace=grace)
        if exclude is not None:
            ties = abjad.select.exclude(ties, exclude)
        for i in range(len(ties)):
            if pattern.matches_index(i, len(ties)):
                index.append(i)
        if first is True or last is True:
            if first is True:
                for i in index:
                    out.append(ties[i][0])
            if last is True:
                for i in index:
                    out.append(ties[i][-1])
        else:
            for i in index:
                out.append(ties[i])
        return out

    return selector


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Alto Flute }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Clarinet }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Accordion }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Violin }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Violoncello }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { a fl }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ cl }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ acc }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ vln }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ vc }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(first_voice_names, all_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(first_voice_names, all_short_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )


# record keeping

sieve_groupings = [
    [
        sieve_1a,
        sieve_1b,
    ],
    [
        sieve_2b,
        sieve_1,
    ],
    [
        sieve_2,
        sieve_2a,
    ],
    [sieve_3],
    [sieve_4],
    [
        sieve_5a,
        sieve_5,
    ],
    [
        sieve_5b,
        [sieve_6, sieve_6a, sieve_6b],
    ],
    [
        sieve_6,
        [sieve_7, sieve_7a, sieve_7b],
    ],
    [final_sieve],
]


def write_harmonic_map_txt(
    sieves=sieve_groupings,
):
    print("writing map . . .")
    text_record = open("harmonic_map.txt", "w")

    group_counter = 1

    for grouping in sieve_groupings:
        print(f"Section {group_counter} (", file=text_record)
        group_counter += 1
        for group in grouping:
            if not isinstance(group, list):
                intervals = tournes.pitch.return_interval_list_from_sieve(sieve=group)
                print(
                    f"\t{group}:\t{intervals}\t|\ttotal length:\t{len(intervals) + 1}",
                    file=text_record,
                )
            else:
                total_length = 0
                print(f"\t Nested Grouping (", file=text_record)
                for subgroup in group:
                    intervals = tournes.pitch.return_interval_list_from_sieve(
                        sieve=subgroup
                    )
                    print(f"\t{subgroup}:\t{intervals}", file=text_record)
                    total_length += len(intervals)
                print(f"\ttotal length:\t{total_length})", file=text_record)

        print("\t)", file=text_record)
    print("map written")


# beautification


def clean_time_signatures(score):
    for leaf in abjad.select.leaves(score["Global Context"]):
        if abjad.get.has_indicator(leaf, abjad.TimeSignature):
            time_signature = abjad.get.indicator(leaf, abjad.TimeSignature)
            numerator = time_signature.numerator
            denominator = time_signature.denominator

            if numerator > 9 or denominator > 9:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        [
                            r"\once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)"
                        ],
                        site="before",
                    ),
                    leaf,
                )

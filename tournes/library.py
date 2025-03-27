import abjad
import baca
import evans
import trinton
import itertools
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
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Flute }'
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
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { fl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ cl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ acc. }'
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

import abjad
import baca
import evans
import trinton
import itertools


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

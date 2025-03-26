import abjad
import baca
import evans
import trinton
import itertools


trinton.make_combination_tone_wav(
    file_name="test",
    combination_tones=[abjad.NamedPitch("ef,")],
    partial_pairs=[(1, 1), (2, 1), (3, 1), (5, 1), (7, 1), (9, 1), (11, 1)],
    sample_rate=44100,
)

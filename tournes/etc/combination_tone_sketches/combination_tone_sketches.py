import abjad
import baca
import evans
import trinton
import itertools
from tournes import library
from tournes import pitch

# section 1

# trinton.make_combination_tone_wav(
#     file_name="voice_1_section_1",
#     combination_tones=pitch.return_sieve_transposition_pitch_list(
#         first_pitch=abjad.NamedPitch("bf"),
#         interval_list=pitch.return_interval_list_from_sieve(sieve=library.sieve_1a),
#         index=0
#     ),
#     partial_pairs=[(1, 1)],
#     sample_rate=44100,
# )
#
# trinton.make_combination_tone_wav(
#     file_name="voice_2_section_1",
#     combination_tones=pitch.return_sieve_transposition_pitch_list(
#         first_pitch=abjad.NamedPitch("bf"),
#         interval_list=pitch.return_interval_list_from_sieve(sieve=library.sieve_1b),
#         index=0
#     ),
#     partial_pairs=[(1, 1)],
#     sample_rate=44100,
# )

# section 2

# trinton.make_combination_tone_wav(
#     file_name="voice_1_section_2",
#     combination_tones=pitch.return_sieve_transposition_pitch_list(
#         first_pitch=abjad.NamedPitch("bf"),
#         interval_list=pitch.return_interval_list_from_sieve(sieve=library.sieve_2b),
#         index=0
#     ),
#     partial_pairs=[(1, 1)],
#     sample_rate=44100,
# )
#
# trinton.make_combination_tone_wav(
#     file_name="voice_2_section_2",
#     combination_tones=pitch.return_sieve_transposition_pitch_list(
#         first_pitch=abjad.NamedPitch("bf"),
#         interval_list=pitch.return_interval_list_from_sieve(sieve=library.sieve_1),
#         index=0
#     ),
#     partial_pairs=[(1, 1)],
#     sample_rate=44100,
# )

# section 3

# trinton.make_combination_tone_wav(
#     file_name="voice_1_section_3",
#     combination_tones=pitch.return_sieve_transposition_pitch_list(
#         first_pitch=abjad.NamedPitch("bf"),
#         interval_list=pitch.return_interval_list_from_sieve(sieve=library.sieve_2),
#         index=0
#     ),
#     partial_pairs=[(1, 1)],
#     sample_rate=44100,
# )
#
# trinton.make_combination_tone_wav(
#     file_name="voice_2_section_3",
#     combination_tones=pitch.return_sieve_transposition_pitch_list(
#         first_pitch=abjad.NamedPitch("bf"),
#         interval_list=pitch.return_interval_list_from_sieve(sieve=library.sieve_2a),
#         index=0
#     ),
#     partial_pairs=[(1, 1)],
#     sample_rate=44100,
# )

# write harmonic map

library.write_harmonic_map_txt()

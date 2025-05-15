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

section_ts = ts.return_system_1_ts(index=0, measure_amount=9)

section_ts.extend([(3, 4) for _ in range(0, 8)])

section_ts.extend(ts.return_system_1_ts(index=9, measure_amount=1))

score = library.tournes_score(section_ts)

# flute music

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 9)),
#     evans.RhythmHandler(
#         rhythm.rhythm_1(stage=1, map_rotation=0)
#     ),
#     voice=score["flute voice"]
# )

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.return_metronome_markup(
                note_value="quarter",
                tempo=108,
                padding=11,
                metric_modulation=None,
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

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification


trinton.remove_redundant_time_signatures(score=score)
library.clean_time_signatures(score=score)

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

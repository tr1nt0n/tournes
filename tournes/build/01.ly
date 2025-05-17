    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 6/4
            s1 * 3/2
            ^ \markup {
            \hspace #0.5
              \raise #11 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #" 90 " 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            - \tweak padding #10
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation #2 #1 #3 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #3 #0 #2 #" 60 " 
              }
            }
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \stopTextSpan
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 7/12
            s1 * 7/12
            \time 5/8
            s1 * 5/8
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 8/12
            s1 * 2/3
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \hspace #-9
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #2 #" 90 " 
              }
            }
            \time 4/4
            s1 * 1
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 5/12
            s1 * 5/12
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 7/12
            s1 * 7/12
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                  %! trinton.on_beat_grace_container(2)
                                \my-hack-slash
                                \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Flute }
                                  %! +SCORE
                                \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { fl }
                                  %! trinton.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/4
                                [
                                (
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                )
                                ]
                            }
                            \context Voice = "flute voice Anchor"
                            {
                                  %! trinton.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                            }
                        >>
                        c'8
                        r2
                        r2.
                        s1 * 3/2
                        c'2
                        r8.
                        c'16
                        ~
                        c'8.
                        r16
                        r8
                        c'8
                        ~
                        c'4
                        ~
                        c'8
                        r8
                        r16
                        c'8.
                        ~
                        c'16
                        r8.
                        c'2
                        r4
                        s1 * 3/2
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 63/16
                            [
                            r32 * 115/32
                            r32 * 91/32
                            r32 * 35/16
                            c'32 * 29/16
                            (
                            c'32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 63/16
                            [
                            c'32 * 115/32
                            )
                            r32 * 91/32
                            c'32 * 35/16
                            (
                            c'32 * 29/16
                            )
                            r32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            r32 * 51/32
                            [
                            r32 * 51/32
                            c'32 * 27/16
                            (
                            c'32 * 29/16
                            c'32 * 65/32
                            c'32 * 73/32
                            )
                            r32 * 21/8
                            c'32 * 97/32
                            (
                            c'32 * 111/32
                            )
                            r32 * 31/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            r32 * 63/16
                            [
                            r32 * 115/32
                            c'32 * 91/32
                            (
                            c'32 * 35/16
                            c'32 * 29/16
                            c'32 * 13/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            r32 * 51/32
                            [
                            c'32 * 51/32
                            (
                            c'32 * 27/16
                            )
                            r32 * 29/16
                            r32 * 65/32
                            r32 * 73/32
                            c'32 * 21/8
                            (
                            c'32 * 97/32
                            c'32 * 111/32
                            c'32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            r32 * 63/16
                            [
                            c'32 * 115/32
                            (
                            c'32 * 91/32
                            )
                            r32 * 35/16
                            r32 * 29/16
                            r32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            (
                            c'32 * 51/32
                            c'32 * 27/16
                            c'32 * 29/16
                            )
                            r32 * 65/32
                            c'32 * 73/32
                            (
                            c'32 * 21/8
                            )
                            r32 * 97/32
                            r32 * 111/32
                            r32 * 31/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 15/4
                            [
                            (
                            c'32 * 21/8
                            c'32 * 13/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 12/13
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set fontSize = #-3
                            \override Staff.Dots.stencil = ##f
                            \my-hack-slash
                            \once \override NoteHead.transparent = ##t
                            c'32
                            [
                            (
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            )
                            ]
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'2..
                                        }
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak edge-height #'(0.7 . 0)
                        \times 14/17
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set fontSize = #-3
                            \override Staff.Dots.stencil = ##f
                            \my-hack-slash
                            \once \override NoteHead.transparent = ##t
                            c'32
                            [
                            (
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'32
                            \once \override TupletBracket.stencil = ##f
                            \once \override TupletNumber.stencil = ##f
                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \context Score = "Score"
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \context RhythmicStaff = "Rhythmic_Staff"
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            \tweak edge-height #'(0.7 . 0)
                                            \times 256/408
                                            {
                                                c'64..
                                            }
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \tweak edge-height #'(0.7 . 0)
                            \times 1/1
                            {
                                \tweak edge-height #'(0.7 . 0)
                                \times 32/51
                                {
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.transparent = ##t
                                    c'64..
                                    )
                                    ]
                                    \set fontSize = #-1
                                    \revert Staff.Dots.stencil
                                }
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                            \once \override Beam.grow-direction = #left
                            gs'32 * 51/32
                            [
                            (
                            a32 * 51/32
                            a32 * 27/16
                            ds'32 * 29/16
                            ds'32 * 65/32
                            ds'32 * 73/32
                            b32 * 21/8
                            b32 * 97/32
                            gs'32 * 111/32
                            b32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            b32 * 15/4
                            [
                            (
                            a32 * 115/32
                            a32 * 103/32
                            ds'32 * 11/4
                            ds'32 * 37/16
                            b32 * 2
                            a32 * 7/4
                            a32 * 13/8
                            gs'32 * 49/32
                            ds'32 * 47/32
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            ds'32 * 51/32
                            [
                            (
                            b32 * 51/32
                            a32 * 27/16
                            a32 * 29/16
                            a32 * 65/32
                            ds'32 * 73/32
                            gs'32 * 21/8
                            gs'32 * 97/32
                            ds'32 * 111/32
                            ds'32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            b32 * 15/4
                            [
                            (
                            gs'32 * 115/32
                            ds'32 * 103/32
                            ds'32 * 11/4
                            ds'32 * 37/16
                            a32 * 2
                            gs'32 * 7/4
                            b32 * 13/8
                            ds'32 * 49/32
                            ds'32 * 47/32
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        r2.
                        c'16
                        r8.
                        r2
                        s1 * 3/2
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            (
                            c'32 * 51/32
                            c'32 * 27/16
                            c'32 * 29/16
                            c'32 * 65/32
                            c'32 * 73/32
                            c'32 * 21/8
                            c'32 * 97/32
                            c'32 * 111/32
                            c'32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 15/4
                            [
                            (
                            c'32 * 115/32
                            c'32 * 103/32
                            c'32 * 11/4
                            c'32 * 37/16
                            c'32 * 2
                            c'32 * 7/4
                            c'32 * 13/8
                            c'32 * 49/32
                            c'32 * 47/32
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            (
                            c'32 * 51/32
                            c'32 * 27/16
                            c'32 * 29/16
                            c'32 * 65/32
                            c'32 * 73/32
                            c'32 * 21/8
                            c'32 * 97/32
                            c'32 * 111/32
                            c'32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 15/4
                            [
                            (
                            c'32 * 115/32
                            c'32 * 103/32
                            c'32 * 11/4
                            c'32 * 37/16
                            c'32 * 2
                            c'32 * 7/4
                            c'32 * 13/8
                            c'32 * 49/32
                            c'32 * 47/32
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c'8
                            [
                            c'8
                            c'8
                            c'8
                            c'8
                            ]
                        }
                        c'2.
                        c'2.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/11
                        {
                            c'8
                            [
                            c'8
                            c'8
                            c'8.
                            c'8
                            ]
                        }
                        c'2.
                        c'8
                        [
                        c'8.
                        c'8
                        c'8.
                        c'8
                        ]
                        s1 * 7/12
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        r8
                        c'8
                        ~
                        c'2
                        ~
                        c'2.
                        ~
                        c'1.
                        ~
                        c'2.
                        c'16
                        r8.
                        r2
                        s1 * 3/2
                        c'2.
                        ~
                        c'2
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ]
                        s1 * 3/2
                        c'1.
                        ~
                        c'1.
                        ~
                        c'2.
                        ~
                        c'2
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ]
                        s1 * 7/12
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
                \context timeSignatureStaff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 7/12
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
                \context Staff = "accordion 3 staff"
                {
                    \context Voice = "accordion 3 voice"
                    {
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 7/12
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "violin staff"
                {
                    \context Voice = "violin voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                        s1 * 3/2
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            r32 * 117/32
                            [
                            r32 * 99/32
                            r32 * 69/32
                            r32 * 13/8
                            c'32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            r32 * 43/32
                            [
                            c'32 * 49/32
                            (
                            c'32 * 17/8
                            )
                            r32 * 3
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            r32 * 51/32
                            r32 * 27/16
                            r32 * 29/16
                            r32 * 65/32
                            c'32 * 73/32
                            r32 * 21/8
                            c'32 * 97/32
                            (
                            c'32 * 111/32
                            )
                            r32 * 31/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            r32 * 51/32
                            r32 * 27/16
                            r32 * 29/16
                            r32 * 65/32
                            c'32 * 73/32
                            r32 * 21/8
                            c'32 * 97/32
                            (
                            c'32 * 111/32
                            )
                            r32 * 31/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 63/16
                            [
                            r32 * 115/32
                            r32 * 91/32
                            r32 * 35/16
                            r32 * 29/16
                            c'32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            r32 * 5/4
                            [
                            c'32 * 43/32
                            (
                            c'32 * 51/32
                            )
                            r32 * 65/32
                            c'32 * 85/32
                            r32 * 25/8
                            ]
                        }
                        \revert TupletNumber.text
                        r2.
                        r2
                        r8
                        c'8
                        c'8
                        r8
                        r2
                        r2.
                        r8
                        c'8
                        r2
                        r2
                        r8
                        c'8
                        c'2
                        c'2
                        c'2
                        c'4
                        c'4
                        c'4
                        \times 2/3
                        {
                            c'16
                            [
                            c'16.
                            c'16
                            c'16.
                            c'16
                            ]
                        }
                        \times 2/3
                        {
                            c'16
                            [
                            c'16.
                            c'16
                            c'16.
                            c'16
                            ]
                        }
                        c'4
                        c'4
                        c'4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/15
                        {
                            c'32
                            [
                            c'32.
                            c'32.
                            c'16
                            c'32.
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/13
                        {
                            c'32.
                            [
                            c'32.
                            c'32
                            c'32.
                            c'32
                            ]
                        }
                        \times 2/3
                        {
                            c'16
                            [
                            c'16.
                            c'16
                            c'16.
                            c'16
                            ]
                        }
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                  %! trinton.on_beat_grace_container(2)
                                \my-hack-slash
                                  %! trinton.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/4
                                [
                                (
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                )
                                ]
                            }
                            \context Voice = "violin voice Anchor"
                            {
                                  %! trinton.on_beat_grace_container(4)
                                \voiceTwo
                                c'4
                            }
                        >>
                        s1 * 7/12
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                        s1 * 3/2
                        s1 * 3/2
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            r32 * 51/32
                            r32 * 27/16
                            r32 * 29/16
                            c'32 * 65/32
                            (
                            c'32 * 73/32
                            c'32 * 21/8
                            c'32 * 97/32
                            )
                            r32 * 111/32
                            c'32 * 31/8
                            ]
                            (
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 117/32
                            )
                            [
                            r32 * 99/32
                            r32 * 69/32
                            r32 * 13/8
                            c'32 * 47/32
                            ]
                            (
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 43/32
                            [
                            c'32 * 49/32
                            c'32 * 17/8
                            )
                            r32 * 3
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            (
                            c'32 * 51/32
                            )
                            r32 * 27/16
                            r32 * 29/16
                            r32 * 65/32
                            c'32 * 73/32
                            (
                            c'32 * 21/8
                            c'32 * 97/32
                            c'32 * 111/32
                            )
                            r32 * 31/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 63/16
                            [
                            (
                            c'32 * 115/32
                            )
                            r32 * 91/32
                            r32 * 35/16
                            r32 * 29/16
                            c'32 * 13/8
                            ]
                            (
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            c'32 * 51/32
                            c'32 * 27/16
                            )
                            r32 * 29/16
                            c'32 * 65/32
                            (
                            c'32 * 73/32
                            )
                            r32 * 21/8
                            r32 * 97/32
                            r32 * 111/32
                            c'32 * 31/8
                            ]
                            (
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 63/16
                            [
                            c'32 * 115/32
                            c'32 * 91/32
                            )
                            r32 * 35/16
                            c'32 * 29/16
                            (
                            c'32 * 13/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            r32 * 5/4
                            [
                            r32 * 43/32
                            r32 * 51/32
                            c'32 * 65/32
                            (
                            c'32 * 85/32
                            c'32 * 25/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 15/4
                            )
                            [
                            r32 * 21/8
                            c'32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                  %! trinton.on_beat_grace_container(2)
                                \my-hack-slash
                                  %! trinton.on_beat_grace_container(3)
                                \voiceOne
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    c'
                                >16 * 1/4
                                [
                                (
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                c'16 * 1/4
                                )
                                ]
                            }
                            \context Voice = "cello voice Anchor"
                            {
                                  %! trinton.on_beat_grace_container(4)
                                \voiceTwo
                                c'8
                            }
                        >>
                        r8
                        r2
                        r2.
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set fontSize = #-3
                            \override Staff.Dots.stencil = ##f
                            \my-hack-slash
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            [
                            (
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            )
                            r32.
                            ]
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set fontSize = #-3
                            \override Staff.Dots.stencil = ##f
                            \my-hack-slash
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            [
                            (
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            )
                            r32.
                            ]
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set fontSize = #-3
                            \override Staff.Dots.stencil = ##f
                            \my-hack-slash
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            [
                            (
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            )
                            r32.
                            ]
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set fontSize = #-3
                            \override Staff.Dots.stencil = ##f
                            \my-hack-slash
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            [
                            (
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c'64.
                            )
                            r32.
                            ]
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            (
                            c'32 * 51/32
                            c'32 * 27/16
                            c'32 * 29/16
                            c'32 * 65/32
                            c'32 * 73/32
                            c'32 * 21/8
                            c'32 * 97/32
                            c'32 * 111/32
                            c'32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 15/4
                            [
                            (
                            c'32 * 115/32
                            c'32 * 103/32
                            c'32 * 11/4
                            c'32 * 37/16
                            c'32 * 2
                            c'32 * 7/4
                            c'32 * 13/8
                            c'32 * 49/32
                            c'32 * 47/32
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            c'32 * 51/32
                            [
                            (
                            c'32 * 51/32
                            c'32 * 27/16
                            c'32 * 29/16
                            c'32 * 65/32
                            c'32 * 73/32
                            c'32 * 21/8
                            c'32 * 97/32
                            c'32 * 111/32
                            c'32 * 31/8
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            c'32 * 15/4
                            [
                            (
                            c'32 * 115/32
                            c'32 * 103/32
                            c'32 * 11/4
                            c'32 * 37/16
                            c'32 * 2
                            c'32 * 7/4
                            c'32 * 13/8
                            c'32 * 49/32
                            c'32 * 47/32
                            )
                            ]
                        }
                        \revert TupletNumber.text
                        s1 * 7/12
                        s1 * 5/8
                        s1 * 2/3
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

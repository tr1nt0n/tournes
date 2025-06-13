    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 7/8
            s1 * 7/8
            ^ \markup {
            \hspace #1
              \raise #14.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #" 84 " 
              }
            }
              %! +SCORE
            \pageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 15 10 16.5 4 16 15)))
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1.5 14 8 10 2 14 22)))
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 7/12
            s1 * 7/12
            - \tweak padding #18
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #" 72 " 
              }
            }
            \startTextSpan
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \pageBreak
            \time 5/4
            s1 * 5/4
            \stopTextSpan
            \time 2/8
            s1 * 1/4
            \time 9/8
            s1 * 9/8
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 4/12
            s1 * 1/3
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
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Accel." } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #" 84 " 
              }
            }
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \stopTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
                        <gqf' af''>4
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        \ff
                        - \tweak font-size 2
                        - \tweak padding #7.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "( M )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        r8
                        r16
                        [
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        ~
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        r16
                        ]
                        r16
                        [
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        ~
                        <gqf' af''>8
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        ]
                        ~
                        <gqf' af''>8.
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        r16
                        r8.
                        [
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        ]
                        \>
                        ~
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        [
                        r16
                        <gqf' af''>8
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        ]
                        ~
                        <gqf' af''>8
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        r8
                        r16
                        <gqf' af''>8.
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        ~
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        [
                        r16
                        r16
                        <gqf' af''>16
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        - \espressivo
                        - \tenuto
                        \ppp
                        ]
                        ~
                        <gqf' af''>8.
                        - \tweak stencil #ly:text-interface::print
                        - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                        :32
                        \stopTextSpan
                        r16
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
                        \times 56/33
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            [
                            (
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "whistle" } \hspace #0.5 }
                            \startTextSpanOne
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            \ff
                            \stopTextSpanOne
                            - \tweak circled-tip ##t
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "whistle." }
                            \startTextSpanOne
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 1/2
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                        s1 * 7/8
                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Bass, Traffic Cone IN }
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/12
                        s1 * 1/2
                        r4
                        r8
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "3/4 overblow" } \hspace #0.5 }
                            \startTextSpanOne
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            \!
                            )
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
                                        ~
                                        c'32
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 30/27
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''64
                            \ff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            \!
                            )
                            r32
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'16.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/7
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'''64
                            \f
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            \!
                            )
                            r32
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 9/10
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''32
                            \mf
                            \stopTextSpanOne
                            [
                            (
                            - \tweak circled-tip ##t
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "1/3 air" }
                            - \tweak bound-details.right.padding 3
                            \startTextSpanOne
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            )
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        \times 2/3
                                        {
                                            c'2
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
                        \times 16/21
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''32
                            [
                            (
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        \clef "bass"
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                        >4
                        - \tenuto
                        \ff
                        r8
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >8
                        - \tenuto
                        [
                        r8
                        r8
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >8
                        - \tenuto
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >4
                        r16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >16
                        - \tenuto
                        \>
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >16
                        \ottava 0
                        r16
                        ]
                        r8
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8
                        - \tenuto
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8
                        [
                        r8
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >4
                        - \tenuto
                        r4
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >4
                        - \tenuto
                        \ppp
                        s1 * 7/12
                        s1 * 1/2
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
                \context timeSignatureStaff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 7/8
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/12
                        s1 * 1/2
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
                \context Staff = "accordion 3 staff"
                {
                    \context Voice = "accordion 3 voice"
                    {
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \clef "bass"
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                        >4
                        - \tenuto
                        r8
                        r8
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >8
                        - \tenuto
                        ]
                        r16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >16
                        - \tenuto
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >8
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                        >8.
                        r16
                        r8
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            d,,,
                            \tweak style #'la
                            e,,,
                            \tweak style #'la
                            f,,,
                            \tweak style #'la
                            g,,,
                        >8
                        - \tenuto
                        ]
                        \ottava 0
                        r16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8.
                        - \tenuto
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >16
                        [
                        r16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8
                        - \tenuto
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8
                        r8
                        r8
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8
                        - \tenuto
                        ]
                        ~
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >8
                        [
                        r16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        <
                            \tweak style #'la
                            a
                            \tweak style #'la
                            b
                            \tweak style #'la
                            c'
                            \tweak style #'la
                            d'
                        >16
                        - \tenuto
                        ]
                        s1 * 7/12
                        s1 * 1/2
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "violin staff"
                {
                    \context Voice = "violin voice"
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
                                        c'2..
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
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64..
                            [
                            (
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "flaut. moltiss." } \hspace #0.5 }
                            \startTextSpanOne
                            e'''64..
                            b''64..
                            e'''64..
                            c'''64..
                            d'''64..
                            c'''64..
                            e'''64..
                            b''64..
                            e'''64..
                            c'''64..
                            d'''64..
                            c'''64..
                            e'''64..
                            b''64..
                            e'''64..
                            c'''64..
                            d'''64..
                            c'''64..
                            e'''64..
                            b''64..
                            e'''64..
                            c'''64..
                            d'''64..
                            c'''64..
                            e'''64..
                            b''64..
                            e'''64..
                            c'''64..
                            d'''64..
                            c'''64..
                            e'''64..
                            )
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'1
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 8/9
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''32
                            [
                            (
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            )
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                        \times 6/7
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''32
                            \mp
                            \stopTextSpanOne
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            \startTextSpanOne
                            \<
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
                            e'''32
                            c'''32
                            d'''32
                            )
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                        \times 56/33
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            \ff
                            \stopTextSpanOne
                            [
                            (
                            - \tweak circled-tip ##t
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch + pont." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut. moltiss." }
                            \startTextSpanOne
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
                            e'''64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 1/2
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \ff
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        r16
                        [
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        ~
                        \tweak style #'harmonic-mixed
                        eqs,16
                        [
                        r16
                        r16
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        ~
                        \tweak style #'harmonic-mixed
                        eqs,4
                        ~
                        \tweak style #'harmonic-mixed
                        eqs,16
                        r8.
                        r16
                        [
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ~
                        \tweak style #'harmonic-mixed
                        eqs,16
                        r16
                        ]
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \>
                        r8.
                        [
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        ~
                        \tweak style #'harmonic-mixed
                        eqs,8.
                        r16
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        r8
                        [
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \ppp
                        \stopTextSpanOne
                        ]
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
                        \times 56/33
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            g'64
                            \p
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            \!
                            )
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 30/21
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            f'64
                            \mp
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            e'64
                            \!
                            )
                            \stopTextSpanOne
                            r32
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/5
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            g'64
                            \mf
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            \startTextSpanOne
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            \!
                            )
                            \stopTextSpanOne
                            r32
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'64
                            \f
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 scr." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            g'64
                            \ff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "3/4 scr." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            f'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            f'64
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            a'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            e'64
                            f'64
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            a'64
                            e'64
                            f'64
                            g'64
                            e'64
                            g'64
                            a'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            g'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            e'64
                            g'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            a'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            e'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            g'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            g'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
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
                                        c'8
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'64
                            \fff
                            [
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "flaut." }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            g'64
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            \!
                            )
                            \stopTextSpanOne
                            ]
                            \breathe
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                        s1 * 3/2
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

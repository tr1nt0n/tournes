  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/tournes/tournes/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 6/8
            s1 * 3/4
            ^ \markup {
            \hspace #0.5
              \raise #15 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #1 #2 #" 48 " 
              }
            }
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 14/16
            s1 * 7/8
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \break
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 18/16
            s1 * 9/8
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 5/16
            s1 * 5/16
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 17/16
            s1 * 17/16
              %! +SCORE
            \pageBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 2/8
            s1 * 1/4
              %! +SCORE
            \noBreak
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \break
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 4/12
            s1 * 1/3
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 5/12
            s1 * 5/12
              %! +SCORE
            \pageBreak
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
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
                        \times 6/7
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''32
                            [
                            (
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "whistle" } \hspace #0.5 }
                            \startTextSpanOne
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64..
                            [
                            (
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
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ffff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpanOne
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "throat-scream" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanOne
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
                                        c'16..
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
                            [
                            (
                            e'''64
                            b''64
                            e'''64
                            c'''64
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
                                        c'16
                                        ~
                                        c'64
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 15/18
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            d'''64
                            [
                            (
                            c'''64
                            e'''64
                            b''64
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            r32
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 9/8
                        r8
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #8.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \hspace #1.6 { "loud key clicks + pitch" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                \my-hack-slash
                                \once \override Accidental.stencil = ##f
                                \voiceOne
                                dqf'16 * 1/4
                                \ff
                                [
                                (
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                \once \override Staff.Accidental.stencil = ##f
                                ef'16 * 1/4
                                - \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'16 * 1/4
                                - \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                cs'16 * 1/4
                                - \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                dqs'16 * 1/4
                                - \quarter-sharp-articulation
                                \!
                                )
                                ]
                            }
                            \context Voice = "flute voice Anchor"
                            {
                                \voiceTwo
                                dqf'8
                                - \accent
                            }
                        >>
                        r16
                        \stopTextSpan
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
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            ef'32 * 31/8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "pppp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            [
                            (
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-ninety-degrees
                            \startTextSpanOne
                            g'32 * 115/32
                            d'32 * 95/32
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 75/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 31/16
                            g'32 * 27/16
                            ^ \flute-forty-five-degrees
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 51/32
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            \once \override Beam.grow-direction = #left
                            r32 * 3/2
                            [
                            f'32 * 25/16
                            ^ \flute-one-hundred-thirty-five-degrees
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 7/4
                            af'32 * 65/32
                            (
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-ninety-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-forty-five-degrees
                            \startTextSpanOne
                            e'32 * 79/32
                            fs'32 * 49/16
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 29/8
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            \once \override Beam.grow-direction = #right
                            r32 * 15/4
                            [
                            ef'32 * 115/32
                            ^ \flute-parallel
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 103/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 11/4
                            ef'32 * 37/16
                            ^ \flute-forty-five-degrees
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 2
                            g'32 * 7/4
                            (
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-ninety-degrees
                            \startTextSpanOne
                            d'32 * 13/8
                            g'32 * 49/32
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 47/32
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            \once \override Beam.grow-direction = #left
                            r32 * 3/2
                            [
                            f'32 * 25/16
                            ^ \flute-one-hundred-thirty-five-degrees
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 7/4
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 65/32
                            af'32 * 79/32
                            ^ \flute-parallel
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 49/16
                            e'32 * 29/8
                            ]
                            (
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-ninety-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                            \startTextSpanOne
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
                            fs'32 * 15/4
                            [
                            ef'32 * 21/8
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                                        c'2
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
                        \times 1/1
                        {
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            \once \override Beam.grow-direction = #left
                            r32 * 47/32
                            [
                            ef'32 * 3/2
                            ^ \flute-forty-five-degrees
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 13/8
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 59/32
                            g'32 * 35/16
                            ^ \flute-one-hundred-thirty-five-degrees
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 85/32
                            d'32 * 101/32
                            (
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-ninety-degrees
                            \startTextSpanOne
                            g'32 * 57/16
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
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            f'32 * 31/8
                            )
                            \stopTextSpanOne
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 115/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 95/32
                            af'32 * 75/32
                            ^ \flute-parallel
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 31/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 27/16
                            e'32 * 51/32
                            ^ \flute-forty-five-degrees
                            ]
                        }
                        \revert TupletNumber.text
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            <gqf' af''>4
                            :32
                            - \espressivo
                            \mp
                            - \tweak font-size 2
                            - \tweak padding #7.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "( M )" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3
                            \startTextSpan
                            \<
                            <gqf' af''>4
                            :32
                            - \espressivo
                        }
                        <gqf' af''>4
                        :32
                        - \espressivo
                        <gqf' af''>4
                        :32
                        - \espressivo
                        <gqf' af''>4
                        :32
                        - \espressivo
                        \f
                        <gqf' af''>4
                        :32
                        - \espressivo
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            r2
                            <gqf' af''>8
                            :64
                            - \espressivo
                            \stopTextSpan
                        }
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
                        \times 6/7
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''32
                            [
                            (
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                            \startTextSpan
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
                                        c'4..
                                        ~
                                        c'64
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 435/270
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            [
                            (
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
                                        c'4.
                                        ~
                                        c'32.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 189/119
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            b''64
                            [
                            (
                            e'''64
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ffff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpan
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "throat-scream" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
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
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/3
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            d'''64
                            [
                            (
                            c'''64
                            e'''64
                            b''64
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
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/3
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'''64
                            [
                            (
                            c'''64
                            d'''64
                            c'''64
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
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/3
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            e'''64
                            [
                            (
                            b''64
                            e'''64
                            c'''64
                            )
                            \stopTextSpan
                            \stopTextSpanTwo
                            r32
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 9/8
                        s1 * 5/16
                        aqs4.
                        - \tenuto
                        \p
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                        \startTextSpan
                        \<
                        aqs8
                        - \tenuto
                        aqs8
                        - \tenuto
                        \mf
                        [
                        aqs16
                        - \tenuto
                        ]
                        aqs4.
                        - \tenuto
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 air" } \hspace #0.5 }
                        \startTextSpan
                        aqs8
                        - \tenuto
                        \<
                        aqs2
                        - \tenuto
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                        \startTextSpan
                        aqs4
                        - \tenuto
                        aqs8
                        - \tenuto
                        [
                        aqs8
                        - \tenuto
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 air" } \hspace #0.5 }
                        \startTextSpan
                        aqs8
                        - \tenuto
                        ]
                        ~
                        aqs8
                        - \tenuto
                        [
                        aqs8
                        - \tenuto
                        ]
                        aqs4
                        - \tenuto
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                        \startTextSpan
                        aqs8
                        - \tenuto
                        aqs4
                        - \tenuto
                        aqs8
                        - \tenuto
                        aqs4.
                        - \tenuto
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/5 air" } \hspace #0.5 }
                        \startTextSpan
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            aqs4
                            - \tenuto
                            \ff
                            aqs4
                            - \tenuto
                            \stopTextSpan
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #3
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                            \startTextSpan
                        }
                        aqs4
                        - \tenuto
                        aqs4
                        - \tenuto
                        aqs4
                        - \tenuto
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "3/4 air" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "air" }
                        \startTextSpan
                        aqs4
                        - \tenuto
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            aqs4.
                            - \tenuto
                            aqs4
                            - \tenuto
                            \stopTextSpan
                        }
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
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >4
                        - \tenuto
                        \mp
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
                        >4
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        \<
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >16
                        - \tenuto
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        ]
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        \mf
                        ]
                        \ottava 0
                        \override Dots.staff-position = #2
                        af4.
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        af8.
                        ~
                        af4.
                        ~
                        af8.
                        ~
                        af8.
                        \>
                        ~
                        af8
                        ~
                        af2...
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 \override #'(font-size . 5) {...} )
                                            }
                                        }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        gqs16
                        \p
                        ]
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >4.
                        - \tenuto
                        \<
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
                        >2
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
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
                            >4
                            - \tenuto
                            \f
                            r8
                        }
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
                        >4
                        - \tenuto
                        r4
                        r16
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
                        >8.
                        - \tenuto
                        ~
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
                        >16
                        r8.
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            r4
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
                            >4
                            - \tenuto
                            \ottava 0
                            r8
                        }
                    }
                }
                \context timeSignatureStaff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/16
                        s1 * 9/8
                        s1 * 5/16
                        s1 * 17/16
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
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
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >16
                        - \tenuto
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        ]
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
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
                        >16
                        - \tenuto
                        ]
                        \ottava 0
                        s1 * 9/8
                        s1 * 5/16
                        g2...
                        ~
                        g8
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        <
                            \tweak style #'la
                            a,,,
                            \tweak style #'la
                            b,,,
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                        >4.
                        - \tenuto
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
                        >2
                        - \tenuto
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
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
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        >4
                        - \tenuto
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
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
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
                            >4
                            - \tenuto
                            r8
                        }
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
                        >4
                        - \tenuto
                        r4
                        r16
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
                        >8.
                        - \tenuto
                        ~
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
                        >16
                        r8.
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            r4
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
                            >4
                            - \tenuto
                            \ottava 0
                            r8
                        }
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
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''32
                            [
                            (
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "flaut. moltiss. + ponticello" } \hspace #0.5 }
                            \startTextSpan
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64..
                            [
                            (
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
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ffff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpan
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "2/3 scratch, tasto" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
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
                                        c'16..
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
                            [
                            (
                            e'''64
                            b''64
                            e'''64
                            c'''64
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
                                        c'16
                                        ~
                                        c'64
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 15/18
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            d'''64
                            [
                            (
                            c'''64
                            e'''64
                            b''64
                            )
                            \stopTextSpan
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
                                        c'2
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
                        \times 1/1
                        {
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #left
                            r32 * 47/32
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 3/2
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 13/8
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                            r32 * 59/32
                            \tweak style #'harmonic
                            a32 * 35/16
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "pppp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.7
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            \startTextSpanOne
                            \tweak style #'harmonic
                            e'32 * 85/32
                            \big-half-harmonic
                            aqf32 * 101/32
                            \tweak style #'harmonic
                            eqs'32 * 57/16
                            - \tenuto
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            ]
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.7
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanTwo
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
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
                        \times 1/1
                        {
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #right
                            r32 * 31/8
                            [
                            af32 * 115/32
                            - \tenuto
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 95/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 75/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 31/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                            r32 * 27/16
                            \big-half-harmonic
                            a32 * 51/32
                            - \tenuto
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            ]
                        }
                        \revert TupletNumber.text
                        r8.
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                \my-hack-slash
                                \once \override Accidental.stencil = ##f
                                \voiceOne
                                g16 * 1/4
                                - \downbow
                                \ff
                                [
                                (
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                \once \override Staff.Accidental.stencil = ##f
                                \tweak style #'harmonic
                                aqf16 * 1/4
                                - \quarter-flat-articulation
                                _ \staccato
                                \once \override Staff.Accidental.stencil = ##f
                                gs16 * 1/4
                                - \sharp-articulation
                                _ \staccato
                                \tweak style #'harmonic
                                d'16 * 1/4
                                _ \staccato
                                \once \override Staff.Accidental.stencil = ##f
                                ef'16 * 1/4
                                - \flat-articulation
                                \!
                                _ \staccato
                                )
                                ]
                            }
                            \context Voice = "violin voice Anchor"
                            {
                                  %! trinton.on_beat_grace_container(4)
                                \voiceTwo
                                g8
                                - \accent
                            }
                        >>
                        a1
                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffmf"))
                        (
                        - \abjad-zero-padding-glissando
                        \glissando
                        \>
                        gs16
                        \p
                        )
                        s1 * 5/4
                        \big-half-harmonic
                        bqs8
                        \mf
                        [
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #3.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch, tasto" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        \<
                        \big-half-harmonic
                        bqs8
                        ]
                        \big-half-harmonic
                        bqs4
                        \big-half-harmonic
                        bqs8
                        \big-half-harmonic
                        bqs4
                        \big-half-harmonic
                        bqs8
                        \big-half-harmonic
                        bqs4
                        \big-half-harmonic
                        bqs8
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            \big-half-harmonic
                            bqs4
                            \ff
                            \big-half-harmonic
                            bqs4
                        }
                        \big-half-harmonic
                        bqs4
                        \big-half-harmonic
                        bqs4
                        \big-half-harmonic
                        bqs4
                        \big-half-harmonic
                        bqs4
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            r8
                            \big-half-harmonic
                            bqs4.
                            \stopTextSpanOne
                            r8
                        }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                        \clef "bass"
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \mp
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                        \startTextSpanOne
                        \<
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \mf
                        [
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        [
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        [
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        [
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4.
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        [
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4.
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \<
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,2
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        [
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        ]
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        [
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 1 1 0)
                                  (1 0 1.5 -1 2 0)
                                  (2 0 2.5 1 3 0)
                                  (3 0 3.5 -1 4 0)
                                  (4 0 4.5 1 5 0)
                                  (5 0 5.5 -1 6 0)
                             )
                             #0.5
                            \afterGrace
                            \tweak style #'harmonic-mixed
                            eqs,4
                            - \espressivo
                            - \tenuto
                            \ff
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                eqs,16
                            }
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 1 1 0)
                                  (1 0 1.5 -1 2 0)
                                  (2 0 2.5 1 3 0)
                                  (3 0 3.5 -1 4 0)
                                  (4 0 4.5 1 5 0)
                                  (5 0 5.5 -1 6 0)
                             )
                             #0.5
                            \afterGrace
                            \tweak style #'harmonic-mixed
                            eqs,4
                            - \espressivo
                            - \tenuto
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                eqs,16
                                \stopTextSpanOne
                            }
                        }
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + pont." } \hspace #0.5 }
                        \startTextSpanOne
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        r16
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \tweak style #'harmonic-mixed
                        eqs,8.
                        - \espressivo
                        - \tenuto
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        [
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            eqs,16
                        }
                        r16
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \tweak style #'harmonic-mixed
                        eqs,8
                        - \espressivo
                        - \tenuto
                        ]
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8
                        [
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            eqs,16
                        }
                        r16
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,16
                        - \espressivo
                        - \tenuto
                        ]
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            r8
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 1 1 0)
                                  (1 0 1.5 -1 2 0)
                                  (2 0 2.5 1 3 0)
                                  (3 0 3.5 -1 4 0)
                                  (4 0 4.5 1 5 0)
                                  (5 0 5.5 -1 6 0)
                             )
                             #0.5
                            \afterGrace
                            \tweak style #'harmonic-mixed
                            eqs,8
                            - \espressivo
                            - \tenuto
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                eqs,16
                            }
                            r8
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 1 1 0)
                                  (1 0 1.5 -1 2 0)
                                  (2 0 2.5 1 3 0)
                                  (3 0 3.5 -1 4 0)
                                  (4 0 4.5 1 5 0)
                                  (5 0 5.5 -1 6 0)
                             )
                             #0.5
                            \afterGrace
                            \tweak style #'harmonic-mixed
                            eqs,4
                            - \espressivo
                            - \tenuto
                            \glissando
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                eqs,16
                                \stopTextSpanOne
                            }
                        }
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}

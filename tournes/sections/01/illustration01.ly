  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/tournes/tournes/build/tournes-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 6/4
            s1 * 3/2
            ^ \markup {
            \hspace #1
              \raise #15 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #" 90 " 
              }
            }
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
              %! +SCORE
            \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            - \tweak padding #13.5
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
            - \tweak bound-details.right.padding 7.5
            \startTextSpan
              %! +SCORE
            \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \noBreak
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
                                \my-hack-slash
                                \once \override Accidental.stencil = ##f
                                \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                                  %! +SCORE
                                \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
                                \voiceOne
                                dqf'16 * 1/4
                                \mf
                                [
                                (
                                - \tweak font-name "Bodoni72 Book Italic" 
                                - \tweak font-size 0
                                - \tweak padding #8.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \hspace #1 { "loud key clicks + pitch" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -15
                                \startTextSpan
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
                                \stopTextSpan
                                ]
                            }
                            \context Voice = "flute voice Anchor"
                            {
                                \voiceTwo
                                dqf'8
                            }
                        >>
                        \once \override Staff.DynamicLineSpanner.padding = #4.5
                        d'8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "s. f"))
                        - \staccatissimo
                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }
                        r2
                        r2.
                        s1 * 3/2
                        <gqf' af''>2
                        :32
                        - \espressivo
                        \mp
                        - \tweak padding #13.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(layer . 20) {
                                \hspace #-4 {
                                \general-align #Y #DOWN {
                                    \epsfile #Y #16 #"flute_multiphonic.eps"
                                }
                            }
                        } \hspace #0.5 }
                        - \tweak bound-details.right.padding -5
                        \startTextSpan
                        r8.
                        <gqf' af''>16
                        :128
                        - \espressivo
                        ~
                        <gqf' af''>8.
                        :64
                        r16
                        r8
                        <gqf' af''>8
                        :64
                        - \espressivo
                        ~
                        <gqf' af''>4
                        :32
                        ~
                        <gqf' af''>8
                        :64
                        r8
                        r16
                        <gqf' af''>8.
                        :64
                        - \espressivo
                        ~
                        <gqf' af''>16
                        :128
                        r8.
                        <gqf' af''>2
                        :32
                        - \espressivo
                        \stopTextSpan
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
                            cs'32 * 63/16
                            - \tenuto
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            ^ \flute-one-hundred-thirty-five-degrees
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 115/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 91/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 35/16
                            ef'32 * 29/16
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-forty-five-degrees
                            \startTextSpanOne
                            \once \override Staff.Accidental.stencil = ##f
                            cs'32 * 13/8
                            - \sharp-articulation
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
                            ef'32 * 63/16
                            [
                            c'32 * 115/32
                            \mf
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 91/32
                            e'32 * 35/16
                            (
                            - \tweak padding #9
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \flute-parallel \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            b'32 * 29/16
                            - \staccato
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpan
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
                            \once \override Beam.grow-direction = #left
                            r32 * 51/32
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 51/32
                            f'32 * 27/16
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "f"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-parallel \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            \once \override Staff.Accidental.stencil = ##f
                            bf'32 * 29/16
                            - \flat-articulation
                            f'32 * 65/32
                            ef'32 * 73/32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "pp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpanOne
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-ninety-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-forty-five-degrees
                            \startTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            fs'32 * 97/32
                            (
                            d'32 * 111/32
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            \once \override Beam.grow-direction = #right
                            r32 * 63/16
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 115/32
                            g'32 * 91/32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-ninety-degrees \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak stencil #constante-hairpin
                            \<
                            cs'32 * 35/16
                            af'32 * 29/16
                            c'32 * 13/8
                            )
                            \stopTextSpanOne
                            ]
                            - \tweak padding #9.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \flute-parallel \hspace #0.5 }
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
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #left
                            r32 * 51/32
                            [
                            af'32 * 51/32
                            (
                            fs'32 * 27/16
                            \!
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 29/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 65/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 73/32
                            a'32 * 21/8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "f"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                            - \tweak padding #9.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \flute-parallel \hspace #0.5 }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            f'32 * 97/32
                            bf'32 * 111/32
                            \stopTextSpan
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                            \startTextSpanOne
                            \>
                            e'32 * 31/8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpanOne
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
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #right
                            r32 * 63/16
                            [
                            b'32 * 115/32
                            (
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            \>
                            e'32 * 91/32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "p"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpan
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 35/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 29/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
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
                            fs'32 * 51/32
                            [
                            (
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-ninety-degrees \hspace #0.5 }
                            \startTextSpanOne
                            \<
                            \once \override Staff.Accidental.stencil = ##f
                            ef'32 * 51/32
                            - \flat-articulation
                            g'32 * 27/16
                            \stopTextSpanOne
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.text \flute-forty-five-degrees
                            \startTextSpanOne
                            d'32 * 29/16
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 65/32
                            af'32 * 73/32
                            (
                            cs'32 * 21/8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "f"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 97/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 111/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
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
                            a'32 * 15/4
                            [
                            (
                            - \tweak padding #9
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            \<
                            cs'32 * 21/8
                            ef'32 * 13/8
                            )
                            \stopTextSpan
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''32
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
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''32
                            [
                            (
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
                                    b''64..
                                    )
                                    \stopTextSpan
                                    ]
                                    \revert-noteheads
                                    \set fontSize = #-1
                                    \revert Staff.Dots.stencil
                                    \revert Staff.Accidental.stencil
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
                            b32 * 51/32
                            - \tweak padding 14
                            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Bass }
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            [
                            (
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding 11
                            \startBowSpan #'((0 . 4) (0.07142857142857142 . 0.2) (0.10714285714285714 . 2) (0.17857142857142855 . 1) (0.1964285714285714 . 4) (0.2321428571428571 . 3) (0.24642857142857139 . 2) (0.27499999999999997 . 1) (0.3464285714285714 . 0.5) (0.4178571428571428 . 0.6) (0.4535714285714285 . 0.7) (0.4821428571428571 . 0.5) (0.4964285714285714 . 3) (0.5464285714285714 . 0.2) (0.6178571428571428 . 4) (0.6535714285714285 . 0.2) (0.7249999999999999 . 4) (0.7428571428571428 . 0.2) (0.7785714285714285 . 2) (0.7928571428571427 . 1) (0.8214285714285713 . 4) (0.8928571428571427 . 3) (0.9642857142857141 . 2) (0.9999999999999998 . 1))
                            b32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 29/16
                            \stopTextSpanOne
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 65/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            gs32 * 21/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            gs32 * 97/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 111/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 31/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
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
                            ds'32 * 15/4
                            \stopTextSpanOne
                            [
                            (
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 115/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 103/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 11/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 37/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 7/4
                            - \sharp-articulation
                            a32 * 13/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            a32 * 49/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 47/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
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
                            b32 * 51/32
                            [
                            (
                            a32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 29/16
                            - \sharp-articulation
                            b32 * 65/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            gs32 * 21/8
                            b32 * 97/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 111/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            \startTextSpanOne
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
                            a32 * 15/4
                            [
                            (
                            gs32 * 115/32
                            ds'32 * 103/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 11/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #11.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            - \tweak bound-details.right.text \woodwind-half-closed
                            \startTextSpanOne
                            b32 * 37/16
                            gs32 * 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            gs32 * 7/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 13/8
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 49/32
                            - \sharp-articulation
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 47/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            )
                            \stopBowSpan
                            \stopTextSpanOne
                            ]
                        }
                        \revert TupletNumber.text
                        r2.
                        \slapped
                        ds16
                        \ff
                        \laissezVibrer
                        \revert-noteheads
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
                            b32 * 51/32
                            [
                            (
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding 10
                            \startBowSpan #'((0 . 0) (0.055944055944055944 . 0.5) (0.11888111888111888 . 1.5) (0.1888111888111888 . 5) (0.20279720279720279 . 0.2) (0.25874125874125875 . 0.4) (0.32167832167832167 . 0.6) (0.39160839160839156 . 5) (0.40559440559440557 . 3) (0.4615384615384615 . 2) (0.5244755244755245 . 3) (0.5944055944055944 . 1) (0.6083916083916083 . 3) (0.6643356643356643 . 4) (0.7272727272727272 . 0) (0.7972027972027971 . 0.5) (0.811188811188811 . 1.5) (0.867132867132867 . 5) (0.9300699300699299 . 0.2) (0.9999999999999998 . 0.4))
                            a32 * 51/32
                            b32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            gs32 * 65/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            gs32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 21/8
                            ds'32 * 97/32
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 111/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            - \tweak bound-details.right.padding 1
                            \startTextSpanOne
                            a32 * 31/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
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
                            a32 * 15/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            [
                            (
                            ds'32 * 115/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            ds'32 * 103/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            a32 * 11/4
                            gs32 * 37/16
                            a32 * 2
                            ds'32 * 7/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ds'32 * 13/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 49/32
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            \once \override Staff.Accidental.stencil = ##f
                            gs32 * 47/32
                            - \sharp-articulation
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
                            a32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            [
                            (
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            gs32 * 29/16
                            - \sharp-articulation
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            \startTextSpanOne
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 65/32
                            - \sharp-articulation
                            a32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 21/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 97/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 111/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 31/8
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
                            gs32 * 15/4
                            \stopTextSpanOne
                            [
                            (
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 115/32
                            ds'32 * 103/32
                            b32 * 11/4
                            ds'32 * 37/16
                            a32 * 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            - \tweak bound-details.right.text \woodwind-open
                            \startTextSpanOne
                            a32 * 7/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 13/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 49/32
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 47/32
                            - \sharp-articulation
                            )
                            \stopBowSpan
                            \stopTextSpanOne
                            ]
                        }
                        \revert TupletNumber.text
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            - \staccato
                            ^ \markup \center-align { \concat { -14 } }
                            [
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "5°/sounding B-flat ( with violin )" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            - \tweak padding 10
                            \startBowSpan #'((0 . 5) (0.044444444444444446 . 4) (0.1111111111111111 . 5) (0.15555555555555556 . 3) (0.24444444444444446 . 5) (0.2888888888888889 . 3.5) (0.3777777777777778 . 4.5) (0.4222222222222223 . 2) (0.4444444444444445 . 5) (0.6666666666666667 . 0.2) (1.0 . 5))
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            ^ \markup \center-align { \concat { -14 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            ^ \markup \center-align { \concat { -14 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            - \staccato
                            ^ \markup \center-align { \concat { -14 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            ^ \markup \center-align { \concat { -14 } }
                            ]
                        }
                        \afterGrace
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        e'''!2.
                        - \tenuto
                        ^ \markup \center-align { \concat { -14 } }
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \stopBowSpan
                        }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        e'''!2.
                        - \tenuto
                        ^ \markup \center-align { \concat { -14 } }
                        - \tweak padding 10
                        \startBowSpan #'((0 . 5) (0.08333333333333334 . 0.2) (0.20833333333333337 . 5) (0.29166666666666674 . 5) (0.3083333333333334 . 4) (0.3333333333333334 . 5) (0.3500000000000001 . 3) (0.3833333333333334 . 5) (0.4000000000000001 . 3.5) (0.4333333333333334 . 4.5) (0.45000000000000007 . 2) (0.4583333333333334 . 5) (0.5416666666666667 . 0.2) (0.6666666666666667 . 5) (0.7500000000000001 . 5) (0.7666666666666668 . 4) (0.7916666666666669 . 5) (0.8083333333333336 . 3) (0.8416666666666669 . 5) (0.8583333333333336 . 3.5) (0.8916666666666669 . 4.5) (0.9083333333333337 . 2) (0.916666666666667 . 5) (1.0000000000000002 . 0.2))
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/11
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            ^ \markup \center-align { \concat { -14 } }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            ^ \markup \center-align { \concat { -14 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            - \staccato
                            ^ \markup \center-align { \concat { -14 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8.
                            - \marcato
                            - \staccato
                            ^ \markup \center-align { \concat { -14 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'''!8
                            - \marcato
                            ^ \markup \center-align { \concat { -14 } }
                            \stopTextSpan
                            ]
                        }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        gs'''!2.
                        - \tenuto
                        ^ \markup \center-align { \concat { +2 } }
                        - \tweak padding #11
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "6°/sounding B ( with violin )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        gs'''!8
                        - \marcato
                        - \staccato
                        ^ \markup \center-align { \concat { +2 } }
                        [
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        gs'''!8.
                        - \marcato
                        ^ \markup \center-align { \concat { +2 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        gs'''!8
                        - \marcato
                        ^ \markup \center-align { \concat { +2 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        gs'''!8.
                        - \marcato
                        - \staccato
                        ^ \markup \center-align { \concat { +2 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        gs'''!8
                        - \marcato
                        ^ \markup \center-align { \concat { +2 } }
                        \stopBowSpan
                        \stopTextSpan
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
                        \clef "bass"
                        r8
                        \override Dots.staff-position = #2
                        d,8
                        \f
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        d,2
                        ~
                        d,2.
                        ~
                        d,1.
                        ~
                        d,2.
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 \override #'(font-size . 5) {.} )
                                            }
                                        }
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        cs,16
                        \pp
                        )
                        r8.
                        r2
                        s1 * 3/2
                        \override Dots.staff-position = #2
                        df,2.
                        \mp
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        \<
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        df,2
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        df,8.
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
                        cqs,16
                        \f
                        )
                        ]
                        s1 * 3/2
                        \override Dots.staff-position = #2
                        ef,1.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "pf"))
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        \>
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        ef,1.
                        ~
                        ef,2.
                        \mp
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 \override #'(font-size . 5) {.} )
                                            }
                                        }
                        \<
                        ~
                        ef,2
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef,8.
                        \mf
                        [
                        - \tweak circled-tip ##t
                        \>
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
                        d,16
                        \!
                        )
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
                        \clef "bass"
                        r1
                        d,4
                        r4
                        r2
                        cs,4
                        ~
                        cs,8
                        r8
                        r2
                        r4
                        r8
                        cs,8
                        ~
                        cs,8
                        r8
                        r2.
                        s1 * 3/2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "no air" } \hspace #0.5 }
                        \startTextSpan
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2.
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "3/4 air" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "1/4 air" }
                        \startTextSpan
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4
                        \stopTextSpan
                        s1 * 3/2
                        r4
                        r8
                        ef,8
                        ~
                        ef,4
                        ~
                        ef,8
                        r8
                        r8
                        ef,8
                        (
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef,8
                        [
                        \revert Staff.Stem.stemlet-length
                        e,8
                        )
                        ]
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2.
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/4 air" } \hspace #0.5 }
                        \startTextSpan
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \stopTextSpan
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "3/4 air" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "no air" }
                        \startTextSpan
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4
                        \stopTextSpan
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            ef,8
                            - \staccato
                            [
                            (
                            ef,8
                            - \staccato
                            ef,8
                            - \staccato
                            \revert Staff.Stem.stemlet-length
                            f,8
                            )
                            ]
                            r8
                        }
                        r4
                        r8
                        e,8
                        ~
                        e,2
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #right
                            r32 * 117/32
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 99/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 69/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #left
                            r32 * 43/32
                            [
                            c'32 * 49/32
                            (
                            c'32 * 17/8
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 51/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 27/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 29/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                            r32 * 65/32
                            c'32 * 73/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            c'32 * 97/32
                            (
                            c'32 * 111/32
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 51/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 27/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 29/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                            r32 * 65/32
                            c'32 * 73/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            c'32 * 97/32
                            (
                            c'32 * 111/32
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 115/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 91/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 35/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #left
                            r32 * 5/4
                            [
                            c'32 * 43/32
                            (
                            c'32 * 51/32
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 65/32
                            c'32 * 85/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 51/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 27/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 29/16
                            c'32 * 65/32
                            (
                            c'32 * 73/32
                            c'32 * 21/8
                            c'32 * 97/32
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 99/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 69/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 27/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 29/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 65/32
                            c'32 * 73/32
                            (
                            c'32 * 21/8
                            c'32 * 97/32
                            c'32 * 111/32
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 91/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 35/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 29/16
                            c'32 * 65/32
                            (
                            c'32 * 73/32
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 97/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #left
                            r32 * 5/4
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 43/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'64.
                            [
                            (
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            )
                            r32.
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
                            c'64.
                            [
                            (
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            )
                            r32.
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
                            c'64.
                            [
                            (
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            )
                            r32.
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
                            c'64.
                            [
                            (
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            c'64.
                            )
                            r32.
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
}

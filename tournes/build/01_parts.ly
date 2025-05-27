    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 32 14 12 4 18.5 16)))
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
        %%% \pageBreak
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
        %%% \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \stopTextSpan
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 18.5 14.5 14 1.5 12.5 18)))
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 7/12
            s1 * 7/12
              %! +SCORE
        %%% \noBreak
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 8/12
            s1 * 2/3
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 23.5 15 10 3.5 14 22.5)))
            \time 2/4
            s1 * 1/2
              %! +SCORE
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \hspace #-9
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #2 #" 90 " 
              }
            }
              %! +SCORE
        %%% \break
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 5/12
            s1 * 5/12
              %! +SCORE
        %%% \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 7/12
            s1 * 7/12
              %! +SCORE
        %%% \pageBreak
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
                            %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
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
                        - \tenuto
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
                        - \tenuto
                        ~
                        <gqf' af''>8.
                        :64
                        r16
                        r8
                        <gqf' af''>8
                        :64
                        - \espressivo
                        - \tenuto
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
                        - \tenuto
                        ~
                        <gqf' af''>16
                        :128
                        r8.
                        <gqf' af''>2
                        :32
                        - \espressivo
                        - \tenuto
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
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
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
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            )
                            \stopTextSpan
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 5/8
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
                                            c'8
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
                        \times 8/9
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            e'''64
                            b''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                            c'''64
                            d'''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                            c'''64
                            d'''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                        <gqf' af''>4
                        :32
                        - \espressivo
                        r4
                        r4
                        <gqf' af''>4
                        :32
                        - \espressivo
                        \<
                        <gqf' af''>4
                        :32
                        - \espressivo
                        <gqf' af''>8
                        :64
                        - \espressivo
                        <gqf' af''>4.
                        :32
                        - \espressivo
                        \mf
                        <gqf' af''>8
                        :64
                        - \espressivo
                        \stopTextSpan
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
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
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
                        \stopTextSpan
                        \slapped
                        ds8
                        \fff
                        \stopBowSpan
                        ]
                        \revert-noteheads
                        r4
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
                                        \times 32/48
                                        {
                                            c'4.
                                            ~
                                            c'32
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
                        \times 91/63
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
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
                            - \tweak bound-details.left.text \markup \concat { \upright { "3/4 overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            e'''64
                            b''64
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
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
                                        c'4
                                        ~
                                        c'16.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 66/45
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
                                        c'4
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
                        \times 18/13
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
                            e'''64
                            c'''64
                            d'''64
                            c'''64
                            e'''64
                            b''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 32/48
                                        {
                                            c'2
                                            ~
                                            c'32
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
                        \times 102/135
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
                            )
                            \stopTextSpan
                            r16
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        r4
                        r16
                        gqs4
                        - \tenuto
                        \mf
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size #0
                        - \tweak padding #3.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "1/3 air" }
                        \startTextSpan
                        \>
                        gqs4
                        - \tenuto
                        \p
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
                            [
                            (
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding 9.5
                            \startBowSpan #'((0 . 4) (0.14285714285714285 . 1) (0.42857142857142855 . 2.5) (0.8571428571428571 . 0.2) (1.0 . 0.3))
                            b32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            gs32 * 29/16
                            b32 * 65/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 21/8
                            ds'32 * 97/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            - \tweak bound-details.right.text \woodwind-open
                            \startTextSpanOne
                            ds'32 * 111/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 31/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            )
                            \stopBowSpan
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
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
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
                            \stopTextSpan
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
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
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
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
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \override Staff.Stem.stemlet-length = 0.75
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
                        \mp
                        [
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Staff.Stem.stemlet-length
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
                        \!
                        \ottava 0
                        s1 * 2/3
                        r4
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
                        >4
                        - \tenuto
                        \p
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \ottava 0
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
                            g'32
                            [
                            (
                            e'32
                            a'32
                            e'32
                            f'32
                            g'32
                            e'32
                            g'32
                            a'32
                            g'32
                            e'32
                            a'32
                            e'32
                            f'32
                            g'32
                            \ffff
                            e'32
                            g'32
                            a'32
                            g'32
                            e'32
                            a'32
                            e'32
                            f'32
                            g'32
                            e'32
                            g'32
                            a'32
                            g'32
                            )
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
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
                        >4
                        - \tenuto
                        \mf
                        - \tweak stencil #constante-hairpin
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
                        \!
                        \ottava 0
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
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \override Staff.Stem.stemlet-length = 0.75
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
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \revert Staff.Stem.stemlet-length
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
                        \ottava 0
                        s1 * 2/3
                        r4
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
                        >4
                        - \tenuto
                        \ottava 0
                        s1 * 3/4
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
                        \ottava 0
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
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
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
                            \tweak style #'harmonic
                            gqs32 * 47/32
                            - \staccato
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
                            ]
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "3/4 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "1/2 spz." }
                            \startTextSpanTwo
                            - \tweak padding #7.2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
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
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            \once \override Beam.grow-direction = #left
                            r32 * 43/32
                            [
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            af32 * 49/32
                            - \flat-articulation
                            (
                            \once \override Staff.Accidental.stencil = ##f
                            \tweak style #'harmonic
                            gqs32 * 17/8
                            - \quarter-sharp-articulation
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
                            - \tweak padding #7.2
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #left
                            aqf32 * 51/32
                            - \tenuto
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpanOne
                            \stopTextSpanTwo
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
                            g32 * 73/32
                            - \tenuto
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
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "spz." }
                            \startTextSpanTwo
                            - \tweak padding #8.2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-down
                            \startTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            ef'32 * 97/32
                            (
                            \>
                            gqf'32 * 111/32
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #left
                            eqf'32 * 51/32
                            - \tenuto
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
                            \stopTextSpanTwo
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
                            \tweak style #'harmonic
                            gqf'32 * 73/32
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
                            ^ \bow-tip-half-up
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #11.2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            \tweak style #'harmonic
                            gqs32 * 97/32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-up
                            \startTextSpanOne
                            \big-half-harmonic
                            af32 * 111/32
                            \!
                            )
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #11.2
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/6 spz." } \hspace #0.5 }
                            \startTextSpanTwo
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
                            \tweak style #'harmonic
                            gqs32 * 63/16
                            - \tenuto
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
                            \stopTextSpanOne
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
                            \big-half-harmonic
                            aqf32 * 13/8
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
                            \stopTextSpanTwo
                            ]
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #11.2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-up
                            \startTextSpanOne
                            \>
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
                            \once \override Staff.Accidental.stencil = ##f
                            g32 * 43/32
                            - \natural-articulation
                            \stopTextSpanTwo
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #11.2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "norm." }
                            \startTextSpanTwo
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            ef'32 * 51/32
                            - \flat-articulation
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 65/32
                            gqf'32 * 85/32
                            - \tenuto
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
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 25/8
                            ]
                        }
                        \revert TupletNumber.text
                        r2.
                        r2
                        r8
                        \big-half-harmonic
                        a8
                        - \tweak font-size #3
                        - \snappizzicato
                        \ff
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #6.4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \hspace #-7 \center-column { \line { "pizz." } \line { "ponticello possibile" } } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \big-half-harmonic
                        gqs8
                        - \tweak font-size #3
                        - \snappizzicato
                        r8
                        r2
                        r2.
                        r8
                        \big-half-harmonic
                        gqs8
                        - \tweak font-size #3
                        - \snappizzicato
                        r2
                        r2
                        r8
                        \big-half-harmonic
                        a8
                        - \tweak font-size #3
                        - \snappizzicato
                        \stopTextSpan
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''2
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        - \tweak padding #6.4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "6°/sounding B-flat ( with clarinet )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak padding 5.3
                        \startBowSpan #'((0 . 4) (0.16666666666666666 . 0.2) (0.3333333333333333 . 4) (0.5 . 2.75) (0.6666666666666666 . 4.5) (0.8333333333333333 . 0.2) (0.9999999999999999 . 3))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''2
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        \afterGrace
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''2
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
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
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''4
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        - \tweak padding 6.7
                        \startBowSpan #'((0 . 0.1) (0.030030030030030033 . 3) (0.060060060060060066 . 1) (0.0900900900900901 . 2) (0.12012012012012013 . 1) (0.13513513513513514 . 4) (0.15015015015015015 . 3) (0.16516516516516516 . 4) (0.17717717717717718 . 2) (0.1831831831831832 . 3) (0.1951951951951952 . 2) (0.20720720720720723 . 4) (0.22522522522522526 . 2) (0.2852852852852853 . 0.1) (0.3153153153153153 . 3) (0.35735735735735735 . 1) (0.41741741741741745 . 2) (0.44744744744744747 . 1) (0.4774774774774775 . 4) (0.5075075075075075 . 3) (0.5375375375375375 . 4) (0.5525525525525525 . 2) (0.5675675675675675 . 3) (0.5825825825825826 . 2) (0.5945945945945945 . 4) (0.6006006006006005 . 2) (0.6126126126126125 . 0.1) (0.6246246246246244 . 3) (0.6426426426426425 . 1) (0.7027027027027025 . 2) (0.7327327327327325 . 1) (0.7747747747747746 . 4) (0.8348348348348347 . 3) (0.8648648648648647 . 4) (0.8948948948948947 . 2) (0.9249249249249247 . 3) (0.9549549549549547 . 2) (0.9699699699699698 . 4) (0.9849849849849848 . 2) (0.9999999999999998 . 0.1))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''4
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''4
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16.
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16.
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            ]
                        }
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16.
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16.
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            f''16
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            ]
                        }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f''4
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        \stopTextSpan
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        a''!4
                        - \accent
                        ^ \markup \center-align { \concat { -31 } }
                        - \tweak padding #7.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "7°/sounding B ( with clarinet )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        a''4
                        - \accent
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/15
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32
                            - \accent
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32.
                            - \accent
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/13
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32.
                            - \accent
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''32
                            - \accent
                            ]
                        }
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''16
                            - \accent
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''16.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''16.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            a''16
                            - \accent
                            \stopBowSpan
                            \stopTextSpan
                            ]
                        }
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                \my-hack-slash
                                \once \override Accidental.stencil = ##f
                                \voiceOne
                                \tweak style #'harmonic-mixed
                                cs'16 * 1/4
                                \f
                                ^ \downbow
                                [
                                (
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                \big-half-harmonic
                                b16 * 1/4
                                _ \staccato
                                \big-half-harmonic
                                \once \override Staff.Accidental.stencil = ##f
                                c'16 * 1/4
                                - \natural-articulation
                                _ \staccato
                                \once \override Staff.Accidental.stencil = ##f
                                \tweak style #'harmonic
                                ef'16 * 1/4
                                - \flat-articulation
                                _ \staccato
                                \big-half-harmonic
                                \once \override Staff.Accidental.stencil = ##f
                                dqs'16 * 1/4
                                - \quarter-sharp-articulation
                                \p
                                _ \staccato
                                )
                                ]
                            }
                            \context Voice = "violin voice Anchor"
                            {
                                  %! trinton.on_beat_grace_container(4)
                                \voiceTwo
                                \tweak style #'harmonic-mixed
                                cs'4
                                - \accent
                            }
                        >>
                        s1 * 7/12
                        \big-half-harmonic
                        \override Staff.Stem.stemlet-length = 0.75
                        bqs8.
                        - \tenuto
                        \mf
                        [
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch, tasto" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        \big-half-harmonic
                        \revert Staff.Stem.stemlet-length
                        bqs16
                        - \tenuto
                        ]
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs8
                        - \tenuto
                        \!
                        \stopTextSpanOne
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
                                            c'8
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
                        \times 8/9
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
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
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
                            e'''64
                            b''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                            c'''64
                            d'''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                            c'''64
                            d'''64
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 8/12
                                        {
                                            c'8
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
                        \times 8/9
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
                                        c'4
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
                            )
                            r16
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
                            )
                            \stopTextSpan
                            r16
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
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 14/9
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            c'''64
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "2/3 scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
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
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \f
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch, tasto" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        \big-half-harmonic
                        bqs8
                        - \tenuto
                        \big-half-harmonic
                        bqs4.
                        - \tenuto
                        \big-half-harmonic
                        bqs8
                        - \tenuto
                        \!
                        \stopTextSpanOne
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
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                        \clef "tenor"
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
                            \tweak style #'harmonic
                            eqs'32 * 51/32
                            - \tenuto
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
                            \tweak style #'harmonic
                            gqf32 * 65/32
                            (
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #13
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/3 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "3/4 spz." }
                            \startTextSpanTwo
                            - \tweak padding #11
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            \startTextSpanOne
                            \big-half-harmonic
                            e32 * 73/32
                            cs32 * 21/8
                            \big-half-harmonic
                            eqf32 * 97/32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            - \tweak padding #11
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            \startTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 111/32
                            \tweak style #'harmonic
                            cs'32 * 31/8
                            - \tenuto
                            \stopTextSpanOne
                            ]
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #13
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/4 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            - \tweak padding #11
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            - \tweak bound-details.right.text \normale-bow-rotation
                            \startTextSpanOne
                            \>
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
                            fs32 * 117/32
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
                            \stopTextSpan
                            \stopTextSpanOne
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
                            \big-half-harmonic
                            dqf'32 * 47/32
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
                            ]
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #7
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-up
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
                            \once \override Beam.grow-direction = #left
                            fqs32 * 43/32
                            [
                            \tweak style #'harmonic
                            d'32 * 49/32
                            f32 * 17/8
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #7
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            \startTextSpanTwo
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
                            dqs'32 * 51/32
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
                            [
                            (
                            \tweak style #'harmonic
                            eqs32 * 51/32
                            )
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #7
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "2/3 spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 27/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 29/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 65/32
                            \big-half-harmonic
                            dqs'32 * 73/32
                            (
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                            \startTextSpanOne
                            \<
                            dqf'32 * 21/8
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #7
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { " " } \hspace #0.5 }
                            \startTextSpanTwo
                            \tweak style #'harmonic
                            ef'32 * 97/32
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
                            \stopTextSpanOne
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            \startTextSpanOne
                            \big-half-harmonic
                            cs'32 * 111/32
                            \!
                            )
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #7
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "3/4 spz." }
                            \startTextSpanTwo
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #right
                            eqf'32 * 63/16
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "fp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpanOne
                            [
                            (
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
                            \big-half-harmonic
                            gqf32 * 115/32
                            \!
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 91/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 35/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 29/16
                            \tweak style #'harmonic
                            e32 * 13/8
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
                            ]
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-down
                            \startTextSpanOne
                            - \tweak stencil #abjad-flared-hairpin
                            \<
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #left
                            gqf32 * 51/32
                            [
                            dqf32 * 51/32
                            \big-half-harmonic
                            fs,32 * 27/16
                            )
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 29/16
                            \tweak style #'harmonic
                            d32 * 65/32
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "fp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                            fqs,32 * 73/32
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 97/32
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 111/32
                            \clef "bass"
                            dqs,32 * 31/8
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
                            ]
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
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
                            \tweak style #'harmonic
                            f,32 * 63/16
                            [
                            \big-half-harmonic
                            ef,32 * 115/32
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            \tweak style #'harmonic
                            f,32 * 91/32
                            )
                            \stopTextSpanOne
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 35/16
                            \big-half-harmonic
                            fs,32 * 29/16
                            - \tenuto
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpanTwo
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanTwo
                            \big-half-harmonic
                            f,32 * 13/8
                            - \tenuto
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
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
                            \tweak style #'harmonic
                            fs,32 * 65/32
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "5/6 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-up
                            \startTextSpanOne
                            \<
                            \big-half-harmonic
                            eqs,32 * 85/32
                            gqf,32 * 25/8
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
                            e,32 * 15/4
                            )
                            \stopTextSpan
                            \stopTextSpanOne
                            [
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 21/8
                            \tweak style #'harmonic
                            cs,32 * 13/8
                            - \staccato
                            ]
                        }
                        \revert TupletNumber.text
                        <<
                            \context Voice = "On_Beat_Grace_Container"
                            {
                                  %! trinton.on_beat_grace_container(1)
                                \set fontSize = #-4
                                \my-hack-slash
                                \once \override Accidental.stencil = ##f
                                \voiceOne
                                dqs,16 * 1/4
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                - \downbow
                                [
                                (
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                _ \>
                                \grace-half-harmonic
                                e,16 * 1/4
                                _ \staccato
                                \once \override Staff.Accidental.stencil = ##f
                                \tweak style #'harmonic
                                cs,16 * 1/4
                                - \sharp-articulation
                                _ \staccato
                                \once \override Staff.Accidental.stencil = ##f
                                ds,16 * 1/4
                                - \sharp-articulation
                                _ \staccato
                                \once \override Staff.Accidental.stencil = ##f
                                \tweak style #'harmonic
                                fqs,16 * 1/4
                                - \quarter-sharp-articulation
                                \!
                                _ \staccato
                                )
                                ]
                            }
                            \context Voice = "cello voice Anchor"
                            {
                                \voiceTwo
                                dqs,8
                                - \accent
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
                            g'64.
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
                            - \tweak font-size 0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/3 scratch" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            e'64.
                            a'64.
                            e'64.
                            f'64.
                            g'64.
                            e'64.
                            g'64.
                            a'64.
                            g'64.
                            e'64.
                            a'64.
                            e'64.
                            f'64.
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
                            g'64.
                            [
                            (
                            e'64.
                            g'64.
                            a'64.
                            g'64.
                            e'64.
                            a'64.
                            e'64.
                            f'64.
                            g'64.
                            e'64.
                            g'64.
                            a'64.
                            g'64.
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
                            e'64.
                            [
                            (
                            a'64.
                            e'64.
                            f'64.
                            g'64.
                            e'64.
                            g'64.
                            a'64.
                            g'64.
                            e'64.
                            a'64.
                            e'64.
                            f'64.
                            g'64.
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
                            e'64.
                            [
                            (
                            g'64.
                            a'64.
                            g'64.
                            e'64.
                            a'64.
                            e'64.
                            f'64.
                            g'64.
                            e'64.
                            g'64.
                            a'64.
                            g'64.
                            e'64.
                            )
                            \stopTextSpan
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
                            a,32 * 51/32
                            [
                            (
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-down
                            \startTextSpanOne
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            bqf,32 * 51/32
                            - \quarter-flat-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            aqf,32 * 27/16
                            - \quarter-flat-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            b,32 * 29/16
                            - \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af,32 * 65/32
                            - \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            aqf,32 * 73/32
                            - \quarter-flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af,32 * 21/8
                            - \flat-articulation
                            aqf,32 * 97/32
                            \big-half-harmonic
                            dqf,32 * 111/32
                            a,32 * 31/8
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
                            \tweak style #'harmonic
                            bqf,32 * 15/4
                            [
                            (
                            aqf,32 * 115/32
                            b,32 * 103/32
                            \tweak style #'harmonic
                            af,32 * 11/4
                            \big-half-harmonic
                            aqf,32 * 37/16
                            \big-half-harmonic
                            af,32 * 2
                            aqf,32 * 7/4
                            dqf,32 * 13/8
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
                            - \tweak stencil #constante-hairpin
                            \<
                            \once \override Staff.Accidental.stencil = ##f
                            a,32 * 49/32
                            - \natural-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            bqf,32 * 47/32
                            - \quarter-flat-articulation
                            )
                            \stopTextSpanTwo
                            ]
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "1/5 spz." }
                            \startTextSpanTwo
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #left
                            aqf,32 * 51/32
                            [
                            (
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            b,32 * 51/32
                            - \natural-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            af,32 * 27/16
                            - \flat-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            aqf,32 * 29/16
                            - \quarter-flat-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            af,32 * 65/32
                            - \flat-articulation
                            \big-half-harmonic
                            aqf,32 * 73/32
                            dqf,32 * 21/8
                            \>
                            \big-half-harmonic
                            a,32 * 97/32
                            \tweak style #'harmonic
                            bqf,32 * 111/32
                            \big-half-harmonic
                            aqf,32 * 31/8
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            ]
                            \<
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
                            \tweak style #'harmonic
                            b,32 * 15/4
                            [
                            (
                            \tweak style #'harmonic
                            af,32 * 115/32
                            \tweak style #'harmonic
                            aqf,32 * 103/32
                            \tweak style #'harmonic
                            af,32 * 11/4
                            \tweak style #'harmonic
                            aqf,32 * 37/16
                            dqf,32 * 2
                            \big-half-harmonic
                            a,32 * 7/4
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            bqf,32 * 13/8
                            - \quarter-flat-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            aqf,32 * 49/32
                            - \quarter-flat-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            b,32 * 47/32
                            - \natural-articulation
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "fff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            ]
                        }
                        \revert TupletNumber.text
                        s1 * 7/12
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                         )
                         #0.5
                        \override Staff.Stem.stemlet-length = 0.75
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,8.
                        - \espressivo
                        - \tenuto
                        \mp
                        [
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
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
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                         )
                         #0.5
                        \revert Staff.Stem.stemlet-length
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
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
                            \stopTextSpanOne
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            r2
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 1 1 0)
                                  (1 0 1.5 -1 2 0)
                                  (2 0 2.5 1 3 0)
                                  (3 0 3.5 -1 4 0)
                                  (4 0 4.5 1 5 0)
                                  (5 0 5.5 -1 6 0)
                                  (6 0 6.5 1 7 0)
                                  (7 0 7.5 -1 8 0)
                                  (8 0 8.5 1 9 0)
                                  (9 0 9.5 -1 10 0)
                             )
                             #0.5
                            \afterGrace
                            \tweak style #'harmonic-mixed
                            eqs,4
                            - \espressivo
                            - \tenuto
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #7
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
                                  (6 0 6.5 1 7 0)
                                  (7 0 7.5 -1 8 0)
                                  (8 0 8.5 1 9 0)
                                  (9 0 9.5 -1 10 0)
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \mf
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
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
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
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
                            \tweak style #'harmonic
                            a,32 * 51/32
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
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #12.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "3/4 spz." } \hspace #0.5 }
                            \startTextSpan
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                            \startTextSpanOne
                            \<
                            \big-half-harmonic
                            eqs32 * 51/32
                            \big-half-harmonic
                            aqf,32 * 27/16
                            f,32 * 29/16
                            fqs,32 * 65/32
                            \tweak style #'harmonic
                            eqs,32 * 73/32
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
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak stencil #constante-hairpin
                            \<
                            \tweak style #'harmonic
                            a,32 * 21/8
                            \big-half-harmonic
                            eqs32 * 97/32
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            \startTextSpanOne
                            \>
                            \big-half-harmonic
                            aqf,32 * 111/32
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
                            \stopTextSpan
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #12.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                            \startTextSpanTwo
                            \<
                            \big-half-harmonic
                            f,32 * 31/8
                            )
                            \stopTextSpanOne
                            ]
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #right
                            fqs,32 * 63/16
                            [
                            (
                            \big-half-harmonic
                            eqs,32 * 115/32
                            a,32 * 91/32
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
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #12.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                            \startTextSpanOne
                            \tweak style #'harmonic
                            eqs32 * 35/16
                            aqf,32 * 29/16
                            \big-half-harmonic
                            f32 * 13/8
                            )
                            \stopTextSpanOne
                            ]
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
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
                            fqs32 * 5/4
                            [
                            (
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            eqs32 * 43/32
                            - \quarter-sharp-articulation
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            \startTextSpanOne
                            \once \override Staff.Accidental.stencil = ##f
                            a,32 * 51/32
                            - \natural-articulation
                            \big-half-harmonic
                            eqs32 * 65/32
                            \tweak style #'harmonic
                            aqf,32 * 85/32
                            \tweak style #'harmonic
                            f,32 * 25/8
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
                                        c'1
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #right
                            fqs,32 * 123/32
                            \stopTextSpanTwo
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #12.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            eqs,32 * 15/4
                            a,32 * 7/2
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            \startTextSpanOne
                            \big-half-harmonic
                            eqs,32 * 51/16
                            \big-half-harmonic
                            aqf,32 * 45/16
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #12.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            \startTextSpanTwo
                            f,32 * 5/2
                            \stopTextSpanOne
                            - \tweak padding #10.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            \startTextSpanOne
                            \big-half-harmonic
                            fqs,32 * 71/32
                            \big-half-harmonic
                            eqs,32 * 2
                            a,32 * 29/16
                            \tweak style #'harmonic
                            eqs,32 * 27/16
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #12.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "spz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanTwo
                            - \tweak padding #10.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanOne
                            aqf,32 * 51/32
                            \once \override Staff.Accidental.stencil = ##f
                            \tweak style #'harmonic
                            f,32 * 25/16
                            - \natural-articulation
                            \big-half-harmonic
                            \once \override Staff.Accidental.stencil = ##f
                            fqs,32 * 49/32
                            - \quarter-sharp-articulation
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            ]
                        }
                        \revert TupletNumber.text
                        s1 * 5/12
                        s1 * 7/12
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

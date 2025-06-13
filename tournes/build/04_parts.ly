    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
            ^ \markup {
            \hspace #0.5
              \raise #14.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #" 108 " 
              }
            }
              %! +SCORE
        %%% \pageBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
        %%% \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 12/8
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \noPageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 20 12 10 2 16 24)))
            \time 3/4
            s1 * 3/4
            - \tweak padding #18
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation #2 #1 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #2 #" 72 " 
              }
            }
            - \tweak bound-details.right.padding 7
            \startTextSpan
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \time 4/4
            s1 * 1
            \stopTextSpan
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \break
              %! +PARTS
            \break
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0.5 25.5 16 13 6 12 17)))
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \break
              %! +PARTS
            \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-3 26.5 21 15 8 11.5 18)))
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \break
              %! +PARTS
            \break
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            - \tweak padding -5
            _ \extremely-long-fermata
            - \tweak padding 5.5
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \override #'(font-size . 4) { "30\"" } }
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            R1 * 1/2
            - \tweak font-size #'10
            - \tweak padding -5
            _ \middle-fermata
            - \tweak padding 5.5
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \override #'(font-size . 4) { "15\"" } }
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            - \tweak padding -5
            _ \extremely-long-fermata
            - \tweak padding 5.5
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \override #'(font-size . 4) { "30\"" } }
              %! +SCORE
        %%% \break
              %! +PARTS
            \break
            \once \override Score.BarLine.transparent = ##f
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
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
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
                                        #:hspace -0.1
                                        #:dynamic "pp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "whistle" } \hspace #0.5 }
                            \startTextSpanOne
                            \<
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
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "whistle" }
                            \startTextSpanOne
                            \>
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
                            )
                            \stopTextSpanOne
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
                        - \tenuto
                        \mf
                        - \tweak font-size 2
                        - \tweak padding #7.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "( M )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        r8.
                        <gqf' af''>16
                        :128
                        - \espressivo
                        - \tenuto
                        \mp
                        \>
                        <gqf' af''>4
                        :32
                        - \espressivo
                        - \tenuto
                        <gqf' af''>8
                        :64
                        - \espressivo
                        - \tenuto
                        <gqf' af''>4
                        :32
                        - \espressivo
                        - \tenuto
                        <gqf' af''>8
                        :64
                        - \espressivo
                        - \tenuto
                        <gqf' af''>4
                        :32
                        - \espressivo
                        - \tenuto
                        \ppp
                        <gqf' af''>8
                        :64
                        - \espressivo
                        - \tenuto
                        <gqf' af''>4
                        :32
                        - \espressivo
                        - \tenuto
                        <gqf' af''>8
                        :64
                        - \espressivo
                        - \tenuto
                        \stopTextSpan
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
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
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
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
                            )
                            \stopTextSpanOne
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
                        \times 9/11
                        {
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
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanOne
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            )
                            \stopTextSpanOne
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
                            b''64
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
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanOne
                            b''64
                            e'''64
                            c'''64
                            d'''64
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
                            c'''64.
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
                            e'''64.
                            b''64.
                            e'''64.
                            c'''64.
                            d'''64.
                            c'''64.
                            e'''64.
                            b''64.
                            e'''64.
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
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanOne
                            c'''64.
                            d'''64.
                            c'''64.
                            \stopTextSpanOne
                            e'''64.
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
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "whistle" } \hspace #0.5 }
                            \startTextSpanOne
                            e'''32
                            c'''32
                            d'''32
                            c'''32
                            e'''32
                            b''32
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
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanOne
                            e'''32
                            c'''32
                            d'''32
                            )
                            \stopTextSpanOne
                            r16
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
                        s1 * 3/4
                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Piccolo }
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        \tweak style #'la
                        ds'8.
                        \pppp
                        _ \tremolo-articulation
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #3.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "air" } \hspace #0.5 }
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            ds'16
                        }
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        \tweak style #'la
                        b'8.
                        _ \tremolo-articulation
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b'16
                        }
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        \tweak style #'la
                        cs'8
                        _ \tremolo-articulation
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            cs'16
                            \!
                            \stopTextSpanOne
                        }
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Alto }
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                          %! +SCORE
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                        s1 * 3/4
                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Traffic Cone IN }
                        s1 * 1/2
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
                            a32 * 51/32
                            [
                            (
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding 9.5
                            \startBowSpan #'((0 . 0.2) (0.022222222222222223 . 1) (0.044444444444444446 . 1.5) (0.06666666666666667 . 5) (0.1111111111111111 . 3) (0.15555555555555556 . 2) (0.2 . 3) (0.2888888888888889 . 2) (0.33333333333333337 . 1) (0.4 . 2) (0.4222222222222222 . 1) (0.4444444444444444 . 3) (0.4666666666666666 . 1) (0.5111111111111111 . 2) (0.5555555555555555 . 3) (0.5999999999999999 . 4) (0.6888888888888888 . 5) (0.7333333333333332 . 0.5) (0.7999999999999998 . 5) (0.8222222222222221 . 0.5) (0.8444444444444443 . 5) (0.8666666666666666 . 0.5) (0.911111111111111 . 1) (0.9555555555555554 . 2) (0.9999999999999998 . 5))
                            gs32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            gs32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 65/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ds'32 * 21/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 97/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 111/32
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
                            \once \override Beam.grow-direction = #right
                            b32 * 123/32
                            \stopTextSpanOne
                            [
                            (
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 15/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 7/2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 51/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 45/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            ds'32 * 5/2
                            a32 * 71/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            gs32 * 29/16
                            b32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 25/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 49/32
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
                            gs32 * 51/32
                            [
                            (
                            a32 * 51/32
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 27/16
                            - \sharp-articulation
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            a32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 65/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 21/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            ds'32 * 97/32
                            gs32 * 111/32
                            b32 * 31/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            )
                            \stopBowSpan
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #right
                            b32 * 123/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \stopTextSpanOne
                            [
                            (
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding 9.5
                            \startBowSpan #'((0 . 2) (0.02857142857142857 . 5) (0.05714285714285714 . 5) (0.14285714285714285 . 3) (0.22857142857142856 . 1) (0.2571428571428571 . 2) (0.34285714285714286 . 3) (0.37142857142857144 . 2) (0.4 . 3) (0.4285714285714286 . 2) (0.5142857142857143 . 1) (0.6000000000000001 . 5) (0.6285714285714287 . 0.5) (0.7142857142857144 . 2) (0.742857142857143 . 1) (0.7714285714285716 . 3) (0.8000000000000002 . 4) (0.8857142857142859 . 5) (0.9714285714285716 . 0.5) (1.0000000000000002 . 1))
                            ds'32 * 15/4
                            gs32 * 7/2
                            )
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    a16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    gs16 * 1/8
                                    - \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'16 * 1/8
                                    - \natural-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    a32 * 51/16
                                    _ \accent
                                }
                            >>
                            b32 * 45/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            (
                            b32 * 5/2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            )
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    ds'16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs'16 * 1/8
                                    - \sharp-articulation
                                    e'16 * 1/8
                                    c'16 * 1/8
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    ds'32 * 71/32
                                    _ \accent
                                }
                            >>
                            a32 * 2
                            (
                            gs32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            gs32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 25/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 49/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ]
                            \revert Voice.Stem.direction
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #right
                            ds'32 * 123/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            [
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-three-quarters-closed \hspace #0.5 }
                            \startTextSpanOne
                            ds'32 * 15/4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 7/2
                            ds'32 * 51/16
                            )
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            \startTextSpanOne
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    b16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    as'16 * 1/8
                                    - \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    gs'16 * 1/8
                                    - \sharp-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    b32 * 45/16
                                    _ \accent
                                }
                            >>
                            a32 * 5/2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            (
                            a32 * 71/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            b32 * 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 27/16
                            - \sharp-articulation
                            a32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 25/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            gs32 * 49/32
                            - \sharp-articulation
                            \stopBowSpan
                            ]
                            \revert Voice.Stem.direction
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #right
                            b32 * 117/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            )
                            [
                            - \tweak padding 9.5
                            \startBowSpan #'((0 . 3) (0.007194244604316547 . 4) (0.014388489208633094 . 5) (0.02158273381294964 . 0.5) (0.03597122302158273 . 3) (0.043165467625899276 . 2) (0.05035971223021582 . 1) (0.05755395683453236 . 5) (0.10071942446043164 . 0.5) (0.18705035971223022 . 5) (0.2302158273381295 . 2) (0.3165467625899281 . 1) (0.32374100719424465 . 5) (0.3309352517985612 . 3) (0.33812949640287776 . 4) (0.3525179856115109 . 2) (0.35971223021582743 . 4) (0.366906474820144 . 2) (0.37410071942446055 . 5) (0.41726618705035984 . 2) (0.5035971223021584 . 3) (0.5467625899280576 . 5) (0.6330935251798562 . 1) (0.6402877697841727 . 5) (0.6474820143884892 . 0.5) (0.6546762589928057 . 5) (0.6690647482014388 . 2) (0.6762589928057553 . 4) (0.6834532374100718 . 5) (0.6906474820143883 . 3) (0.7338129496402875 . 1) (0.8201438848920861 . 4) (0.8633093525179854 . 1) (0.9496402877697839 . 5) (0.9568345323741004 . 3) (0.9640287769784169 . 4) (0.9712230215827334 . 3) (0.9856115107913666 . 4) (0.992805755395683 . 5) (0.9999999999999996 . 0.5))
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    b16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'16 * 1/8
                                    - \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'16 * 1/8
                                    - \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'16 * 1/8
                                    - \flat-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    b32 * 99/32
                                    _ \accent
                                }
                            >>
                            b32 * 69/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "+ throat-scream" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanThree
                            a32 * 13/8
                            \once \override Staff.Accidental.stencil = ##f
                            gs32 * 47/32
                            - \sharp-articulation
                            ]
                            \revert Voice.Stem.direction
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #left
                            a32 * 43/32
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 49/32
                            - \sharp-articulation
                            )
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-half-closed \hspace #0.5 }
                            \startTextSpanOne
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    a16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    e'16 * 1/8
                                    - \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'16 * 1/8
                                    - \flat-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    a32 * 17/8
                                    _ \accent
                                }
                            >>
                            a32 * 3
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ]
                            (
                            \revert Voice.Stem.direction
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #left
                            b32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            [
                            b32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 27/16
                            - \sharp-articulation
                            gs32 * 29/16
                            )
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    b16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    gf'16 * 1/8
                                    - \flat-articulation
                                    f'16 * 1/8
                                    e''16 * 1/8
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    b32 * 65/32
                                    _ \accent
                                }
                            >>
                            b32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            (
                            ds'32 * 21/8
                            gs32 * 97/32
                            )
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    a16 * 1/8
                                    [
                                    (
                                    f'16 * 1/8
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'16 * 1/8
                                    - \natural-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    a32 * 111/32
                                    _ \accent
                                }
                            >>
                            b32 * 31/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            \stopTextSpanOne
                            ]
                            (
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-closed \hspace #0.5 }
                            \startTextSpanOne
                            \revert Voice.Stem.direction
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #right
                            b32 * 123/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            [
                            ds'32 * 15/4
                            a32 * 7/2
                            gs32 * 51/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            )
                            \stopTextSpanOne
                            - \tweak padding #10
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \woodwind-open \hspace #0.5 }
                            - \tweak bound-details.right.text \woodwind-three-quarters-closed
                            \startTextSpanOne
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    g16 * 1/8
                                    [
                                    (
                                    e'16 * 1/8
                                    a'16 * 1/8
                                    \once \override Staff.Accidental.stencil = ##f
                                    ds''16 * 1/8
                                    - \sharp-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    gs32 * 45/16
                                    _ \accent
                                }
                            >>
                            b32 * 5/2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            (
                            b32 * 71/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ds'32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 51/32
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 25/16
                            - \sharp-articulation
                            b32 * 49/32
                            \stopBowSpan
                            ]
                            \revert Voice.Stem.direction
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #left
                            a32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            [
                            - \tweak padding 9.5
                            \startBowSpan #'((0 . 3) (0.022727272727272728 . 2) (0.03409090909090909 . 1) (0.045454545454545456 . 5) (0.05681818181818182 . 0.5) (0.125 . 5) (0.26136363636363635 . 2) (0.2727272727272727 . 1) (0.28409090909090906 . 5) (0.2954545454545454 . 3) (0.43181818181818177 . 4) (0.49999999999999994 . 2) (0.5227272727272727 . 4) (0.5340909090909091 . 2) (0.5454545454545454 . 5) (0.5568181818181818 . 2) (0.625 . 3) (0.7613636363636364 . 5) (0.7727272727272727 . 1) (0.7840909090909091 . 5) (0.7954545454545454 . 0.5) (0.9318181818181818 . 5) (1.0 . 0.5))
                            a32 * 51/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 27/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 29/16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 65/32
                            - \sharp-articulation
                            a32 * 73/32
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            )
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    a16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'16 * 1/8
                                    - \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''16 * 1/8
                                    - \natural-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    a32 * 21/8
                                    _ \accent
                                }
                            >>
                            gs32 * 97/32
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    b16 * 1/8
                                    [
                                    (
                                    f16 * 1/8
                                    \once \override Staff.Accidental.stencil = ##f
                                    e'16 * 1/8
                                    - \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs'16 * 1/8
                                    - \sharp-articulation
                                    )
                                    ]
                                }
                                \context Voice = "bassclarinet voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    b32 * 111/32
                                    _ \accent
                                }
                            >>
                            b32 * 31/8
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \stopBowSpan
                            \stopTextSpanOne
                            \stopTextSpanThree
                            ]
                            \revert Voice.Stem.direction
                        }
                        \revert TupletNumber.text
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { B-flat Soprano }
                        ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Traffic Cone OUT }
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
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
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
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
                        \pp
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
                        >4
                        - \tenuto
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
                            g'64
                            \ff
                            [
                            (
                            \>
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
                            e'64
                            [
                            (
                            f'64
                            g'64
                            e'64
                            g'64
                            a'64
                            g'64
                            e'64
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
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \set fontSize = #-3
                            \my-hack-slash
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g'32
                            [
                            (
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            e'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            a'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            e'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            e'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            a'32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g'32
                            )
                            r16
                            ]
                            \set fontSize = #-1
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
                        \ppp
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
                        \ottava 0
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                        s1 * 1
                        s1 * 1
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
                            \clef "treble"
                            c'''64.
                            [
                            (
                            e'''64.
                            b''64.
                            e'''64.
                            c'''64.
                            d'''64.
                            c'''64.
                            e'''64.
                            b''64.
                            e'''64.
                            c'''64.
                            d'''64.
                            c'''64.
                            e'''64.
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
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.Clef.X-extent = ##f
                          %! +SCORE
                    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \staff-line-count 1
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.Clef.stencil = ##f
                        \clef "percussion"
                        \afterGrace
                        \tweak style #'cross
                        c'2
                        - \tremolo-articulation
                        \pppp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "bellows" } \hspace #0.5 }
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
                            \!
                            \stopTextSpanOne
                        }
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
                \context timeSignatureStaff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 3/4
                        s1 * 1/2
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                        s1 * 1
                        s1 * 1
                        s1 * 5/8
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                        s1 * 1/4
                        s1 * 1/2
                        s1 * 1/4
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
                        >4
                        - \tenuto
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
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                        \clef "treble"
                        <af ef''>4
                        - \accent
                        - \tweak padding 9.5
                        \startBowSpan #'((0 . 0.2) (0.012738853503184714 . 1) (0.025477707006369428 . 0.5) (0.038216560509554146 . 1) (0.0445859872611465 . 0.2) (0.050955414012738856 . 3) (0.05732484076433121 . 0.5) (0.08280254777070065 . 1) (0.09554140127388536 . 2) (0.11464968152866242 . 1) (0.12738853503184713 . 5) (0.14012738853503184 . 0.5) (0.15286624203821655 . 5) (0.1592356687898089 . 0.5) (0.16560509554140126 . 5) (0.17197452229299362 . 0.5) (0.19745222929936304 . 5) (0.21019108280254775 . 0.5) (0.22929936305732482 . 5) (0.24203821656050953 . 0.5) (0.25477707006369427 . 0.2) (0.267515923566879 . 1) (0.27388535031847133 . 0.5) (0.2802547770700637 . 1) (0.28662420382165604 . 0.2) (0.31210191082802546 . 3) (0.3248407643312102 . 0.5) (0.34394904458598724 . 1) (0.35668789808917195 . 2) (0.36942675159235666 . 1) (0.38216560509554137 . 5) (0.3885350318471337 . 0.5) (0.3949044585987261 . 5) (0.40127388535031844 . 0.5) (0.42675159235668786 . 5) (0.43949044585987257 . 0.5) (0.45859872611464964 . 5) (0.47133757961783435 . 0.5) (0.48407643312101906 . 5) (0.49681528662420377 . 0.5) (0.5031847133757962 . 0.2) (0.5095541401273885 . 1) (0.5159235668789809 . 0.5) (0.5414012738853503 . 1) (0.554140127388535 . 0.2) (0.5732484076433121 . 3) (0.5859872611464968 . 0.5) (0.5987261146496815 . 1) (0.6114649681528662 . 2) (0.6178343949044586 . 1) (0.6242038216560509 . 5) (0.6305732484076433 . 0.5) (0.6560509554140127 . 5) (0.6687898089171974 . 0.5) (0.6878980891719745 . 5) (0.7006369426751592 . 0.5) (0.7133757961783439 . 5) (0.7261146496815286 . 0.5) (0.732484076433121 . 5) (0.7388535031847133 . 0.5) (0.7452229299363057 . 0.2) (0.7707006369426751 . 1) (0.7834394904458598 . 0.5) (0.8025477707006369 . 1) (0.8152866242038216 . 0.2) (0.8280254777070063 . 3) (0.840764331210191 . 0.5) (0.8471337579617834 . 1) (0.8535031847133757 . 2) (0.8598726114649681 . 1) (0.8853503184713375 . 5) (0.8980891719745222 . 0.5) (0.9171974522292993 . 5) (0.929936305732484 . 0.5) (0.9426751592356687 . 5) (0.9554140127388534 . 0.5) (0.9617834394904458 . 5) (0.9681528662420381 . 0.5) (0.9745222929936305 . 5) (0.9999999999999999 . 0.5))
                        \times 4/5
                        {
                            <af ef''>16
                            - \accent
                            [
                            <af ef''>16
                            - \accent
                            <af ef''>16
                            - \accent
                            <af ef''>16
                            - \accent
                            <af ef''>16
                            - \accent
                            ]
                        }
                        <af ef''>4
                        - \accent
                        \times 2/3
                        {
                            <af ef''>16
                            - \accent
                            [
                            <af ef''>16.
                            - \accent
                            <af ef''>16
                            - \accent
                            <af ef''>16.
                            - \accent
                            <af ef''>16
                            - \accent
                            ]
                        }
                        <af ef''>4
                        - \accent
                        <af ef''>4
                        - \accent
                        <af ef''>4
                        - \accent
                        \times 2/3
                        {
                            <af ef''>16
                            - \accent
                            [
                            <af ef''>16.
                            - \accent
                            <af ef''>16
                            - \accent
                            <af ef''>16.
                            - \accent
                            <af ef''>16
                            - \accent
                            \stopBowSpan
                            ]
                        }
                        <af ef''>4
                        - \accent
                        - \tweak padding 9.5
                        \startBowSpan #'((0 . 0.5) (0.01818181818181818 . 2) (0.03636363636363636 . 1) (0.05454545454545454 . 2) (0.09090909090909091 . 0.5) (0.16363636363636364 . 1) (0.21818181818181817 . 0.5) (0.2545454545454545 . 2) (0.2909090909090909 . 1) (0.32727272727272727 . 2) (0.34545454545454546 . 0.5) (0.36363636363636365 . 1) (0.38181818181818183 . 5) (0.4181818181818182 . 0.5) (0.49090909090909096 . 5) (0.5454545454545455 . 0.5) (0.5818181818181819 . 5) (0.6181818181818183 . 0.5) (0.6545454545454547 . 2) (0.6727272727272728 . 1) (0.690909090909091 . 2) (0.7090909090909092 . 0.5) (0.7454545454545456 . 1) (0.8181818181818183 . 0.5) (0.8727272727272729 . 2) (0.9090909090909093 . 1) (0.9454545454545457 . 2) (0.981818181818182 . 0.5) (1.0000000000000002 . 1))
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            <af ef''>16
                            - \accent
                            [
                            <af ef''>16
                            - \accent
                            <af ef''>16
                            - \accent
                            <af ef''>16
                            - \accent
                            <af ef''>16
                            - \accent
                            \stopBowSpan
                            ]
                        }
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "violin staff"
                {
                    \context Voice = "violin voice"
                    {
                        \big-half-harmonic
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                          %! +SCORE
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                        bqs4
                        - \tenuto
                        \p
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #3.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch, tasto" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        \<
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \ff
                        r16
                        \big-half-harmonic
                        bqs8.
                        - \tenuto
                        \mp
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
                                        #:hspace -0.1
                                        #:dynamic "ppp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "flaut. moltiss. + tasto" } \hspace #0.5 }
                            \startTextSpanOne
                            \<
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
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size #0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "2/3 scratch + pont. moltiss." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpanOne
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
                            \stopTextSpanOne
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
                            \big-half-harmonic
                            \once \override Beam.grow-direction = #left
                            fs'32 * 51/32
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
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #11.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/4 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpanTwo
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            \startTextSpanOne
                            g32 * 51/32
                            \tweak style #'harmonic
                            fqs'32 * 27/16
                            g32 * 29/16
                            gqf'32 * 65/32
                            \>
                            g32 * 73/32
                            \tweak style #'harmonic
                            fs'32 * 21/8
                            \stopTextSpanOne
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            \startTextSpanOne
                            g32 * 97/32
                            \tweak style #'harmonic
                            fqs'32 * 111/32
                            g32 * 31/8
                            )
                            \stopTextSpanOne
                            ]
                            - \tweak padding #9.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            - \tweak bound-details.right.padding -4
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
                            \once \override Beam.grow-direction = #right
                            \tweak style #'harmonic
                            gqf'32 * 123/32
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
                            [
                            (
                            g32 * 15/4
                            )
                            \stopTextSpanOne
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 7/2
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                            r32 * 51/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                            r32 * 45/16
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                            r32 * 5/2
                            \big-half-harmonic
                            fs'32 * 71/32
                            - \tenuto
                            (
                            - \tweak padding #9
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-down
                            \startTextSpanOne
                            \>
                            g32 * 2
                            \big-half-harmonic
                            fqs'32 * 29/16
                            )
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 27/16
                            g32 * 51/32
                            - \tenuto
                            (
                            \tweak style #'harmonic
                            gqf'32 * 25/16
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
                            \stopTextSpanTwo
                            \once \override Rest.stencil = #ly:text-interface::print
                            \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                            r32 * 49/32
                            ]
                        }
                        \revert TupletNumber.text
                        s1 * 3/4
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \mp
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #3.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch, tasto" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        r16
                        [
                        \big-half-harmonic
                        bqs8.
                        - \tenuto
                        ]
                        ~
                        \big-half-harmonic
                        bqs16
                        [
                        r16
                        r16
                        \big-half-harmonic
                        bqs16
                        - \tenuto
                        ]
                        ~
                        \big-half-harmonic
                        bqs8.
                        r16
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        r8.
                        [
                        \big-half-harmonic
                        bqs16
                        - \tenuto
                        ]
                        \<
                        ~
                        \big-half-harmonic
                        bqs8.
                        [
                        r16
                        ]
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        r8
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        r16
                        [
                        \big-half-harmonic
                        bqs16
                        - \tenuto
                        ~
                        \big-half-harmonic
                        bqs8
                        ]
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \ff
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \big-half-harmonic
                        bqs4
                        - \tenuto
                        \stopTextSpanOne
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                         )
                         #0.5
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                          %! +SCORE
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                        \clef "bass"
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \pp
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
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \f
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            eqs,16
                        }
                        r4
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
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \>
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                         )
                         #0.5
                        \afterGrace
                        \tweak style #'harmonic-mixed
                        eqs,4
                        - \espressivo
                        - \tenuto
                        \ppp
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
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
                            \override Voice.Stem.direction = #DOWN
                            \once \override Beam.grow-direction = #left
                            \tweak style #'harmonic
                            a,32 * 51/32
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
                            [
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #6
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/4 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "spz." }
                            \startTextSpanTwo
                            - \tweak padding #3.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            - \tweak bound-details.right.text \normale-bow-rotation
                            \startTextSpanOne
                            \>
                            \big-half-harmonic
                            e,32 * 51/32
                            \tweak style #'harmonic
                            aqf,32 * 27/16
                            \big-half-harmonic
                            eqs,32 * 29/16
                            \big-half-harmonic
                            af,32 * 65/32
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
                            \stopTextSpanTwo
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \override Dots.staff-position = #2
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    f,16 * 16/43
                                    [
                                    (
                                    - \tweak Glissando.thickness #2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \tweak style #'harmonic
                                    f'16 * 16/43
                                    - \tweak Glissando.thickness #2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    bf,16 * 16/43
                                    - \flat-articulation
                                    )
                                    ]
                                }
                                \context Voice = "cello voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    f,32 * 73/32
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
                                    _ \accent
                                }
                            >>
                            \once \override Staff.Accidental.stencil = ##f
                            af,32 * 21/8
                            - \flat-articulation
                            (
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            - \tweak padding #8.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 spz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3.5
                            \startTextSpanTwo
                            - \tweak padding #6
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                            - \tweak bound-details.right.padding -3.5
                            \startTextSpanOne
                            \>
                            \big-half-harmonic
                            aqf,32 * 97/32
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
                            \stopTextSpanTwo
                            <<
                                \context Voice = "On_Beat_Grace_Container"
                                {
                                      %! trinton.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    \override Dots.staff-position = #2
                                    \my-hack-slash
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \voiceOne
                                    \tweak style #'harmonic
                                    gqs,16 * 16/43
                                    [
                                    (
                                    - \tweak Glissando.thickness #2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Staff.Accidental.stencil = ##f
                                    \tweak style #'harmonic
                                    gqs'16 * 16/43
                                    - \quarter-sharp-articulation
                                    - \tweak Glissando.thickness #2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Staff.Accidental.stencil = ##f
                                    \tweak style #'harmonic
                                    a,16 * 16/43
                                    - \natural-articulation
                                    - \tweak Glissando.thickness #2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    a'16 * 16/43
                                    - \natural-articulation
                                    )
                                    ]
                                }
                                \context Voice = "cello voice Anchor"
                                {
                                    \once \override Stem.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \voiceTwo
                                    \tweak style #'harmonic
                                    gqs,32 * 111/32
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
                                    _ \accent
                                }
                            >>
                            \tweak style #'harmonic
                            a,32 * 31/8
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
                            - \tweak font-name "Bodoni72 Book Italic" 
                            - \tweak font-size 0
                            ^ \markup { "1/2 spz." }
                            ]
                            \revert Voice.Stem.direction
                        }
                        \revert TupletNumber.text
                        s1 * 1
                        s1 * 3/4
                        \big-half-harmonic
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf'16
                        - \tweak font-size #3
                        - \snappizzicato
                        \ff
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        ^ \markup { \hspace #-1 "pizz." }
                        [
                        \override Dots.staff-position = #2
                        \revert Staff.Stem.stemlet-length
                        c''8.
                        \mp
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        ^ \markup { "arco + flaut." }
                        ]
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
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
                        c''2.
                        ~
                        c''2.
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 \override #'(font-size . 5) {.} )
                                            }
                                        }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8.
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
                        a'16
                        \!
                        )
                        ]
                        \big-half-harmonic
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf'16
                        - \tweak font-size #3
                        - \snappizzicato
                        \ff
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        ^ \markup { \hspace #-1 "pizz." }
                        [
                        \override Dots.staff-position = #2
                        \revert Staff.Stem.stemlet-length
                        bf'16
                        \mp
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        ^ \markup { "arco + flaut." }
                        ]
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
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
                        bf'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        [
                        ~
                        bf'16
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
                        af'16
                        \!
                        )
                        ]
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                          %! +SCORE
                    %%% \once \override Staff.Clef.X-extent = ##f
                          %! +SCORE
                    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                        \staff-line-count 1
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Staff.Clef.stencil = ##f
                        \clef "percussion"
                        \afterGrace
                        \tweak style #'la
                        c'2
                        \ppp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak font-size 0
                        - \tweak padding #3
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
                            \!
                            \stopTextSpanOne
                        }
                          %! +SCORE
                    %%% \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                    %%% \once \override Rest.transparent = ##t
                          %! +SCORE
                    %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                    %%% \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

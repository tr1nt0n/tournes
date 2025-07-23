    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 7/8
            s1 * 7/8
              %! +PARTS
            ^ \markup {
              %! +PARTS
            \hspace #0
              %! +PARTS
              \raise #7 \with-dimensions-from \null
              %! +PARTS
              \override #'(font-size . 5.5)
              %! +PARTS
              \concat {
              %! +PARTS
                  \abjad-metronome-mark-markup #3 #0 #2 #" 84 " 
              %! +PARTS
              }
              %! +PARTS
            }
              %! +SCORE
        %%% ^ \markup {
              %! +SCORE
        %%% \hspace #1
              %! +SCORE
          %%% \raise #14.5 \with-dimensions-from \null
              %! +SCORE
          %%% \override #'(font-size . 5.5)
              %! +SCORE
          %%% \concat {
              %! +SCORE
              %%% \abjad-metronome-mark-markup #3 #0 #2 #" 84 " 
              %! +SCORE
          %%% }
              %! +SCORE
        %%% }
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 15 10 16.5 4 16 15)))
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1.5 14 8 10 2 14 22)))
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 7/12
            s1 * 7/12
              %! +PARTS
              %! +PARTS
            - \tweak padding #10
              %! +PARTS
            - \abjad-solid-line-with-arrow
              %! +PARTS
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
              %! +PARTS
            - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #3 #0 #2 #" 72 "   }}
              %! +PARTS
            \startTextSpan
              %! +SCORE
              %! +SCORE
        %%% - \tweak padding #18
              %! +SCORE
        %%% - \abjad-solid-line-with-arrow
              %! +SCORE
        %%% - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
              %! +SCORE
        %%% - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #3 #0 #2 #" 72 "   }}
              %! +SCORE
        %%% \startTextSpan
              %! +SCORE
        %%% \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
        %%% \pageBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
        %%% - \tweak padding 22.5
              %! +SCORE
        %%% ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { START Tape IX }
              %! +SCORE
        %%% \stopTextSpan
              %! +PARTS
            \stopTextSpan
            \time 2/8
            s1 * 1/4
              %! +SCORE
        %%% \noBreak
            \time 9/8
            s1 * 9/8
              %! +SCORE
        %%% \noBreak
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 4/12
            s1 * 1/3
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (5 23 20.5 17.5 9.5 23 24)))
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% - \tweak padding 17
              %! +SCORE
        %%% ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { START Tape X }
              %! +PARTS
            \noBreak
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            - \tweak padding #10
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Accel." } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #3 #0 #2 #" 84 "   }}
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \stopTextSpan
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \pageBreak
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'group2
                {
                    \context GrandStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "flute staff"
                            {
                                \context Voice = "flute voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
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
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <gqf' af''>4
                                        :32
                                        - \espressivo
                                        - \tenuto
                                        \p
                                        - \tweak font-size 2
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( M )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpan
                                        <gqf' af''>4
                                        :32
                                        - \espressivo
                                        - \tenuto
                                        \stopTextSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/13
                                    {
                                        \once \override Staff.OttavaBracket.staff-padding = 3.5
                                        \ottava 1
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8.
                                        - \accent
                                        ^ \markup \center-align { \concat { G-49 } }
                                        [
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "11°/sounding A-flat ( with cello )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding 8.5
                                        \startBowSpan #'((0 . 4) (0.02040816326530612 . 3) (0.04081632653061224 . 5) (0.061224489795918366 . 3) (0.08163265306122448 . 4) (0.1020408163265306 . 3) (0.12244897959183672 . 5) (0.16326530612244897 . 3) (0.2040816326530612 . 4) (0.26530612244897955 . 2) (0.32653061224489793 . 3) (0.36734693877551017 . 1) (0.42857142857142855 . 3) (0.4897959183673469 . 1) (0.5306122448979592 . 2) (0.5714285714285715 . 1) (0.5918367346938777 . 2) (0.6122448979591838 . 0.5) (0.6326530612244899 . 1) (0.6530612244897961 . 0.5) (0.6734693877551022 . 1) (0.6938775510204084 . 0.7) (0.7346938775510207 . 1) (0.775510204081633 . 0.3) (0.8367346938775513 . 1) (0.8979591836734696 . 0.2) (0.9387755102040819 . 1.5) (1.0000000000000002 . 0.1))
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                    gf'''8
                                    - \accent
                                    [
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                    gf'''8.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                    gf'''8
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                    gf'''8.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                    gf'''8
                                    - \accent
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/15
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8
                                        - \accent
                                        ^ \markup \center-align { \concat { G-49 } }
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8.
                                        - \accent
                                        ]
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''4
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                                        gf'''8.
                                        - \accent
                                        \stopBowSpan
                                        \stopTextSpan
                                        \ottava 0
                                    }
                                    r2.
                                    <gqf' af''>2
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    \f
                                    - \tweak font-size 2
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "( M )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    <gqf' af''>2
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    <gqf' af''>2
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    \>
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    <gqf' af''>2
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    <gqf' af''>2
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    r4
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    r8.
                                    [
                                    <gqf' af''>16
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    ]
                                    ~
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    ~
                                    <gqf' af''>8.
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    r16
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    \pp
                                    r8
                                    [
                                    <gqf' af''>8
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    ]
                                    ~
                                    <gqf' af''>4
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    ~
                                    <gqf' af''>8
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    r8
                                    r8
                                    [
                                    <gqf' af''>8
                                    - \tweak stencil #ly:text-interface::print
                                    - \tweak text \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") { \char ##xe222 } }
                                    :32
                                    - \espressivo
                                    - \tenuto
                                    \stopTextSpan
                                    ]
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
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
                                        - \accent
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
                                        - \accent
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
                                        c'''64
                                        - \accent
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
                                        - \accent
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
                                        - \accent
                                        \fff
                                        [
                                        (
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 0
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "+ throat-scream" } \hspace #0.5 }
                                        \startTextSpanTwo
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
                                        c'''64
                                        - \accent
                                        \ff
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
                                        )
                                        r32
                                        \!
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
                                        - \accent
                                        \f
                                        [
                                        (
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        b''64
                                        e'''64
                                        c'''64
                                        d'''64
                                        )
                                        r32
                                        \!
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
                                        c'''32
                                        - \accent
                                        \mf
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        [
                                        (
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
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
                                        - \tweak circled-tip ##t
                                        \<
                                        d'''32
                                        c'''32
                                        e'''32
                                        b''32
                                        e'''32
                                        c'''32
                                        d'''32
                                        c'''32
                                        e'''32
                                        \mp
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 air" } \hspace #0.5 }
                                        \startTextSpanOne
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
                                        - \accent
                                        \mp
                                        \stopTextSpanOne
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
                                        - \tweak bound-details.right.text \markup \upright { "air" }
                                        \startTextSpanOne
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
                                    r2.
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Traffic Cone OUT }
                                    aqs2
                                    \p
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/5 air" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "1/2 air" }
                                    \startTextSpanOne
                                    \<
                                    aqs4
                                    \mf
                                    \stopTextSpanOne
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''8
                                    - \accent
                                    ^ \markup \center-align { \concat { -14 } }
                                    [
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "10°/sounding F-sharp ( with violin )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 8.5
                                    \startBowSpan #'((0 . 4) (0.1111111111111111 . 3) (0.18518518518518517 . 5) (0.2962962962962963 . 3) (0.3333333333333333 . 4) (0.4074074074074074 . 3) (0.48148148148148145 . 5) (0.5925925925925926 . 3) (0.7037037037037037 . 4) (0.7777777777777778 . 2) (0.8888888888888888 . 3) (0.9259259259259258 . 1) (0.9999999999999999 . 3))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''8.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''8
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''8.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''8
                                    - \accent
                                    ]
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''2.
                                    - \accent
                                    \stopBowSpan
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    bs''2.
                                    - \accent
                                    ^ \markup \center-align { \concat { -14 } }
                                    - \tweak padding 8.5
                                    \startBowSpan #'((0 . 3) (0.13636363636363635 . 4) (0.22727272727272727 . 2) (0.3181818181818182 . 1) (0.36363636363636365 . 0.5) (0.4090909090909091 . 1) (0.4545454545454546 . 0.5) (0.5 . 1) (0.5454545454545454 . 0.7) (0.6818181818181818 . 1) (0.7727272727272727 . 0.3) (0.8636363636363636 . 1) (0.9090909090909091 . 0.2) (0.9545454545454545 . 1.5) (0.9999999999999999 . 0.1))
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/15
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        bs''8
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        bs''8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        bs''8.
                                        - \accent
                                        ]
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        bs''4
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        bs''8.
                                        - \accent
                                        \stopBowSpan
                                        \stopTextSpan
                                    }
                                    gqs2
                                    \f
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/5 air" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \>
                                    gqs4
                                    gqs2
                                    gqs4
                                    gqs2
                                    gqs4
                                    gqs2
                                    gqs4
                                    gqs2
                                    \pp
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "4/5 air" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanOne
                                    r16
                                    [
                                    gqs8.
                                    ]
                                    ~
                                    gqs16
                                    [
                                    r16
                                    gqs8
                                    ]
                                    ~
                                    gqs4
                                    ~
                                    gqs8
                                    [
                                    r16
                                    gqs16
                                    \stopTextSpanOne
                                    ]
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context GrandStaff = "sub group 2"
                    <<
                        \tag #'voice3
                        {
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
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \ottava -2
                                    <
                                        \tweak style #'la
                                        d,,,
                                        \tweak style #'la
                                        e,,,
                                        \tweak style #'la
                                        f,,,
                                        \tweak style #'la
                                        g,,,
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
                                        d,,,
                                        \tweak style #'la
                                        e,,,
                                        \tweak style #'la
                                        f,,,
                                        \tweak style #'la
                                        g,,,
                                    >8
                                    - \tenuto
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
                                    >4
                                    - \tenuto
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
                                    >4
                                    - \tenuto
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
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
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
                                        >4
                                        - \tenuto
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
                                        >4
                                        - \tenuto
                                    }
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
                                    >2
                                    - \tenuto
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
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
                                        f,,,
                                        \tweak style #'la
                                        g,,,
                                        \tweak style #'la
                                        a,,,
                                        \tweak style #'la
                                        b,,,
                                    >16
                                    [
                                    r8.
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
                                    >2
                                    - \tenuto
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    r8.
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,,
                                        \tweak style #'la
                                        d,,
                                        \tweak style #'la
                                        e,,
                                        \tweak style #'la
                                        f,,
                                    >16
                                    - \tenuto
                                    ]
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,,
                                        \tweak style #'la
                                        d,,
                                        \tweak style #'la
                                        e,,
                                        \tweak style #'la
                                        f,,
                                    >8.
                                    [
                                    r16
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        e,,
                                        \tweak style #'la
                                        f,,
                                        \tweak style #'la
                                        g,,
                                        \tweak style #'la
                                        a,,
                                    >4
                                    - \tenuto
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        e,,
                                        \tweak style #'la
                                        f,,
                                        \tweak style #'la
                                        g,,
                                        \tweak style #'la
                                        a,,
                                    >4
                                    r8.
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        g,,
                                        \tweak style #'la
                                        a,,
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                    >16
                                    - \tenuto
                                    ]
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        g,,
                                        \tweak style #'la
                                        a,,
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                    >8.
                                    [
                                    r16
                                    ]
                                    r8
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                    >8
                                    - \tenuto
                                    \f
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                    >4
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                    >8
                                    [
                                    \ottava 0
                                    r16
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >16
                                    - \tenuto
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >8.
                                    [
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
                                        f,
                                        \tweak style #'la
                                        g,
                                        \tweak style #'la
                                        a,
                                        \tweak style #'la
                                        b,
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
                                        f,
                                        \tweak style #'la
                                        g,
                                        \tweak style #'la
                                        a,
                                        \tweak style #'la
                                        b,
                                    >4
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                        \tweak style #'la
                                        a,
                                        \tweak style #'la
                                        b,
                                    >8
                                    r8
                                    r16
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        a,
                                        \tweak style #'la
                                        b,
                                        \tweak style #'la
                                        c
                                        \tweak style #'la
                                        d
                                    >8.
                                    - \tenuto
                                    ]
                                    \>
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        a,
                                        \tweak style #'la
                                        b,
                                        \tweak style #'la
                                        c
                                        \tweak style #'la
                                        d
                                    >16
                                    [
                                    r16
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
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
                                        c
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                    >4
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                    >8
                                    [
                                    r8
                                    ]
                                    r16
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
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
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                    >16
                                    r8.
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >2
                                    - \tenuto
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    r16
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                        \tweak style #'la
                                        d'
                                        \tweak style #'la
                                        e'
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
                                        b
                                        \tweak style #'la
                                        c'
                                        \tweak style #'la
                                        d'
                                        \tweak style #'la
                                        e'
                                    >16
                                    [
                                    r8.
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \clef "treble"
                                    <
                                        \tweak style #'la
                                        d'
                                        \tweak style #'la
                                        e'
                                        \tweak style #'la
                                        f'
                                        \tweak style #'la
                                        g'
                                    >4
                                    - \tenuto
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        d'
                                        \tweak style #'la
                                        e'
                                        \tweak style #'la
                                        f'
                                        \tweak style #'la
                                        g'
                                    >4
                                    r8.
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        f'
                                        \tweak style #'la
                                        g'
                                        \tweak style #'la
                                        a'
                                        \tweak style #'la
                                        b'
                                    >16
                                    - \tenuto
                                    \pp
                                    ]
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        f'
                                        \tweak style #'la
                                        g'
                                        \tweak style #'la
                                        a'
                                        \tweak style #'la
                                        b'
                                    >8.
                                    [
                                    r16
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        a'
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                    >2
                                    - \tenuto
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    r8.
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                    >16
                                    - \tenuto
                                    ]
                                }
                            }
                        }
                        \tag #'voice4
                        {
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
                        }
                        \tag #'voice5
                        {
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
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \ottava -2
                                    <
                                        \tweak style #'la
                                        d,,,
                                        \tweak style #'la
                                        e,,,
                                        \tweak style #'la
                                        f,,,
                                        \tweak style #'la
                                        g,,,
                                    >4
                                    - \tenuto
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
                                    >4
                                    - \tenuto
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
                                    >4
                                    - \tenuto
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
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
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
                                        >4
                                        - \tenuto
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
                                        >4
                                        - \tenuto
                                    }
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
                                        f,,,
                                        \tweak style #'la
                                        g,,,
                                        \tweak style #'la
                                        a,,,
                                        \tweak style #'la
                                        b,,,
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
                                        c,,
                                        \tweak style #'la
                                        d,,
                                        \tweak style #'la
                                        e,,
                                        \tweak style #'la
                                        f,,
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        e,,
                                        \tweak style #'la
                                        f,,
                                        \tweak style #'la
                                        g,,
                                        \tweak style #'la
                                        a,,
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
                                        g,,
                                        \tweak style #'la
                                        a,,
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        b,,
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                    >2
                                    - \tenuto
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    \ottava 0
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                        \tweak style #'la
                                        a,
                                        \tweak style #'la
                                        b,
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
                                        a,
                                        \tweak style #'la
                                        b,
                                        \tweak style #'la
                                        c
                                        \tweak style #'la
                                        d
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
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
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
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
                                        b
                                        \tweak style #'la
                                        c'
                                        \tweak style #'la
                                        d'
                                        \tweak style #'la
                                        e'
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \clef "treble"
                                    <
                                        \tweak style #'la
                                        d'
                                        \tweak style #'la
                                        e'
                                        \tweak style #'la
                                        f'
                                        \tweak style #'la
                                        g'
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
                                        f'
                                        \tweak style #'la
                                        g'
                                        \tweak style #'la
                                        a'
                                        \tweak style #'la
                                        b'
                                    >4
                                    - \tenuto
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        a'
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                    >2
                                    - \tenuto
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    r8.
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                    >16
                                    - \tenuto
                                    ]
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                    >8.
                                    [
                                    r16
                                    ]
                                    r8
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \ottava -2
                                    \clef "bass"
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
                                    >4
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
                                    >8
                                    [
                                    r16
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
                                    ]
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
                                    >8.
                                    [
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
                                    >4
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
                                    >8
                                    [
                                    r8
                                    ]
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
                                    >8.
                                    - \tenuto
                                    ]
                                    \ottava 0
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context GrandStaff = "sub group 3"
                    <<
                        \tag #'voice6
                        {
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
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
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
                                    \big-half-harmonic
                                    bqs8
                                    - \tenuto
                                    \pp
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
                                    - \tenuto
                                    ]
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs8
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs8
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs8
                                    - \tenuto
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        bqs4
                                        - \tenuto
                                        \big-half-harmonic
                                        bqs4
                                        - \tenuto
                                    }
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \mf
                                    \stopTextSpanOne
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/17
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'!8.
                                        - \accent
                                        ^ \markup \center-align { \concat { -31 } }
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "7°/sounding F-sharp ( with clarinet )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding 8
                                        \startBowSpan #'((0 . 4) (0.07142857142857142 . 3) (0.14285714285714285 . 5) (0.25 . 3) (0.35714285714285715 . 4) (0.4285714285714286 . 3) (0.5357142857142857 . 5) (0.5714285714285714 . 3) (0.6428571428571428 . 4) (0.7142857142857142 . 2) (0.8214285714285713 . 3) (0.9285714285714284 . 1) (0.9999999999999998 . 3))
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'4
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'4
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8.
                                        - \accent
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 24/23
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'16.
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8.
                                        - \accent
                                        \stopBowSpan
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                    e'!2.
                                    - \accent
                                    ^ \markup \center-align { \concat { -31 } }
                                    - \tweak padding 8
                                    \startBowSpan #'((0 . 3) (0.045454545454545456 . 4) (0.09090909090909091 . 2) (0.13636363636363635 . 1) (0.2727272727272727 . 0.5) (0.36363636363636365 . 1) (0.4545454545454546 . 0.5) (0.5 . 1) (0.5454545454545454 . 0.7) (0.5909090909090908 . 1) (0.6363636363636362 . 0.3) (0.6818181818181817 . 1) (0.818181818181818 . 0.2) (0.909090909090909 . 1.5) (0.9999999999999999 . 0.1))
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 24/23
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8.
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        e'16.
                                        - \accent
                                        \stopBowSpan
                                        \stopTextSpan
                                        ]
                                    }
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    \ff
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "scratch, tasto" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \>
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs4
                                    - \tenuto
                                    \big-half-harmonic
                                    bqs2
                                    - \tenuto
                                    r8.
                                    [
                                    \big-half-harmonic
                                    bqs16
                                    - \tenuto
                                    \p
                                    ]
                                    ~
                                    \big-half-harmonic
                                    bqs8.
                                    [
                                    r16
                                    ]
                                    r8
                                    [
                                    \big-half-harmonic
                                    bqs8
                                    - \tenuto
                                    ]
                                    ~
                                    \big-half-harmonic
                                    bqs4
                                    \stopTextSpanOne
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \override Dots.staff-position = #2
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                                    \clef "bass"
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    - \espressivo
                                    - \tenuto
                                    \ff
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                    }
                                    r16
                                    [
                                    \override Dots.staff-position = #2
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
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    [
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    r16
                                    \override Dots.staff-position = #2
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
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    ~
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r8.
                                    r16
                                    [
                                    \override Dots.staff-position = #2
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
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    - \espressivo
                                    - \tenuto
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
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    ]
                                    \override Dots.staff-position = #2
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
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \>
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                    }
                                    r8.
                                    [
                                    \override Dots.staff-position = #2
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
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,8.
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    \override Dots.staff-position = #2
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
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                    }
                                    r8
                                    [
                                    \override Dots.staff-position = #2
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
                                    \ppp
                                    \stopTextSpanOne
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                        - \accent
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
                                        - \accent
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
                                        )
                                        \stopTextSpanOne
                                        r32
                                        \!
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
                                        - \accent
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
                                        )
                                        \stopTextSpanOne
                                        r32
                                        \!
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
                                        e'32
                                        - \accent
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
                                        \startTextSpanOne
                                        g'32
                                        a'32
                                        g'32
                                        e'32
                                        - \tweak circled-tip ##t
                                        \<
                                        a'32
                                        e'32
                                        \stopTextSpanOne
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                        \startTextSpanOne
                                        f'32
                                        g'32
                                        e'32
                                        g'32
                                        a'32
                                        g'32
                                        e'32
                                        a'32
                                        e'32
                                        \fff
                                        \stopTextSpanOne
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "3/4 scr." } \hspace #0.5 }
                                        \startTextSpanOne
                                        \>
                                        f'32
                                        g'32
                                        e'32
                                        g'32
                                        a'32
                                        \p
                                        \stopTextSpanOne
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                        \startTextSpanOne
                                        \<
                                        g'32
                                        e'32
                                        a'32
                                        e'32
                                        f'32
                                        \mf
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        g'32
                                        e'32
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
                                        - \accent
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
                                        a'64
                                        g'64
                                        e'64
                                        a'64
                                        e'64
                                        f'64
                                        \stopTextSpanOne
                                        g'64
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
                                        e'64
                                        - \accent
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
                                        - \tweak bound-details.left.text \markup \concat { \upright { "scr." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "flaut." }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        g'64
                                        a'64
                                        g'64
                                        e'64
                                        a'64
                                        e'64
                                        \stopTextSpanOne
                                        f'64
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
                                        g'64
                                        - \accent
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
                                        - \tweak bound-details.left.text \markup \concat { \upright { "scr." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "flaut." }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        e'64
                                        g'64
                                        a'64
                                        g'64
                                        e'64
                                        a'64
                                        \stopTextSpanOne
                                        e'64
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
                                        f'64
                                        - \accent
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
                                        - \tweak bound-details.left.text \markup \concat { \upright { "scr." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "flaut." }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        g'64
                                        e'64
                                        g'64
                                        a'64
                                        g'64
                                        e'64
                                        \stopTextSpanOne
                                        a'64
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
                                    s1 * 1/4
                                    s1 * 9/8
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
                                        \pp
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 0
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                                        \startTextSpanOne
                                        \<
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
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
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \mp
                                            \stopTextSpanOne
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \once \override Staff.OttavaBracket.staff-padding = 4.5
                                        \ottava 1
                                        \clef "treble"
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''!8
                                        - \accent
                                        ^ \markup \center-align { \concat { E+41 } }
                                        [
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "13°/sounding A-flat ( with flute )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding 9.5
                                        \startBowSpan #'((0 . 4) (0.058823529411764705 . 3) (0.11764705882352941 . 5) (0.1568627450980392 . 3) (0.21568627450980393 . 4) (0.27450980392156865 . 3) (0.3137254901960784 . 5) (0.3529411764705882 . 3) (0.3725490196078431 . 4) (0.392156862745098 . 2) (0.41176470588235287 . 3) (0.43137254901960775 . 1) (0.45098039215686264 . 3) (0.47058823529411753 . 1) (0.5098039215686273 . 2) (0.5490196078431371 . 1) (0.6078431372549018 . 2) (0.6666666666666665 . 0.5) (0.7058823529411763 . 1) (0.764705882352941 . 0.5) (0.8235294117647057 . 1) (0.8627450980392155 . 0.7) (0.9019607843137253 . 1) (0.9215686274509802 . 0.3) (0.9411764705882352 . 1) (0.9607843137254901 . 0.2) (0.9803921568627451 . 1.5) (1.0 . 0.1))
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/11
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        f'''8
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                    f'''!8
                                    - \accent
                                    ^ \markup \center-align { \concat { E+41 } }
                                    [
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                    f'''8.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                    f'''8
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                    f'''8.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                    f'''8
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
                                    ]
                                    \ottava 0
                                    r2.
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \clef "bass"
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,2
                                    - \espressivo
                                    - \tenuto
                                    \f
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                                    \startTextSpanOne
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,2
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,2
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \>
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,2
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,2
                                    - \espressivo
                                    - \tenuto
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                    }
                                    r8
                                    [
                                    \override Dots.staff-position = #2
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \tweak style #'harmonic-mixed
                                    eqs,8
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,8
                                    [
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    \override Dots.staff-position = #2
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    ~
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,8.
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    r8.
                                    \override Dots.staff-position = #2
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    - \espressivo
                                    - \tenuto
                                    \pp
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
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,8.
                                    [
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    ]
                                    r16
                                    [
                                    \override Dots.staff-position = #2
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \tweak style #'harmonic-mixed
                                    eqs,8.
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \tweak style #'harmonic-mixed
                                    eqs,4
                                    ~
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,16
                                    [
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    r16
                                    \override Dots.staff-position = #2
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
                                          (10 0 10.5 1 11 0)
                                          (11 0 11.5 -1 12 0)
                                     )
                                     #0.5
                                    \tweak style #'harmonic-mixed
                                    eqs,8
                                    - \espressivo
                                    - \tenuto
                                    ]
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
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    eqs,8
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        \stopTextSpanOne
                                    }
                                    r8
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()

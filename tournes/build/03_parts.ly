    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 26 9 16 7 24 25)))
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 13/16
            s1 * 13/16
              %! +SCORE
        %%% - \tweak padding 17
              %! +SCORE
        %%% ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { START Tape IV }
              %! +SCORE
        %%% \noBreak
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 8/16
            s1 * 1/2
              %! +PARTS
            ^ \markup {
              %! +PARTS
              \hspace #-9
              %! +PARTS
              \raise #11.5 \with-dimensions-from \null
              %! +PARTS
              \override #'(font-size . 5.5)
              %! +PARTS
              \concat {
              %! +PARTS
              [\abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #2 #0 #'(1 . 1)]
              %! +PARTS
                  \hspace #1
              %! +PARTS
                  \abjad-metronome-mark-markup #2 #0 #2 #" 108 " 
              %! +PARTS
              }
              %! +PARTS
            }
              %! +SCORE
        %%% ^ \markup {
              %! +SCORE
          %%% \hspace #-9
              %! +SCORE
          %%% \raise #17 \with-dimensions-from \null
              %! +SCORE
          %%% \override #'(font-size . 5.5)
              %! +SCORE
          %%% \concat {
              %! +SCORE
          %%% [\abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #2 #0 #'(1 . 1)]
              %! +SCORE
              %%% \hspace #1
              %! +SCORE
              %%% \abjad-metronome-mark-markup #2 #0 #2 #" 108 " 
              %! +SCORE
          %%% }
              %! +SCORE
        %%% }
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 12 9 14 3 23 23)))
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 13/8
            s1 * 13/8
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 17 17 14 5 8 8)))
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 10/16
            s1 * 5/8
              %! +SCORE
        %%% ^ \markup {
              %! +SCORE
          %%% \hspace #-9
              %! +SCORE
          %%% \raise #17 \with-dimensions-from \null
              %! +SCORE
          %%% \override #'(font-size . 5.5)
              %! +SCORE
          %%% \concat {
              %! +SCORE
          %%% [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]
              %! +SCORE
              %%% \hspace #1
              %! +SCORE
              %%% \abjad-metronome-mark-markup #2 #0 #2 #" 81 " 
              %! +SCORE
          %%% }
              %! +SCORE
        %%% }
              %! +PARTS
            ^ \markup {
              %! +PARTS
              \hspace #-9
              %! +PARTS
              \raise #4.5 \with-dimensions-from \null
              %! +PARTS
              \override #'(font-size . 5.5)
              %! +PARTS
              \concat {
              %! +PARTS
              [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]
              %! +PARTS
                  \hspace #1
              %! +PARTS
                  \abjad-metronome-mark-markup #2 #0 #2 #" 81 " 
              %! +PARTS
              }
              %! +PARTS
            }
              %! +SCORE
        %%% \noBreak
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 5/16
            s1 * 5/16
              %! +SCORE
        %%% \noBreak
              %! +SCORE
        %%% \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 12/8
            s1 * 3/2
              %! +PARTS
            ^ \markup {
              %! +PARTS
            \hspace #0
              %! +PARTS
              \raise #4.5 \with-dimensions-from \null
              %! +PARTS
              \override #'(font-size . 5.5)
              %! +PARTS
              \concat {
              %! +PARTS
                  \abjad-metronome-mark-markup #2 #1 #2 #" 40 " 
              %! +PARTS
              }
              %! +PARTS
            }
              %! +SCORE
        %%% ^ \markup {
              %! +SCORE
        %%% \hspace #2
              %! +SCORE
          %%% \raise #15 \with-dimensions-from \null
              %! +SCORE
          %%% \override #'(font-size . 5.5)
              %! +SCORE
          %%% \concat {
              %! +SCORE
              %%% \abjad-metronome-mark-markup #2 #1 #2 #" 40 " 
              %! +SCORE
          %%% }
              %! +SCORE
        %%% }
              %! +SCORE
        %%% \break
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 12 12 14.5 2 16 16.5)))
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% - \tweak padding 20
              %! +SCORE
        %%% ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #5 \box \line { START Tape V }
              %! +PARTS
              %! +PARTS
            - \tweak padding #10
              %! +PARTS
            - \abjad-solid-line-with-arrow
              %! +PARTS
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
              %! +PARTS
            - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {  [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]      \hspace #1      \abjad-metronome-mark-markup #2 #0 #2 #" 45 "   }}
              %! +PARTS
            - \tweak bound-details.right.padding 7.5
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
        %%% - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {  [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]      \hspace #1      \abjad-metronome-mark-markup #2 #0 #2 #" 45 "   }}
              %! +SCORE
        %%% - \tweak bound-details.right.padding 7.5
              %! +SCORE
        %%% \startTextSpan
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 19 19 14 2 19 18)))
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% \noBreak
              %! +PARTS
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \stopTextSpan
              %! +PARTS
            \stopTextSpan
              %! +SCORE
        %%% \noBreak
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
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
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
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "overblow + throat-scream" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
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
                                                    c'64
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 175/112
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
                                        \stopTextSpanTwo
                                        r32
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    f''16
                                    - \accent
                                    [
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "4°/sounding C ( with cello )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 4
                                    \startBowSpan #'((0 . 0.2) (0.5 . 4) (1.0 . 0.2))
                                    f''16
                                    - \accent
                                    f''16
                                    - \accent
                                    f''16
                                    - \accent
                                    f''16
                                    - \accent
                                    f''16
                                    - \accent
                                    f''16
                                    - \accent
                                    f''16
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
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
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "whistle" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
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
                                        \stopTextSpanTwo
                                        r16
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    df'16
                                    _ \f
                                    _ \staccatissimo
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "loud key clicks + pitch" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r8
                                    r8
                                    r8.
                                    r16
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \once \override Accidental.stencil = ##f
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \voiceOne
                                            c'16 * 1/8
                                            _ \f
                                            [
                                            (
                                            - \tweak stencil #abjad-flared-hairpin
                                            _ \>
                                            \once \override Staff.Accidental.stencil = ##f
                                            df'16 * 1/8
                                            - \flat-articulation
                                            c'16 * 1/8
                                            \once \override Staff.Accidental.stencil = ##f
                                            dqf'16 * 1/8
                                            - \quarter-flat-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            ef'16 * 1/8
                                            - \flat-articulation
                                            _ \p
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            c'16
                                            _ \accent
                                        }
                                    >>
                                    r8.
                                    r8
                                    r8.
                                    [
                                    dqf'16
                                    _ \f
                                    _ \staccatissimo
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }
                                    r8
                                    ]
                                    r4
                                    r16
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \once \override Accidental.stencil = ##f
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \voiceOne
                                            ef'16 * 1/8
                                            _ \f
                                            [
                                            (
                                            - \tweak stencil #abjad-flared-hairpin
                                            _ \>
                                            \once \override Staff.Accidental.stencil = ##f
                                            df'16 * 1/8
                                            - \flat-articulation
                                            c'16 * 1/8
                                            \once \override Staff.Accidental.stencil = ##f
                                            dqf'16 * 1/8
                                            - \quarter-flat-articulation
                                            \once \override Staff.Accidental.stencil = ##f
                                            ef'16 * 1/8
                                            - \flat-articulation
                                            _ \p
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            ef'16
                                            _ \accent
                                        }
                                    >>
                                    r4.
                                    r16
                                    [
                                    df'16
                                    _ \f
                                    _ \staccatissimo
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }
                                    \stopTextSpan
                                    ]
                                    r4
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
                                        [
                                        (
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "overblow" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "whistle" }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        e'''64
                                        b''64
                                        e'''64
                                        c'''64
                                        d'''64
                                        c'''64
                                        e'''64
                                        b''64
                                        \stopTextSpanOne
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
                                        ^ \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "( sim. )" } }
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
                                        b''64
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                        b''64
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                        b''64
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                        b''64
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                                        - \accent
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
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    ^ \markup \center-align { \concat { -14 } }
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "10°/sounding C-sharp ( with violin )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 7.5
                                    \startBowSpan #'((0 . 0.2) (0.14285714285714285 . 2) (0.2857142857142857 . 0.2) (0.42857142857142855 . 2) (0.5714285714285714 . 0.2) (0.7142857142857142 . 2) (0.857142857142857 . 0.2) (0.9999999999999998 . 2))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    \stopBowSpan
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    ^ \markup \center-align { \concat { -14 } }
                                    - \tweak padding 7.5
                                    \startBowSpan #'((0 . 0.2) (0.07142857142857142 . 2) (0.14285714285714285 . 0.2) (0.21428571428571427 . 2) (0.2857142857142857 . 0.2) (0.3571428571428571 . 2) (0.4285714285714285 . 0.2) (0.4999999999999999 . 2) (0.5714285714285713 . 0.2) (0.6428571428571427 . 2) (0.7142857142857141 . 0.2) (0.7857142857142855 . 2) (0.8571428571428569 . 0.2) (0.9285714285714283 . 2) (0.9999999999999997 . 0.2))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    ^ \markup \center-align { \concat { -14 } }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    as''4
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \times 2/3
                                    {
                                        \once \override Staff.OttavaBracket.staff-padding = 8
                                        \ottava 1
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''!32
                                        - \accent
                                        ^ \markup \center-align { \concat { -14 } }
                                        [
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "10°/sounding B-flat ( with violin )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding 10.5
                                        \startBowSpan #'((0 . 3) (0.050761421319796954 . 4) (0.15228426395939088 . 2) (0.20304568527918782 . 5) (0.25380710659898476 . 4) (0.40609137055837563 . 5) (0.45685279187817257 . 2) (0.5076142131979695 . 3) (0.6091370558375634 . 0.2) (0.6598984771573604 . 0.4) (0.7614213197969543 . 0.1) (0.8121827411167513 . 1) (0.8629441624365483 . 0.5) (0.8730964467005077 . 4) (0.9238578680203047 . 3) (0.9492385786802031 . 5) (1.0 . 0.2))
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32
                                        - \accent
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''''32
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''8
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''64.
                                    - \accent
                                    [
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''64.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''64.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''32
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''64.
                                    - \accent
                                    ]
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''8
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''32
                                    - \accent
                                    [
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''32.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''32
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''32.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    e''''32
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
                                    ]
                                    \ottava 0
                                    s1 * 1/2
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { Bass }
                                    s1 * 13/8
                                    s1 * 5/8
                                    s1 * 5/16
                                    \slapped
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds16
                                    \ff
                                    [
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \revert-noteheads
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    ff16
                                    ]
                                    (
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
                                    ff4
                                    ~
                                    ff2.
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 \override #'(font-size . 5) {.} )
                                                        }
                                                    }
                                    ~
                                    ff4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ff16
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
                                    eqf16
                                    \!
                                    )
                                    ]
                                    s1 * 3/4
                                    \override Dots.staff-position = #2
                                    gf2
                                    \mp
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gf8.
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
                                    fqs16
                                    \!
                                    )
                                    ]
                                    s1 * 5/8
                                    r2
                                    \slapped
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds16
                                    \f
                                    [
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \revert-noteheads
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    ff8.
                                    ]
                                    (
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
                                    ff4
                                    ~
                                    ff4.
                                    ~
                                    ff4
                                    ~
                                    ff2.
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ff8.
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
                                    eqf16
                                    \!
                                    )
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
                                    \override Dots.staff-position = #2
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                                    \clef "bass"
                                    df,2.
                                    \fp
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \<
                                    \revert Dots.staff-position
                                    c,16
                                    \ff
                                    \override Dots.staff-position = #2
                                    ef,2
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
                                    ef,2..
                                    ~
                                    ef,4
                                    ~
                                    ef,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8.
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
                                    d,16
                                    \p
                                    )
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
                                    >16
                                    - \tenuto
                                    \mp
                                    r8
                                    r8
                                    r16
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
                                    r16
                                    r8
                                    ]
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
                                    >16
                                    - \tenuto
                                    r8
                                    r8.
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
                                    r8
                                    ]
                                    r8.
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
                                    r8
                                    ]
                                    r8.
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
                                    r8
                                    ]
                                    r8.
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
                                    \ottava 0
                                    r8
                                    ]
                                    r2
                                    \override Dots.staff-position = #2
                                    f,4
                                    \ppp
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
                                    f,2.
                                    ~
                                    f,4.
                                    ~
                                    f,4
                                    ~
                                    f,1
                                    \fff
                                    \>
                                    ~
                                    f,4.
                                    ~
                                    f,4
                                    ~
                                    f,2.
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 \override #'(font-size . 5) {.} )
                                                        }
                                                    }
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8.
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
                                    e,16
                                    \mp
                                    )
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
                                    s1 * 13/16
                                    s1 * 1/2
                                    s1 * 13/8
                                    s1 * 5/8
                                    s1 * 5/16
                                    s1 * 3/2
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
                                    s1 * 1
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context Staff = "accordion 3 staff"
                            {
                                \context Voice = "accordion 3 voice"
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
                                        \clef "bass"
                                        g'64
                                        [
                                        (
                                        e'64
                                        a'64
                                        e'64
                                        f'64
                                        g'64
                                        e'64
                                        g'64
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
                                        [
                                        (
                                        g'64
                                        e'64
                                        a'64
                                        e'64
                                        f'64
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
                                        [
                                        (
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
                                        [
                                        (
                                        e'64
                                        f'64
                                        g'64
                                        e'64
                                        g'64
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
                                        [
                                        (
                                        g'64
                                        e'64
                                        a'64
                                        e'64
                                        f'64
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
                                        [
                                        (
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
                                    d,2
                                    ~
                                    d,2..
                                    ~
                                    d,4
                                    ~
                                    d,4
                                    ~
                                    d,4
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
                                    >16
                                    - \tenuto
                                    r8
                                    r8
                                    r16
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
                                    r16
                                    r8
                                    ]
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
                                    >16
                                    - \tenuto
                                    r8
                                    r8.
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
                                    r8
                                    ]
                                    r8.
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
                                    r8
                                    ]
                                    r8.
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
                                    r8
                                    ]
                                    r8.
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
                                    \ottava 0
                                    r8
                                    ]
                                    r2
                                    ef,4
                                    r2.
                                    f,4.
                                    ~
                                    f,4
                                    r1
                                    e,4.
                                    ~
                                    e,4
                                    r1
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
                                    \once \override Staff.OttavaBracket.staff-padding = 6.5
                                    \ottava 1
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    c''''8
                                    - \accent
                                    ^ \markup \center-align { \concat { +4 } }
                                    [
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "9°/sounding B-flat ( with clarinet )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 9
                                    \startBowSpan #'((0 . 4) (0.12195121951219513 . 0.2) (0.24390243902439027 . 4) (0.3658536585365854 . 0.5) (0.48780487804878053 . 5) (0.5121951219512195 . 3) (0.5365853658536586 . 4) (0.6585365853658537 . 2) (0.6829268292682927 . 5) (0.7073170731707318 . 3) (0.8292682926829269 . 4) (0.853658536585366 . 0.2) (0.9756097560975611 . 4) (1.0 . 0.5))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    c''''8
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    c''''8
                                    - \accent
                                    ]
                                    \times 8/11
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''''32
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    c''''8.
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
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
                                        c'''64
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
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + pont. moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
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
                                        c'''64
                                        [
                                        (
                                        d'''64
                                        c'''64
                                        e'''64
                                        )
                                        \stopTextSpanTwo
                                        r32
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    \once \override Staff.OttavaBracket.staff-padding = 5.5
                                    \ottava 1
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                    g'''!4
                                    - \accent
                                    ^ \markup \center-align { \concat { -31 } }
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "7°/sounding A ( with cello )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 8.5
                                    \startBowSpan #'((0 . 0.2) (0.1 . 1.5) (0.13333333333333333 . 4) (0.2 . 3) (0.23333333333333334 . 4) (0.26666666666666666 . 2) (0.3333333333333333 . 5) (0.43333333333333335 . 0.2) (0.4666666666666667 . 0.4) (0.5333333333333333 . 0.2) (0.5666666666666667 . 0.7) (0.6 . 3) (0.6666666666666666 . 5) (0.7666666666666666 . 3) (0.7999999999999999 . 4) (0.8666666666666666 . 2) (0.8999999999999999 . 3) (0.9333333333333332 . 1) (0.9999999999999999 . 0.2))
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                    g'''4
                                    - \accent
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                        g'''16
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                    g'''4
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                                    g'''4.
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
                                    \ottava 0
                                    s1 * 5/8
                                    s1 * 5/16
                                    s1 * 3/2
                                    \big-half-harmonic
                                    a16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    \ff
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #6.4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-4 \center-column { \line { "pizz." } \line { "ponticello possibile" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r8.
                                    r32
                                    [
                                    \big-half-harmonic
                                    gqs16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r32
                                    r8
                                    ]
                                    r16
                                    [
                                    \big-half-harmonic
                                    gqs16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r8
                                    ]
                                    r16
                                    [
                                    \big-half-harmonic
                                    a16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r8
                                    ]
                                    r16
                                    [
                                    \big-half-harmonic
                                    b16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r8
                                    ]
                                    r16
                                    [
                                    \big-half-harmonic
                                    bqf16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r8
                                    ]
                                    r16.
                                    [
                                    \big-half-harmonic
                                    aqs32
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    ~
                                    \big-half-harmonic
                                    aqs32
                                    r16.
                                    r8
                                    ]
                                    \big-half-harmonic
                                    gqs16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    \stopTextSpan
                                    r16
                                    r8
                                    \times 4/5
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        ^ \markup \center-align { \concat { G-49 } }
                                        [
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "11°/sounding C-sharp ( with flute )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding 6.5
                                        \startBowSpan #'((0 . 4) (0.03571428571428571 . 5) (0.10714285714285714 . 3) (0.14285714285714285 . 4) (0.25 . 0.5) (0.2857142857142857 . 1) (0.3214285714285714 . 0.2) (0.3928571428571428 . 0.7) (0.4285714285714285 . 0.5) (0.5357142857142856 . 1) (0.5714285714285713 . 2) (0.607142857142857 . 5) (0.6785714285714284 . 4) (0.7142857142857141 . 5) (0.8214285714285712 . 2) (0.8571428571428569 . 3) (0.8928571428571426 . 0.1) (0.964285714285714 . 0.5) (0.9999999999999997 . 0.1))
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''4
                                    - \accent
                                    \times 8/11
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''4
                                    - \accent
                                    \stopBowSpan
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''4
                                    - \accent
                                    ^ \markup \center-align { \concat { G-49 } }
                                    - \tweak padding 6.5
                                    \startBowSpan #'((0 . 0.5) (0.06666666666666667 . 1) (0.1 . 0.2) (0.2 . 0.7) (0.23333333333333334 . 0.5) (0.26666666666666666 . 1) (0.3333333333333333 . 2) (0.36666666666666664 . 5) (0.4666666666666667 . 4) (0.5 . 5) (0.5333333333333333 . 2) (0.6 . 3) (0.6333333333333333 . 0.1) (0.7333333333333333 . 0.5) (0.7666666666666666 . 0.1) (0.7999999999999999 . 4) (0.8666666666666666 . 5) (0.8999999999999999 . 3) (0.9999999999999999 . 4))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''16
                                    - \accent
                                    [
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''16.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''16.
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''16
                                    - \accent
                                    ]
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        ^ \markup \center-align { \concat { G-49 } }
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                    fs''4
                                    - \accent
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                        fs''16
                                        - \accent
                                        \stopBowSpan
                                        \stopTextSpan
                                        ]
                                    }
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
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
                                    \times 182/105
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                                        \set fontSize = #-3
                                        \highest
                                        \override Staff.Dots.stencil = ##f
                                        \override Staff.Accidental.stencil = ##f
                                        \my-hack-slash
                                        \clef "bass"
                                        g'64
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
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "3/4 scratch + molto sul ponticello" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
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
                                        f'64
                                        g'64
                                        e'64
                                        g'64
                                        a'64
                                        g'64
                                        e'64
                                        a'64
                                        )
                                        \stopTextSpanTwo
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    \clef "tenor"
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    ^ \markup \center-align { \concat { +2 } }
                                    [
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "3°/sounding C ( with flute )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 8
                                    \startBowSpan #'((0 . 5) (1.0 . 0.2))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    g'16
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
                                    ]
                                    \once \override Staff.OttavaBracket.staff-padding = 4.5
                                    \ottava 1
                                    \clef "treble"
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    cs'''!4
                                    - \accent
                                    ^ \markup \center-align { \concat { -14 } }
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "5°/sounding A ( with violin )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 7.5
                                    \startBowSpan #'((0 . 4) (0.043478260869565216 . 3) (0.13043478260869565 . 4) (0.17391304347826086 . 2) (0.21739130434782608 . 5) (0.2608695652173913 . 0.2) (0.3913043478260869 . 0.4) (0.4347826086956521 . 0.7) (0.5217391304347825 . 3) (0.5652173913043477 . 5) (0.6086956521739129 . 3) (0.652173913043478 . 4) (0.7826086956521737 . 2) (0.8260869565217389 . 3) (0.9130434782608694 . 1) (0.9565217391304346 . 0.2) (0.9999999999999998 . 1.5))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    cs'''4
                                    - \accent
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    cs'''4
                                    - \accent
                                    \times 8/11
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        [
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16.
                                        - \accent
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''16
                                        - \accent
                                        ]
                                    }
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    cs'''4.
                                    - \accent
                                    \stopBowSpan
                                    \stopTextSpan
                                    \ottava 0
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    e,8.
                                    - \accent
                                    \f
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
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
                                    e,8
                                    ~
                                    e,8.
                                    ~
                                    e,8
                                    ~
                                    e,8.
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,16
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
                                    \!
                                    )
                                    ]
                                    s1 * 3/2
                                    s1 * 3/4
                                    s1 * 3/4
                                    \override Dots.staff-position = #2
                                    fs,4.
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
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
                                    fs,4
                                    ~
                                    fs,2...
                                    \f
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 \override #'(font-size . 5) {...} )
                                                        }
                                                    }
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
                                    ds,16
                                    \!
                                    )
                                    s1 * 5/8
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs,16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    \ff
                                    ^ \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "pizz." } }
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    f,8.
                                    - \accent
                                    ^ \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "arco" } }
                                    ]
                                    (
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
                                    f,2
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8.
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
                                    eqf,16
                                    \pp
                                    )
                                    ]
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()

    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/8
            s1 * 5/8
              %! +SCORE
              %! +SCORE
        %%% - \tweak padding #17.5
              %! +SCORE
        %%% - \abjad-solid-line-with-arrow
              %! +SCORE
        %%% - \tweak bound-details.left.text \markup \concat { {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #2 #0 #2 #" 108 "   }} \hspace #0.5 }
              %! +SCORE
        %%% - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {  [\abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #3 #0 #'(1 . 1)]      \hspace #1      \abjad-metronome-mark-markup #3 #0 #2 #" 72 "   }}
              %! +SCORE
        %%% - \tweak bound-details.right.padding 8
              %! +SCORE
        %%% \startTextSpan
              %! +PARTS
              %! +PARTS
            - \tweak padding #6
              %! +PARTS
            - \abjad-solid-line-with-arrow
              %! +PARTS
            - \tweak bound-details.left.text \markup \concat { {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #2 #0 #2 #" 108 "   }} \hspace #0.5 }
              %! +PARTS
            - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {  [\abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #3 #0 #'(1 . 1)]      \hspace #1      \abjad-metronome-mark-markup #3 #0 #2 #" 72 "   }}
              %! +PARTS
            - \tweak bound-details.right.padding 8
              %! +PARTS
            \startTextSpan
              %! +SCORE
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \stopTextSpan
              %! +PARTS
            \stopTextSpan
              %! +SCORE
        %%% \break
            \time 5/8
            s1 * 5/8
              %! +SCORE
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% ^ \markup {
              %! +SCORE
          %%% \hspace #-9
              %! +SCORE
          %%% \raise #17.5 \with-dimensions-from \null
              %! +SCORE
          %%% \override #'(font-size . 5.5)
              %! +SCORE
          %%% \concat {
              %! +SCORE
          %%% [\abjad-metric-modulation #3 #1 #2 #0 #'(1 . 1)]
              %! +SCORE
              %%% \hspace #1
              %! +SCORE
              %%% \abjad-metronome-mark-markup #2 #0 #2 #" 108 " 
              %! +SCORE
          %%% }
              %! +SCORE
        %%% }
              %! +PARTS
            ^ \markup {
              %! +PARTS
              \hspace #-9
              %! +PARTS
              \raise #7 \with-dimensions-from \null
              %! +PARTS
              \override #'(font-size . 5.5)
              %! +PARTS
              \concat {
              %! +PARTS
              [\abjad-metric-modulation #3 #1 #2 #0 #'(1 . 1)]
              %! +PARTS
                  \hspace #1
              %! +PARTS
                  \abjad-metronome-mark-markup #2 #0 #2 #" 108 " 
              %! +PARTS
              }
              %! +PARTS
            }
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \break
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            - \tweak padding -5
            _ \middle-fermata
              %! +SCORE
        %%% \break
            \once \override Score.BarLine.transparent = ##f
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
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
                                        \once \override Beam.grow-direction = #right
                                        d'32 * 117/32
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
                                        ^ \flute-parallel
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 99/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 69/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                                        r32 * 13/8
                                        b'32 * 47/32
                                        ]
                                        (
                                        - \tweak padding #10
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                        - \tweak bound-details.right.text \flute-forty-five-degrees
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
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Beam.grow-direction = #left
                                        ef''32 * 43/32
                                        - \flat-articulation
                                        [
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf'32 * 49/32
                                        - \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        e'32 * 17/8
                                        - \natural-articulation
                                        )
                                        \stopTextSpanOne
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
                                        a'32 * 51/32
                                        [
                                        (
                                        - \tweak padding #4.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                        - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                                        \startTextSpanOne
                                        f''32 * 51/32
                                        )
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 27/16
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 29/16
                                        af'32 * 65/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 73/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 21/8
                                        fs'32 * 97/32
                                        (
                                        g'32 * 111/32
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
                                        \once \override Beam.grow-direction = #left
                                        g''32 * 51/32
                                        [
                                        - \tweak padding #4.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                        \startTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 51/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 27/16
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                                        r32 * 29/16
                                        fs''32 * 65/32
                                        (
                                        af'32 * 73/32
                                        f'32 * 21/8
                                        a'32 * 97/32
                                        )
                                        \stopTextSpanOne
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 111/32
                                        e''32 * 31/8
                                        \!
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    s1 * 5/8
                                    s1 * 3/4
                                    \times 2/3
                                    {
                                        bf'8
                                        - \staccatissimo
                                        \mf
                                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }
                                        [
                                        - \tweak padding #7.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \flute-ninety-degrees \hspace #0.5 }
                                        \startTextSpanOne
                                        r8
                                        e''8
                                        - \staccatissimo
                                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "te" } }
                                        \>
                                    }
                                    \times 4/5
                                    {
                                        r8
                                        fs''16
                                        - \staccatissimo
                                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "be" } }
                                        \stopTextSpanOne
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        r16
                                        a''16
                                        - \staccatissimo
                                        \p
                                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "be" } }
                                    }
                                    \times 2/3
                                    {
                                        r8
                                        c'''8
                                        - \staccatissimo
                                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "be" } }
                                        ef'''8
                                        - \staccatissimo
                                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \override #'(font-size . 0) { "be" } }
                                        \stopTextSpanOne
                                        ]
                                    }
                                    s1 * 3/4
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
                                        c'''32
                                        - \tenuto
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
                                        - \tweak font-size 0
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "whistle" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
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
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    \override Dots.staff-position = #2
                                    gf4
                                    - \tenuto
                                    \mp
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 air" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \revert Dots.staff-position
                                    fqs16
                                    \!
                                    )
                                    \stopTextSpanOne
                                    r16
                                    r4
                                    \override Dots.staff-position = #2
                                    e''2.
                                    - \tenuto
                                    \mf
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 air" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
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
                                    e''2
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    \stopTextSpanOne
                                    - \tweak circled-tip ##t
                                    \>
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #2 { "" } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup  { "4/5 air" } 
                                    \startTextSpanOne
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e''8.
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
                                    ds''16
                                    \!
                                    )
                                    \stopTextSpanOne
                                    ]
                                    r16
                                    \override Dots.staff-position = #2
                                    f8.
                                    - \tenuto
                                    \f
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
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
                                    f2
                                    ~
                                    f1
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    f2
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f8.
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
                                    eqs16
                                    \!
                                    )
                                    ]
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/8
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    d'2.
                                    - \tenuto
                                    \mf
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
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
                                    d'2
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8.
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
                                    cs'16
                                    \!
                                    )
                                    ]
                                    r16
                                    \override Dots.staff-position = #2
                                    ef,8.
                                    - \tenuto
                                    \f
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
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
                                    ef,2
                                    ~
                                    ef,1
                                    - \tweak circled-tip ##t
                                    \>
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
                                    dqs,16
                                    \!
                                    )
                                    ]
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
                        }
                        \tag #'voice4
                        {
                            \context timeSignatureStaff = "accordion 2 staff"
                            {
                                \context Voice = "accordion 2 voice"
                                {
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 1
                                    s1 * 3/4
                                    s1 * 1/4
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context Staff = "accordion 3 staff"
                            {
                                \context Voice = "accordion 3 voice"
                                {
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/8
                                    s1 * 3/4
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 air" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    \afterGrace
                                    s1 * 3/4
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #2 { "" } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { "4/5 air" } 
                                    \startTextSpanOne
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpanOne
                                    }
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \clef "bass"
                                    <
                                        \tweak style #'la
                                        c,
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
                                    r8
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
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
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >8
                                    [
                                    r8
                                    ]
                                    r8
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >8
                                    - \tenuto
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >8
                                    [
                                    r16
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,
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
                                    ]
                                    ~
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,
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
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
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
                                        c,
                                        \tweak style #'la
                                        d,
                                        \tweak style #'la
                                        e,
                                        \tweak style #'la
                                        f,
                                        \tweak style #'la
                                        g,
                                    >8
                                    r8
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Staff.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    <
                                        \tweak style #'la
                                        c,
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
                                    r4
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
                                                    c'2
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
                                    \times 15/18
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                                        \set fontSize = #-3
                                        \highest
                                        \override Staff.Dots.stencil = ##f
                                        \override Staff.Accidental.stencil = ##f
                                        \my-hack-slash
                                        c'''32
                                        - \tenuto
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
                                        - \tweak font-size 0
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
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
                                        - \tenuto
                                        [
                                        (
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
                                        - \tenuto
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
                                        c'''32
                                        - \tenuto
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
                                        - \tenuto
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
                                        - \tenuto
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
                                        \!
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
                                    s1 * 5/8
                                    r4
                                    r16
                                    \big-half-harmonic
                                    bqs16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    \ff
                                    [
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ponticello possibile" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    r8
                                    r8
                                    \big-half-harmonic
                                    b16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r16
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    r8
                                    \big-half-harmonic
                                    cs'16
                                    \>
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    \big-half-harmonic
                                    fqs'16
                                    r16
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    gqf'16
                                    \p
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto tasto" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanTwo
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    \big-half-harmonic
                                    fs''16
                                    r16
                                    \big-half-harmonic
                                    aqf''16
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    ]
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
                                        - \tenuto
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
                                        - \tweak font-size 0
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
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
                                        - \tenuto
                                        [
                                        (
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
                                        - \tenuto
                                        [
                                        (
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
                                        r32
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    r16
                                    r4
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
                        }
                        \tag #'voice7
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 3/4
                                    \clef "bass"
                                    r4.
                                    \big-half-harmonic
                                    eqs,16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    \ff
                                    [
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #6.7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ponticello possibile" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0
                                    - \tweak padding #8.2
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pizz." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    r16
                                    r8
                                    r8
                                    \big-half-harmonic
                                    f,16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r16
                                    r8.
                                    \big-half-harmonic
                                    gqf,16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    r8.
                                    \big-half-harmonic
                                    fs,16
                                    - \tweak font-size #3
                                    - \snappizzicato
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #6.7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    \>
                                    r8
                                    \big-half-harmonic
                                    bqs,16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    c16
                                    r16
                                    \big-half-harmonic
                                    cqs16
                                    \p
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size #0
                                    - \tweak padding #6.7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto tasto" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanTwo
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    cqf'16
                                    r16
                                    \big-half-harmonic
                                    d'16
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    ]
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
                                        g'32
                                        - \tenuto
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
                                        - \tweak font-size 0
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + ponticello moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        \<
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
                                        e'32
                                        - \tenuto
                                        [
                                        (
                                        a'32
                                        e'32
                                        f'32
                                        g'32
                                        e'32
                                        g'32
                                        a'32
                                        g'32
                                        e'32
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
                                        a'32
                                        - \tenuto
                                        [
                                        (
                                        e'32
                                        f'32
                                        g'32
                                        e'32
                                        g'32
                                        a'32
                                        g'32
                                        e'32
                                        a'32
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
                                        e'32
                                        - \tenuto
                                        [
                                        (
                                        f'32
                                        g'32
                                        e'32
                                        g'32
                                        a'32
                                        g'32
                                        e'32
                                        a'32
                                        e'32
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
                                        f'32
                                        - \tenuto
                                        [
                                        (
                                        g'32
                                        e'32
                                        g'32
                                        a'32
                                        g'32
                                        e'32
                                        a'32
                                        e'32
                                        f'32
                                        \!
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
                                    r2
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
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()

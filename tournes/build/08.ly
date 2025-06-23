    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 10 8 14.5 4 10 8)))
              %! +SCORE
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 12/16
            s1 * 3/4
              %! +PARTS
        %%% ^ \markup {
              %! +PARTS
        %%% \hspace #0
              %! +PARTS
          %%% \raise #7 \with-dimensions-from \null
              %! +PARTS
          %%% \override #'(font-size . 5.5)
              %! +PARTS
          %%% \concat {
              %! +PARTS
              %%% \abjad-metronome-mark-markup #3 #1 #2 #" 56 " 
              %! +PARTS
          %%% }
              %! +PARTS
        %%% }
              %! +SCORE
            ^ \markup {
              %! +SCORE
            \hspace #3.5
              %! +SCORE
              \raise #14.5 \with-dimensions-from \null
              %! +SCORE
              \override #'(font-size . 5.5)
              %! +SCORE
              \concat {
              %! +SCORE
                  \abjad-metronome-mark-markup #3 #1 #2 #" 56 " 
              %! +SCORE
              }
              %! +SCORE
            }
              %! +SCORE
            \noBreak
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \noBreak
              %! +SCORE
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 4/16
            s1 * 1/4
              %! +SCORE
            \pageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 15 8 13 2 10 8)))
              %! +SCORE
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 12/8
            s1 * 3/2
              %! +SCORE
            \noBreak
              %! +SCORE
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 6/16
            s1 * 3/8
              %! +SCORE
            \noBreak
              %! +SCORE
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 14/16
            s1 * 7/8
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 18 12 10 2 16 19.5)))
            \time 5/8
            s1 * 5/8
              %! +SCORE
              %! +SCORE
            - \tweak padding #18.5
              %! +SCORE
            - \abjad-solid-line-with-arrow
              %! +SCORE
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
              %! +SCORE
            - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #3 #0 #2 #" 72 "   }}
              %! +SCORE
            \startTextSpan
              %! +PARTS
              %! +PARTS
        %%% - \tweak padding #8
              %! +PARTS
        %%% - \abjad-solid-line-with-arrow
              %! +PARTS
        %%% - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
              %! +PARTS
        %%% - \tweak bound-details.right.text \markup {  \raise #0 \with-dimensions-from \null  \override #'(font-size . 5.5)  \concat {      \abjad-metronome-mark-markup #3 #0 #2 #" 72 "   }}
              %! +PARTS
        %%% \startTextSpan
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 5/8
            s1 * 5/8
              %! +SCORE
            \pageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2.5 20 10 10 2 18 20)))
            \time 4/4
            s1 * 1
              %! +SCORE
            \stopTextSpan
              %! +PARTS
        %%% \stopTextSpan
              %! +SCORE
            \noBreak
              %! +PARTS
        %%% \noBreak
            \time 5/8
            s1 * 5/8
              %! +SCORE
            \noBreak
              %! +PARTS
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
              %! +PARTS
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            - \tweak padding -5
            _ \extremely-long-fermata
            \bar "|."
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Alto Flute }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
                                    s1 * 3/4
                                    s1 * 9/8
                                    s1 * 1/4
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
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
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 51/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                                        r32 * 27/16
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                                        r32 * 29/16
                                        bf'32 * 65/32
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
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #5
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #6.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        b'32 * 73/32
                                        bf'32 * 21/8
                                        c''32 * 97/32
                                        )
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #5
                                          %! +SCORE
                                        - \abjad-dashed-line-with-hook
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        - \tweak bound-details.right.padding -2
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #6.5
                                          %! +PARTS
                                    %%% - \abjad-dashed-line-with-hook
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% - \tweak bound-details.right.padding -2
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 111/32
                                        bf'32 * 31/8
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
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
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        \once \override Beam.grow-direction = #right
                                        r32 * 15/4
                                        [
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 115/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                                        r32 * 103/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 4 }
                                        r32 * 11/4
                                        b'32 * 37/16
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #4
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #5.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        a'32 * 2
                                        c''32 * 7/4
                                        af'32 * 13/8
                                        )
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 49/32
                                        c''32 * 47/32
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
                                                    c'8.
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
                                        bf'32 * 45/32
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        [
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #4
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #5.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        c''32 * 57/32
                                        b'32 * 45/16
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
                                                    c'8.
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
                                        c''32 * 31/8
                                        [
                                        (
                                        b'32 * 17/8
                                        )
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        ]
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #4
                                          %! +SCORE
                                        - \abjad-dashed-line-with-hook
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        - \tweak bound-details.right.padding -4
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #5.5
                                          %! +PARTS
                                    %%% - \abjad-dashed-line-with-hook
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% - \tweak bound-details.right.padding -4
                                          %! +PARTS
                                    %%% \startTextSpanOne
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
                                        \once \override Beam.grow-direction = #right
                                        c''32 * 125/32
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        [
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 121/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 111/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                                        r32 * 49/16
                                        bf'32 * 85/32
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #11
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #12.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        c'32 * 37/16
                                        )
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 65/32
                                        b'32 * 59/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 27/16
                                        cs'32 * 13/8
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #11
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #12.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        b'32 * 13/8
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
                                        \once \override Beam.grow-direction = #right
                                        c'32 * 117/32
                                        [
                                        (
                                        bf'32 * 99/32
                                        )
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 69/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 13/8
                                        c'32 * 47/32
                                        ]
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #11
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        - \tweak bound-details.right.text \flute-forty-five-degrees
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #12.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% - \tweak bound-details.right.text \flute-forty-five-degrees
                                          %! +PARTS
                                    %%% \startTextSpanOne
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
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 49/32
                                        b'32 * 17/8
                                        (
                                        cs'32 * 3
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
                                        b'32 * 123/32
                                        [
                                        (
                                        cs'32 * 15/4
                                        )
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 7/2
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 51/16
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 3 }
                                        r32 * 45/16
                                        b'32 * 5/2
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #10
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #11.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        c'32 * 71/32
                                        b'32 * 2
                                        cs'32 * 29/16
                                        )
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 27/16
                                        b'32 * 51/32
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #10
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        - \tweak bound-details.right.text \flute-forty-five-degrees
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #11.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-one-hundred-thirty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% - \tweak bound-details.right.text \flute-forty-five-degrees
                                          %! +PARTS
                                    %%% \startTextSpanOne
                                        cs'32 * 25/16
                                        )
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 49/32
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
                                        \once \override Beam.grow-direction = #right
                                        b'32 * 117/32
                                        [
                                        (
                                        cs'32 * 99/32
                                        )
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 69/32
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 2 }
                                        r32 * 13/8
                                        b'32 * 47/32
                                        ]
                                        (
                                          %! +SCORE
                                          %! +SCORE
                                        - \tweak padding #10
                                          %! +SCORE
                                        - \abjad-solid-line-with-arrow
                                          %! +SCORE
                                        - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +SCORE
                                        - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                                          %! +SCORE
                                        \startTextSpanOne
                                          %! +PARTS
                                          %! +PARTS
                                    %%% - \tweak padding #11.5
                                          %! +PARTS
                                    %%% - \abjad-solid-line-with-arrow
                                          %! +PARTS
                                    %%% - \tweak bound-details.left.text \markup \concat { \flute-forty-five-degrees \hspace #0.5 }
                                          %! +PARTS
                                    %%% - \tweak bound-details.right.text \flute-one-hundred-thirty-five-degrees
                                          %! +PARTS
                                    %%% \startTextSpanOne
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
                                        )
                                        [
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 49/32
                                        b'32 * 17/8
                                        \!
                                          %! +SCORE
                                        \stopTextSpanOne
                                          %! +PARTS
                                    %%% \stopTextSpanOne
                                        \once \override Rest.stencil = #ly:text-interface::print
                                        \once \override Rest.text = \markup \override #'(font-name . "Bodoni72 Book") { 1 }
                                        r32 * 3
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { +2 } }
                                    (
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "3°/sounding D ( with cello )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 5.5
                                    \startBowSpan #'((0 . 0) (0.75 . 1.5) (1.0 . 5))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { +2 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4.
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { +2 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \abjad-natural  }
                                    d''4
                                    - \tenuto
                                    )
                                    \stopBowSpan
                                    \stopTextSpan
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                                    s1 * 3/4
                                    ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #2 \box \line { B-flat Soprano }
                                    s1 * 9/8
                                    s1 * 1/4
                                    s1 * 3/2
                                    s1 * 3/8
                                    s1 * 7/8
                                    s1 * 5/8
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
                                                    c'2
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 4/5
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
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                        \startTextSpanTwo
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
                                        \fff
                                        \stopTextSpanTwo
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "o.b." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "norm." }
                                        \startTextSpanTwo
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
                                        \stopTextSpanTwo
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    r4
                                    s1 * 5/8
                                    \once \override Staff.OttavaBracket.staff-padding = 5
                                    \ottava 1
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { F-49 } }
                                    (
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "11°/sounding A ( with violin )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 7
                                    \startBowSpan #'((0 . 0) (0.75 . 1.5) (1.0 . 5))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''4
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { F-49 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''4.
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { F-49 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                    e'''4
                                    - \tenuto
                                    )
                                    \stopBowSpan
                                    \stopTextSpan
                                    \ottava 0
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
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
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                                    r8.
                                    \mp
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8
                                    - \tenuto
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    d,16
                                    )
                                    ]
                                    r8.
                                    \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8
                                    - \tenuto
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    d,16
                                    )
                                    ]
                                    r4.
                                    \override Dots.staff-position = #2
                                    ef,4
                                    - \tenuto
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,16
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
                                    )
                                    ]
                                    r4.
                                    \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,16
                                    - \tenuto
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    dqs,16
                                    - \quarter-sharp-articulation
                                    )
                                    ]
                                    r8
                                    \override Dots.staff-position = #2
                                    ef,4
                                    - \tenuto
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,16
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
                                    )
                                    ]
                                    r4.
                                    \override Dots.staff-position = #2
                                    ef,4
                                    - \tenuto
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,16
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
                                    )
                                    ]
                                    r4.
                                    \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8
                                    - \tenuto
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    dqs,16
                                    )
                                    ]
                                    r8.
                                    \override Dots.staff-position = #2
                                    ef,4.
                                    - \tenuto
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    d,16
                                    )
                                    r4..
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
                                    s1 * 3/4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context timeSignatureStaff = "accordion 2 staff"
                            {
                                \context Voice = "accordion 2 voice"
                                {
                                    s1 * 3/4
                                    s1 * 9/8
                                    s1 * 1/4
                                    s1 * 3/2
                                    s1 * 3/8
                                    s1 * 7/8
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
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
                                    >8.
                                    - \tenuto
                                    r8.
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
                                    - \tenuto
                                    r8.
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
                                    >4.
                                    - \tenuto
                                    r4.
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
                                    >4.
                                    - \tenuto
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
                                    r4.
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
                                    >4.
                                    - \tenuto
                                    r4.
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
                                    >4.
                                    - \tenuto
                                    r8.
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
                                    - \tenuto
                                    r4..
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
                                    >4..
                                    - \tenuto
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
                                    s1 * 1
                                    s1 * 5/8
                                    s1 * 3/4
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
                                    s1 * 3/4
                                    s1 * 9/8
                                    s1 * 1/4
                                    s1 * 3/2
                                    s1 * 3/8
                                    s1 * 7/8
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
                                        - \tweak padding #10.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "pont. moltiss." } \hspace #0.5 }
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
                                        \fff
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #10.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "flaut." }
                                        \startTextSpanTwo
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tasto moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "pont. moltiss." }
                                        \startTextSpanOne
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
                                        \!
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        ]
                                        \revert-noteheads
                                        \set fontSize = #-1
                                        \revert Staff.Dots.stencil
                                        \revert Staff.Accidental.stencil
                                    }
                                    \revert TupletNumber.text
                                    s1 * 5/8
                                    \once \override Staff.OttavaBracket.staff-padding = 5
                                    \ottava 1
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { F+41 } }
                                    (
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "13°/sounding A ( with clarinet )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 7.5
                                    \startBowSpan #'((0 . 0) (0.75 . 1.5) (1.0 . 5))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { F+41 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4.
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { F+41 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    fs'''4
                                    - \tenuto
                                    )
                                    \stopBowSpan
                                    \stopTextSpan
                                    \ottava 0
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                                    s1 * 3/4
                                    s1 * 9/8
                                    s1 * 1/4
                                    s1 * 3/2
                                    s1 * 3/8
                                    s1 * 7/8
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
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
                                        \set fontSize = #-3
                                        \highest
                                        \override Staff.Dots.stencil = ##f
                                        \override Staff.Accidental.stencil = ##f
                                        \my-hack-slash
                                        \clef "bass"
                                        g'32
                                        [
                                        (
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "flaut. + tasto moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "" }
                                        \startTextSpanOne
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
                                        e'32
                                        g'32
                                        a'32
                                        g'32
                                        e'32
                                        a'32
                                        e'32
                                        f'32
                                        g'32
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
                                        e'32
                                        [
                                        (
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
                                        e'32
                                        a'32
                                        e'32
                                        f'32
                                        g'32
                                        \fff
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size #0
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "scratch + ponticello moltiss." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "flaut. + tasto moltiss." }
                                        - \tweak bound-details.right.padding 14
                                        \startTextSpanOne
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
                                        e'32
                                        a'32
                                        e'32
                                        f'32
                                        g'32
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
                                        \set fontSize = #-3
                                        \highest
                                        \override Staff.Dots.stencil = ##f
                                        \override Staff.Accidental.stencil = ##f
                                        \my-hack-slash
                                        e'32
                                        [
                                        (
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
                                    \clef "treble"
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { -14 } }
                                    (
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "5°/sounding D ( with flute )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding 6
                                    \startBowSpan #'((0 . 0) (0.75 . 1.5) (1.0 . 5))
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''4
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { -14 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''4.
                                    - \tenuto
                                    )
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { -14 } }
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''4
                                    - \tenuto
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''4
                                    - \tenuto
                                    )
                                    \stopBowSpan
                                    \stopTextSpan
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                    - \tweak X-extent ##f
                                    - \tweak padding 3
                                    _ \markup \fontsize #4 { \right-column \override #'(font-name . "Bodoni72 Book Italic") { \line { "March - August 2025" } \line { "Dresden DE - Coralville IA" } } }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()

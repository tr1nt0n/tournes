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
            \pageBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 12/8
            s1 * 3/2
              %! +SCORE
            \break
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
            \noBreak
              %! +PARTS
        %%% \noBreak
            \time 4/4
            s1 * 1
            \stopTextSpan
              %! +SCORE
            \noBreak
              %! +PARTS
        %%% \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +PARTS
        %%% \break
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
              %! +PARTS
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
              %! +PARTS
        %%% \break
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
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
              %! +PARTS
        %%% \break
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
            - \tweak padding 5.5
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \override #'(font-size . 4) { "30\"" } }
              %! +SCORE
            \noBreak
              %! +PARTS
        %%% \noBreak
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
            \noBreak
              %! +PARTS
        %%% \noBreak
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
            \break
              %! +PARTS
        %%% \break
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
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { a fl }
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
                        s1 * 1
                        s1 * 1
                        s1 * 5/8
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
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
                            ^ \markup 0
                            [
                            (
                            gs32 * 51/32
                            ^ \markup 1
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            gs32 * 27/16
                            ^ \markup 2
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 29/16
                            ^ \markup 3
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 65/32
                            ^ \markup 4
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 73/32
                            ^ \markup 5
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ds'32 * 21/8
                            ^ \markup 6
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 97/32
                            ^ \markup 7
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 111/32
                            ^ \markup 8
                            ds'32 * 31/8
                            ^ \markup 9
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
                            ^ \markup 10
                            [
                            (
                            a32 * 15/4
                            ^ \markup 11
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 7/2
                            ^ \markup 12
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 51/16
                            ^ \markup 13
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 45/16
                            ^ \markup 14
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 5/2
                            ^ \markup 15
                            a32 * 71/32
                            ^ \markup 16
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 2
                            ^ \markup 17
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            gs32 * 29/16
                            ^ \markup 18
                            b32 * 27/16
                            ^ \markup 19
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 51/32
                            ^ \markup 20
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 25/16
                            ^ \markup 21
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 49/32
                            ^ \markup 22
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
                            ^ \markup 23
                            [
                            (
                            a32 * 51/32
                            ^ \markup 24
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 27/16
                            - \sharp-articulation
                            ^ \markup 25
                            a32 * 29/16
                            ^ \markup 26
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 65/32
                            ^ \markup 27
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 73/32
                            ^ \markup 28
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 21/8
                            ^ \markup 29
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            ds'32 * 97/32
                            ^ \markup 30
                            gs32 * 111/32
                            ^ \markup 31
                            b32 * 31/8
                            ^ \markup 32
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
                            ^ \markup 33
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            [
                            ds'32 * 15/4
                            ^ \markup 34
                            gs32 * 7/2
                            ^ \markup 35
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
                                    ^ \markup 36
                                }
                            >>
                            b32 * 45/16
                            ^ \markup 37
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            (
                            b32 * 5/2
                            ^ \markup 38
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
                                    ^ \markup 39
                                }
                            >>
                            a32 * 2
                            ^ \markup 40
                            (
                            gs32 * 29/16
                            ^ \markup 41
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            gs32 * 27/16
                            ^ \markup 42
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 51/32
                            ^ \markup 43
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 25/16
                            ^ \markup 44
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 49/32
                            ^ \markup 45
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
                            ^ \markup 46
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            [
                            ds'32 * 15/4
                            ^ \markup 47
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 7/2
                            ^ \markup 48
                            ds'32 * 51/16
                            ^ \markup 49
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
                                    ^ \markup 50
                                }
                            >>
                            a32 * 5/2
                            ^ \markup 51
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            (
                            a32 * 71/32
                            ^ \markup 52
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 2
                            ^ \markup 53
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            b32 * 29/16
                            ^ \markup 54
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 27/16
                            - \sharp-articulation
                            ^ \markup 55
                            a32 * 51/32
                            ^ \markup 56
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            a32 * 25/16
                            ^ \markup 57
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            gs32 * 49/32
                            - \sharp-articulation
                            ^ \markup 58
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
                            ^ \markup 59
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            )
                            [
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
                                    ^ \markup 60
                                }
                            >>
                            b32 * 69/32
                            ^ \markup 61
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            (
                            a32 * 13/8
                            ^ \markup 62
                            \once \override Staff.Accidental.stencil = ##f
                            gs32 * 47/32
                            - \sharp-articulation
                            ^ \markup 63
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
                            ^ \markup 64
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 49/32
                            - \sharp-articulation
                            ^ \markup 65
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
                                    ^ \markup 66
                                }
                            >>
                            a32 * 3
                            ^ \markup 67
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
                            ^ \markup 68
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            [
                            b32 * 51/32
                            ^ \markup 69
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 27/16
                            - \sharp-articulation
                            ^ \markup 70
                            gs32 * 29/16
                            ^ \markup 71
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
                                    ^ \markup 72
                                }
                            >>
                            b32 * 73/32
                            ^ \markup 73
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            (
                            ds'32 * 21/8
                            ^ \markup 74
                            gs32 * 97/32
                            ^ \markup 75
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
                                    ^ \markup 76
                                }
                            >>
                            b32 * 31/8
                            ^ \markup 77
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
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
                            ^ \markup 78
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            [
                            ds'32 * 15/4
                            ^ \markup 79
                            a32 * 7/2
                            ^ \markup 80
                            gs32 * 51/16
                            ^ \markup 81
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
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
                                    g16 * 1/8
                                    [
                                    (
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'16 * 1/8
                                    - \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'16 * 1/8
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
                                    gs32 * 45/16
                                    _ \accent
                                    ^ \markup 82
                                }
                            >>
                            b32 * 5/2
                            ^ \markup 83
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            (
                            b32 * 71/32
                            ^ \markup 84
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 2
                            ^ \markup 85
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            ds'32 * 29/16
                            ^ \markup 86
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ds'32 * 27/16
                            ^ \markup 87
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            a32 * 51/32
                            ^ \markup 88
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 25/16
                            - \sharp-articulation
                            ^ \markup 89
                            b32 * 49/32
                            ^ \markup 90
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
                            ^ \markup 91
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 2 } } }
                            [
                            a32 * 51/32
                            ^ \markup 92
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            b32 * 27/16
                            ^ \markup 93
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 1 } } }
                            b32 * 29/16
                            ^ \markup 94
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            \once \override Staff.Accidental.stencil = ##f
                            ds'32 * 65/32
                            - \sharp-articulation
                            ^ \markup 95
                            a32 * 73/32
                            ^ \markup 96
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
                                    ^ \markup 97
                                }
                            >>
                            gs32 * 97/32
                            ^ \markup 98
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
                                    ^ \markup 99
                                }
                            >>
                            b32 * 31/8
                            ^ \markup 100
                            ^ \markup { \override #'(font-size . 0.75) { \circle { 3 } } }
                            ]
                            \revert Voice.Stem.direction
                        }
                        \revert TupletNumber.text
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
                        s1 * 5/8
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
                        s1 * 1
                        s1 * 1
                        s1 * 5/8
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
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
                        s1 * 1
                        s1 * 1
                        s1 * 5/8
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
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
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
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
                        s1 * 1
                        s1 * 1
                        s1 * 5/8
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                        s1 * 1/2
                          %! +SCORE
                        \once \override MultiMeasureRest.transparent = ##t
                          %! +SCORE
                        \once \override Rest.transparent = ##t
                          %! +SCORE
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/4
                          %! +SCORE
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

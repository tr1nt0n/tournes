    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 7/8
            s1 * 7/8
            ^ \markup {
            \hspace #0.5
              \raise #14.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #3 #0 #2 #" 84 " 
              }
            }
            \time 4/4
            s1 * 1
            \time 3/4
            s1 * 3/4
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
            \time 2/4
            s1 * 1/2
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
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
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
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
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
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

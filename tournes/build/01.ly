    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/4
            s1 * 5/4
            ^ \markup {
            \hspace #0.5
              \raise #11 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #" 108 " 
              }
            }
            \time 2/8
            s1 * 1/4
            \time 9/8
            s1 * 9/8
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 4/12
            s1 * 1/3
            \time 4/4
            s1 * 1
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            #(ly:expect-warning "strange time signature found")
            \time 5/12
            s1 * 5/12
            \time 7/8
            s1 * 7/8
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
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
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Flute }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { fl. }
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/12
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl. }
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
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
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc. }
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/12
                    }
                }
                \context timeSignatureStaff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/12
                    }
                }
                \context Staff = "accordion 3 staff"
                {
                    \context Voice = "accordion 3 voice"
                    {
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
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
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
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
                        s1 * 5/4
                        s1 * 1/4
                        s1 * 9/8
                        s1 * 1/3
                        s1 * 1
                        s1 * 5/12
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/12
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

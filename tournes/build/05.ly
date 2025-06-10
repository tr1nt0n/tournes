    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 16 12 17 3 14 10)))
            \time 4/4
            s1 * 1
            ^ \markup {
            \hspace #0.5
              \raise #14.5 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #2 #" 54 " 
              }
            }
              %! +PARTS
        %%% \noBreak
              %! +SCORE
            \noBreak
            \once \override timeSignatureStaff.TimeSignature.X-extent = #'(3.05 . 3.05)
            \time 12/8
            s1 * 3/2
              %! +SCORE
            \pageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3.5 16 13.5 17.5 2 22 18)))
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \hspace #-9
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #2 #" 162 " 
              }
            }
              %! +PARTS
        %%% \noBreak
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
            ^ \markup {
              \hspace #-9
              \raise #17 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #1 #0 #8 #9 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #2 #" 72 " 
              }
            }
              %! +PARTS
        %%% \noBreak
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
            \time 2/4
            s1 * 1/2
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            ^ \markup {
              \hspace #-9
              \raise #12 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #2 #" 54 " 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            ^ \markup {
              \hspace #-9
              \raise #12 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #2 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #1 #1 #2 #" 54 " 
              }
            }
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
                        s1 * 1
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 1
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/13
                        {
                            \once \override Staff.OttavaBracket.staff-padding = 6
                            \ottava 1
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32
                            - \accent
                            ^ \markup \center-align { \concat { G-49 } }
                            [
                            - \tweak padding #9.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "11°/sounding A-flat ( with cello )" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            - \tweak padding 8.5
                            \startBowSpan #'((0 . 3) (0.038461538461538464 . 0.5) (0.07692307692307693 . 0.2) (0.13461538461538464 . 0.5) (0.19230769230769235 . 3) (0.2307692307692308 . 0.5) (0.2884615384615385 . 3) (0.326923076923077 . 0.5) (0.3653846153846154 . 3) (0.42307692307692313 . 0.5) (0.48076923076923084 . 1) (0.5192307692307693 . 0.2) (0.576923076923077 . 1) (0.6153846153846154 . 0.2) (0.6538461538461539 . 0.5) (0.7115384615384616 . 0.2) (0.7692307692307693 . 0.7) (0.8076923076923077 . 0.5) (0.8653846153846154 . 1.5) (0.9038461538461539 . 1) (0.9423076923076923 . 0.5) (1.0 . 0.2))
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32.
                            - \accent
                            ]
                        }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                        gf'''4
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                        gf'''4
                        - \accent
                        \stopBowSpan
                        \times 16/17
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32.
                            - \accent
                            ^ \markup \center-align { \concat { G-49 } }
                            [
                            - \tweak padding 8.5
                            \startBowSpan #'((0 . 3) (0.041666666666666664 . 0.5) (0.08333333333333333 . 3) (0.20833333333333331 . 0.5) (0.3333333333333333 . 3) (0.375 . 0.5) (0.5 . 1) (0.5416666666666666 . 0.2) (0.5833333333333333 . 3) (0.7083333333333333 . 0.5) (0.8333333333333333 . 0.2) (0.8749999999999999 . 0.5) (0.9999999999999999 . 3))
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''16.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-flat  }
                            gf'''32
                            - \accent
                            \stopBowSpan
                            \stopTextSpan
                            ]
                            \ottava 0
                        }
                        r4
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
                        \once \override Staff.OttavaBracket.staff-padding = 5.5
                        \ottava 1
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ cl }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        ^ \markup \center-align { \concat { +4 } }
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "9°/sounding D ( with violin )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak padding 8
                        \startBowSpan #'((0 . 0.2) (0.08823529411764706 . 1) (0.20588235294117646 . 1.5) (0.29411764705882354 . 1) (0.35294117647058826 . 0.5) (0.3823529411764706 . 1) (0.4705882352941177 . 2) (0.5 . 0.2) (0.6176470588235294 . 1) (0.7058823529411765 . 0.5) (0.823529411764706 . 1) (0.911764705882353 . 1.5) (0.9705882352941178 . 1) (1.0 . 0.2))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4.
                        - \accent
                        - \accent
                        ^ \markup \center-align { \concat { +4 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4.
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4.
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4.
                        - \accent
                        - \accent
                        \stopBowSpan
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        ^ \markup \center-align { \concat { +4 } }
                        - \tweak padding 8
                        \startBowSpan #'((0 . 0.5) (0.011235955056179775 . 1) (0.0449438202247191 . 3) (0.056179775280898875 . 0.2) (0.10112359550561797 . 3) (0.1348314606741573 . 0.5) (0.16853932584269662 . 3) (0.19101123595505617 . 0.5) (0.20224719101123595 . 1) (0.23595505617977527 . 3) (0.24719101123595505 . 0.2) (0.29213483146067415 . 3) (0.3258426966292135 . 0.5) (0.3595505617977528 . 3) (0.38202247191011235 . 1.5) (0.3932584269662921 . 1) (0.4269662921348314 . 0.2) (0.4382022471910112 . 1) (0.4831460674157303 . 1.5) (0.5168539325842696 . 1) (0.5505617977528089 . 1.5) (0.5730337078651684 . 1) (0.5842696629213482 . 0.2) (0.6179775280898875 . 1) (0.6292134831460673 . 1.5) (0.6741573033707864 . 1) (0.7078651685393257 . 1.5) (0.741573033707865 . 1) (0.7640449438202246 . 0.2) (0.7752808988764044 . 1) (0.8089887640449437 . 1.5) (0.8202247191011235 . 1) (0.8651685393258426 . 1.5) (0.8988764044943819 . 1) (0.9325842696629212 . 0.2) (0.9550561797752808 . 1) (0.9662921348314606 . 1.5) (0.9999999999999999 . 1))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        ^ \markup \center-align { \concat { +4 } }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'''4
                        - \accent
                        - \accent
                        \stopBowSpan
                        \stopTextSpan
                        \ottava 0
                        s1 * 3/4
                        \once \override Staff.OttavaBracket.staff-padding = 6.5
                        \ottava 1
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        as'''!4
                        - \accent
                        ^ \markup \center-align { \concat { A+41 } }
                        - \tweak padding #10
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "13°/sounding B ( with violin )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -10
                        \startTextSpan
                        - \tweak padding 9.5
                        \startBowSpan #'((0 . 0.5) (0.25 . 3) (0.5 . 1) (1.0 . 0.2))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        as'''4
                        - \accent
                        \stopBowSpan
                        \stopTextSpan
                        \ottava 0
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
                        s1 * 1
                        \staff-line-count 5
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -2
                        \revert Staff.Clef.stencil
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
                        \mp
                        r16
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
                        >16
                        [
                        r16
                        r16
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
                        >16
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
                        >8
                        ]
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
                        >16
                        [
                        r16
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
                        >8
                        - \tenuto
                        \<
                        \ottava 0
                        r8
                        ]
                        r16
                        [
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -1
                        <
                            \tweak style #'la
                            b,,
                            \tweak style #'la
                            c,
                            \tweak style #'la
                            d,
                            \tweak style #'la
                            e,
                        >16
                        - \tenuto
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
                        >16
                        r16
                        ]
                        r16
                        [
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
                        \mf
                        \>
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
                        >16
                        r16
                        ]
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
                        - \tenuto
                        r8
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
                        >8
                        - \tenuto
                        ]
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
                            \pp
                            [
                            (
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
                            \<
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
                            f'32
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
                            \mf
                            \>
                            a'32
                            g'32
                            e'32
                            a'32
                            e'32
                            f'32
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
                            g'64
                            [
                            (
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
                            a'64
                            [
                            (
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
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
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            g'64
                            [
                            (
                            a'64
                            g'64
                            e'64
                            a'64
                            e'64
                            f'64
                            \p
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
                                        c'2
                                        ~
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 33/39
                        {
                            \set fontSize = #-3
                            \highest
                            \override Staff.Dots.stencil = ##f
                            \override Staff.Accidental.stencil = ##f
                            \my-hack-slash
                            a'32
                            [
                            (
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
                            e'32
                            f'32
                            )
                            r16
                            ]
                            \revert-noteheads
                            \set fontSize = #-1
                            \revert Staff.Dots.stencil
                            \revert Staff.Accidental.stencil
                        }
                        \revert TupletNumber.text
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
                        s1 * 1
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 1
                        s1 * 3/4
                        s1 * 1/2
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
                        s1 * 1
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
                        r8
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
                        >8
                        - \tenuto
                        [
                        r8
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
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >8
                        [
                        r16
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
                        >16
                        \ottava 0
                        r16
                        ]
                        r8
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override NoteHead.duration-log = 2
                        \ottava -1
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
                        - \tenuto
                        r16
                        [
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
                        >16
                        r16
                        ]
                        r16
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
                            f,
                            \tweak style #'la
                            g,
                            \tweak style #'la
                            a,
                            \tweak style #'la
                            b,
                        >16
                        [
                        r16
                        r16
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
                        - \tenuto
                        ]
                        \ottava 0
                        s1 * 1
                        s1 * 3/4
                        s1 * 1/2
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
                        \big-half-harmonic
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violin }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vln }
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
                        r8.
                        [
                        \big-half-harmonic
                        bqs16
                        - \tenuto
                        ]
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
                        ~
                        \big-half-harmonic
                        bqs16
                        r16
                        ]
                        r8
                        [
                        \big-half-harmonic
                        bqs8
                        - \tenuto
                        r16
                        \big-half-harmonic
                        bqs16
                        - \tenuto
                        ]
                        ~
                        \big-half-harmonic
                        bqs8
                        [
                        ~
                        \big-half-harmonic
                        bqs16
                        r16
                        r16
                        \big-half-harmonic
                        bqs16
                        - \tenuto
                        \stopTextSpanOne
                        ]
                        \once \override Staff.OttavaBracket.staff-padding = 6
                        \ottava 1
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs'''4
                        - \accent
                        ^ \markup \center-align { \concat { -14 } }
                        - \tweak padding #9.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "10°/sounding D ( with clarinet )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak padding 8.5
                        \startBowSpan #'((0 . 1) (0.011235955056179775 . 0.2) (0.0449438202247191 . 1) (0.056179775280898875 . 1.5) (0.10112359550561797 . 1) (0.1348314606741573 . 1.5) (0.16853932584269662 . 1) (0.19101123595505617 . 0.2) (0.20224719101123595 . 0.5) (0.23595505617977527 . 1) (0.24719101123595505 . 3) (0.29213483146067415 . 0.2) (0.3258426966292135 . 3) (0.3595505617977528 . 0.5) (0.38202247191011235 . 3) (0.3932584269662921 . 0.5) (0.4269662921348314 . 1) (0.4382022471910112 . 3) (0.4831460674157303 . 0.2) (0.5168539325842696 . 3) (0.5505617977528089 . 0.5) (0.5730337078651684 . 3) (0.5842696629213482 . 1) (0.6179775280898875 . 1.5) (0.6292134831460673 . 1) (0.6741573033707864 . 1.5) (0.7078651685393257 . 1) (0.741573033707865 . 0.2) (0.7640449438202246 . 1) (0.7752808988764044 . 1.5) (0.8089887640449437 . 1) (0.8202247191011235 . 1.5) (0.8651685393258426 . 1) (0.8988764044943819 . 0.2) (0.9325842696629212 . 1) (0.9550561797752808 . 1.5) (0.9662921348314606 . 1) (0.9999999999999999 . 1.5))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs'''4
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs'''4
                        - \accent
                        \times 4/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            ^ \markup \center-align { \concat { -14 } }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            ]
                        }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs'''4
                        - \accent
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs'''4
                        - \accent
                        \times 8/11
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs'''16
                            - \accent
                            \stopBowSpan
                            \stopTextSpan
                            ]
                            \ottava 0
                        }
                        s1 * 3/4
                        \once \override Staff.OttavaBracket.staff-padding = 6
                        \ottava 1
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        a'''!4
                        - \accent
                        ^ \markup \center-align { \concat { -31 } }
                        - \tweak padding #9.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "14°/sounding B ( with clarinet )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -10
                        \startTextSpan
                        - \tweak padding 9
                        \startBowSpan #'((0 . 0.5) (0.25 . 3) (0.5 . 1) (1.0 . 0.2))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        a'''4
                        - \accent
                        \stopBowSpan
                        \stopTextSpan
                        \ottava 0
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
                        s1 * 1
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 1
                        \staff-line-count 5
                        \once \override Staff.OttavaBracket.staff-padding = 4.5
                        \ottava 1
                        \revert Staff.Clef.stencil
                        \clef "treble"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef'''4
                        - \accent
                        ^ \markup \center-align { \concat { +2 } }
                        - \tweak padding #8
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "12°/sounding A-flat ( with flute )" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak padding 6.5
                        \startBowSpan #'((0 . 3) (0.024390243902439025 . 1) (0.04878048780487805 . 0.2) (0.12195121951219512 . 1) (0.1951219512195122 . 0.2) (0.21951219512195122 . 0.5) (0.2926829268292683 . 0.2) (0.3170731707317073 . 0.7) (0.34146341463414637 . 0.5) (0.41463414634146345 . 1.5) (0.48780487804878053 . 1) (0.5121951219512195 . 0.5) (0.5853658536585366 . 0.2) (0.6097560975609756 . 0.5) (0.6341463414634146 . 0.2) (0.7073170731707317 . 0.5) (0.7804878048780487 . 3) (0.8048780487804877 . 0.5) (0.8780487804878048 . 3) (0.9024390243902438 . 0.5) (0.9268292682926829 . 3) (0.9999999999999999 . 0.5))
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        ef'''4
                        - \accent
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''16
                            - \accent
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''16.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''16
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''16.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''16
                            - \accent
                            \stopBowSpan
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 8/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''32
                            - \accent
                            ^ \markup \center-align { \concat { +2 } }
                            [
                            - \tweak padding 6.5
                            \startBowSpan #'((0 . 3) (0.06896551724137931 . 0.5) (0.1724137931034483 . 3) (0.2413793103448276 . 3) (0.3103448275862069 . 0.5) (0.41379310344827586 . 0.2) (0.5172413793103449 . 0.5) (0.5862068965517242 . 3) (0.6896551724137931 . 0.5) (0.7586206896551725 . 3) (0.8620689655172414 . 0.5) (0.9310344827586208 . 1) (1.0 . 0.2))
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''32.
                            - \accent
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''32.
                            - \accent
                            \stopBowSpan
                            \stopTextSpan
                            ]
                            \ottava 0
                        }
                        r4
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

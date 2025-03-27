    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \override Score.TimeSignature.stencil = ##f
            \time 9/32
            s1 * 9/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 1:"
                                        }
                                    }
            \time 41/32
            s1 * 41/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 2:"
                                        }
                                    }
            \time 41/32
            s1 * 41/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 3:"
                                        }
                                    }
            \time 9/32
            s1 * 9/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 4:"
                                        }
                                    }
            \time 9/32
            s1 * 9/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 5:"
                                        }
                                    }
            \time 41/32
            s1 * 41/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 6:"
                                        }
                                    }
            \time 6/32
            s1 * 3/16
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 7:"
                                        }
                                    }
            \time 41/32
            s1 * 41/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 8:"
                                        }
                                    }
            \time 41/32
            s1 * 41/32
            - \tweak padding #10
            ^ \markup \fontsize #2 {
                                        \override #'(font-name . "Bodoni72 Book Italic") {
                                            "Section 9:"
                                        }
                                    }
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 41/72
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            b'4.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            c'4.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            bf'4.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            cs'4.
                            ^ \sharp-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            a'4.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            d'4.
                            ^ \natural-articulation
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 41/54
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            b'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            cs'8.
                            ^ \sharp-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            bf'8.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            d'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            a'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            ef'8.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            a'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            bf'8.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            af'8.
                            ^ \flat-articulation
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32.
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32.
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32.
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32.
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32.
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32.
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 41/54
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            bf'8.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            b'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            bf'8.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            b'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            a'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            c'8.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            af'8.
                            ^ \flat-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            cs'8.
                            ^ \sharp-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            g'8.
                            ^ \natural-articulation
                        }
                        s1 * 9/32
                        s1 * 9/32
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        fs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        f'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        g'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        e'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        bf'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        d'32
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        ef'32
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        cs'32
                        ^ \sharp-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        a'32.
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        b'32.
                        ^ \natural-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        af'32.
                        ^ \flat-articulation
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Staff.Accidental.stencil = ##f
                        c'32.
                        ^ \natural-articulation
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 41/48
                        {
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            c'4.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            d'4.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            b'4.
                            ^ \natural-articulation
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Staff.Accidental.stencil = ##f
                            ef'4.
                            ^ \flat-articulation
                        }
                        s1 * 41/32
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 41/32
                        s1 * 9/32
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 3/16
                        s1 * 41/32
                        s1 * 41/32
                    }
                }
                \context timeSignatureStaff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 41/32
                        s1 * 9/32
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 3/16
                        s1 * 41/32
                        s1 * 41/32
                    }
                }
                \context Staff = "accordion 3 staff"
                {
                    \context Voice = "accordion 3 voice"
                    {
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 41/32
                        s1 * 9/32
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 3/16
                        s1 * 41/32
                        s1 * 41/32
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "violin staff"
                {
                    \context Voice = "violin voice"
                    {
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 41/32
                        s1 * 9/32
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 3/16
                        s1 * 41/32
                        s1 * 41/32
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 41/32
                        s1 * 9/32
                        s1 * 9/32
                        s1 * 41/32
                        s1 * 3/16
                        s1 * 41/32
                        s1 * 41/32
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()

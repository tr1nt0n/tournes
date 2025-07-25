\version "2.23.81"
\language english
#(set-default-paper-size "arch a")
#(set-global-staff-size 18)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-markups.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-spanners.ily"
\include "/Users/trintonprater/abjad-ext-microtones/abjadext/microtones/lilypond/ekmelos-ji-accidental-markups.ily"

\header {
    dedication = \markup \column {\line \override #'(font-name . "Bodoni72 Book Italic") { \fontsize #2 { "to" \override #'(font-name . "Bodoni72 Book") "Patrik Kako"  } } \line { \fontsize #0.01 \with-color #white "."} }
    title = \markup \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line \fontsize #8 { ". . . so fließt den auch mit ihm davon" } \fontsize #0.01 \with-color #white "."}
    subtitle = \markup \fontsize #0 \center-column { \line { \override #'(font-name . "Bodoni72 Book Italic") { "for" \override #'(font-name . "Bodoni72 Book") "quintet and electronics" } } \fontsize #0.01 \with-color #white "."}
    composer = \markup \column { \override #'(font-name . "Bodoni72") \fontsize #0 {"Trinity Hlynn Prater (*2000)"} \fontsize #25 \with-color #white "."}
}

afterGraceFraction = #(cons 15 16)

\layout {
    \accidentalStyle neo-modern
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
        \consists Measure_spanner_engraver
		\consists Metronome_mark_engraver
        \consists Multi_measure_rest_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        \override BarNumber.Y-extent = ##f
        \override BarNumber.Y-offset = -1
        \override BarNumber.X-offset = -7
        % \override BarNumber.extra-offset = #'(0 . 10)
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 1
        \override BarNumber.font-name = "Bodoni72 Book"
        % \override BarNumber.transparent = ##t
        \override MetronomeMark.stencil = ##f
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))
        \override TimeSignature.transparent = ##t
        % \override TimeSignature.font-size = 7
		% \override TimeSignature.font-name = "Bodoni72 Book"
        % \override TimeSignature.X-extent = #'(0 . 0)
        % \override TimeSignature.X-extent = ##f
        % \override TimeSignature.X-offset = -1.2
        % \override TimeSignature.whiteout-style = #'outline
        % \override TimeSignature.whiteout = 1
        % \override TimeSignature.layer = 4
        \override TimeSignature.break-visibility = #end-of-line-invisible
        % \override TimeSignature.font-size = 10
		% \override TimeSignature.font-name = "Bodoni72 Book"
        % \override TimeSignature.X-offset = -2.5
        % \override TimeSignature.Y-offset = 13
        % \override TimeSignature.whiteout-style = #'outline
        % \override TimeSignature.whiteout = 1
        % \override TimeSignature.layer = 4
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        \consists Grid_line_span_engraver
        % \consists Measure_spanner_engraver
        \remove Bar_number_engraver
        proportionalNotationDuration = #(ly:make-moment 1 20)
        pedalSustainStyle = #'mixed

        \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 7) (minimum distance . 7) (padding . 7) (stretchability . 0))
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 4) (minimum distance . 4) (padding . 4) (stretchability . 0))

        \override AccidentalSuggestion.avoid-slur = #'ignore
        \override Accidental.layer = 3
        \override Accidental.whiteout-style = #'outline
        \override Accidental.whiteout = 1
        % \override Accidental.X-extent = ##f

        \override Script.layer = 2
        \override Script.whiteout-style = #'outline
        \override Script.whiteout = 1

        % \override BarLine.transparent = ##t
        \override BarLine.hair-thickness = 0.5
        \override BarLine.thick-thickness = #10
        \override BarLine.layer = 2
        % \override BarLine.X-extent = #'(-0.5 . -0.5)
        % \override BarLine.X-extent = ##f
        % \override BarLine.X-offset = -4
        % \override BarLine.extra-offset = #'(-0.5 . 0.5)

        autoBeaming = ##f
        \override Beam.breakable = ##t
        % \override Beam.damping = 2
        % \override Beam.concaveness = #10000
        \override Beam.beam-thickness = #1.15
        \override Beam.length-fraction = #1.84

        \override BendAfter.thickness = #3

        \override BreathingSign.text = \markup {
            \fontsize #7.5
            \override #'(font-name . "ekmelos")
            \char ##xe4D5
        }

        \override Clef.layer = 2
        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override DynamicText.font-size = #-2
        \override DynamicText.layer = 2
        \override DynamicText.whiteout-style = #'outline
        \override DynamicText.whiteout = 1
        \override DynamicLineSpanner.staff-padding = 4

        \override Glissando.thickness = #4
        \override Glissando.breakable = ##t

        \override Hairpin.to-barline = ##f

        \override KeySignature.layer = 2
        \override KeySignature.whiteout-style = #'outline
        \override KeySignature.whiteout = 1

        \override MeasureSpanner.direction = #UP
        \override MeasureSpanner.thickness = #1.5
        \override MeasureSpanner.font-size = 7
        \override MeasureSpanner.font-name = "Bodoni72 Book"
        \override MeasureSpanner.padding = 11

        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t

        \override OttavaBracket.layer = 2
        \override OttavaBracket.whiteout-style = #'outline
        \override OttavaBracket.whiteout = 1

        \override PianoPedalBracket.shorten-pair = #'(0 . -4)

        \override Staff.thickness = #0.5

        \override Stem.stemlet-length = 2
        \override Stem.thickness = #0.5
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)

        % \override StemTremolo.stencil = #ly:text-interface::print
        % \override StemTremolo.text = \markup {
        %     \fontsize #3.5
        %     \override #'(font-name . "ekmelos")
        %     {
        %         \char ##xe222
        %     }
        % }
        \override StemTremolo.whiteout-style = #'outline
        \override StemTremolo.whiteout = 1
        \override StemTremolo.layer = 2

        \override TextScript.font-name = "Bodoni72 Book"
        \override TextScript.whiteout-style = #'outline
        \override TextScript.whiteout = 1
        \override TextSpanner.font-name = "Bodoni72 Book"

        \override Tie.stencil = #flare-tie
        \override Tie.height-limit = 6
        \override Tie.thickness = 1.5

        % \override TrillSpanner.bound-details.right.padding = #-5

        \shape #'((0 . 0) (0.5 . 0) (1 . 0) (2 . 0)) LaissezVibrerTie
        \override LaissezVibrerTie.X-extent = ##f

        % \shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
        % \override RepeatTie.X-extent = ##f

        \override TrillPitchAccidental.avoid-slur = #'ignore

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 0.5
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.layer = 2
        \override TupletBracket.whiteout-style = #'outline
        \override TupletBracket.whiteout = 1
        \override TupletNumber.font-size = 1
        \override TupletNumber.layer = 3
        \override TupletNumber.whiteout-style = #'outline
        \override TupletNumber.whiteout = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletNumber.font-name = "Bodoni72 Book Italic"
        % \override TupletBracket.stencil =
        %     #(lambda (grob)
        %        (let* ((pos (ly:grob-property grob 'positions))
        %               (dir (ly:grob-property grob 'direction))
        %               (new-pos (if (= dir 1)
        %                            (max (car pos)(cdr pos))
        %                            (min (car pos)(cdr pos)))))
        %          (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
        %          (ly:tuplet-bracket::print grob)))
        % \override TupletBracket.direction = #UP

        \override VoltaBracketSpanner.padding = 8
    }

    \context {
        \Staff
        fontSize = #-1
        % \remove Time_signature_engraver
        % \consists Measure_spanner_engraver
        \consists Duration_line_engraver
        \consists Grid_point_engraver
        \consists Grob_pq_engraver
        \consists #Interrupt_heads_engraver

        % \override Accidental.X-extent = ##f

        \override AccidentalSuggestion.direction = #UP
        \override AccidentalSuggestion.font-size = 0.2
        \override AccidentalSuggestion.whiteout-style = #'outline
        \override AccidentalSuggestion.whiteout = 1
        \override AccidentalSuggestion.layer = 2
        % \override AccidentalSuggestion.parent-alignment-X = -1
        % \override AccidentalSuggestion.X-extent = #'(0 . 0)

        \override DurationLine.style = #'line
        \override DurationLine.thickness = #3
        \override DurationLine.to-barline = ##f
        \override DurationLine.breakable = ##t

        \override TimeSignature.font-size = 1
        \override TimeSignature.break-visibility = #end-of-line-invisible

        \override InstrumentName.self-alignment-X = #CENTER
        % \RemoveAllEmptyStaves
        % \RemoveEmptyStaves
    }

    \context {
        \Staff
        \name timeSignatureStaff
        \type Engraver_group
        \consists Time_signature_engraver
        % \consists Measure_spanner_engraver
        \omit StaffSymbol

        \override Clef.stencil = ##f
        \override Staff.transparent = ##t

        \override BarLine.transparent = ##f

        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 0) (stretchability . 0))

        \override TimeSignature.font-size = 7
		\override TimeSignature.font-name = "Bodoni72 Book"
        \override TimeSignature.X-extent = ##f
        \override TimeSignature.Y-extent = ##f
        \override TimeSignature.Y-offset = 4
        \override TimeSignature.X-offset = -1.2
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
        \override TimeSignature.layer = 4
        \override TimeSignature.break-visibility = #end-of-line-invisible
    }

    \context{
        \GrandStaff
        % \remove Time_signature_engraver
        \accepts timeSignatureStaff
        \consists Grob_pq_engraver
        % \consists Measure_spanner_engraver

        \consists #Interrupt_heads_engraver
        \consists #Explicit_interrupt_heads_engraver
        \consists #Follow_lines_engraver
        \consists #Switch_heads_engraver
        \consists #Hocket_lines_engraver
        \override VoiceFollower.layer = -20
    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \consists Measure_spanner_engraver

        \override Accidental.font-size = 2

        \override MeasureSpanner.staff-padding = 12
    }

}
%
\paper {
    #(define fonts
        (set-global-fonts
	        #:music "haydn"
	        #:brace "haydn"
	))
    min-systems-per-page = 4
    % max-systems-per-page = 3
    % system-separator-markup = \markup \fontsize #12 { \tremolo-moderato }
    system-system-spacing = #'((basic-distance . 26) (minimum-distance . 26) (padding . 3) (stretchability . 20))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 15\mm
    right-margin = 10\mm
    top-margin = 30\mm

    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""

    oddFooterMarkup = \markup
        \fill-line {
            \concat {
                \override #'(font-name . "Bodoni72 Book Italic")
                ". . . so fließt den auch mit ihm davon"
                \override #'(font-name . "Bodoni72 Book")
                " - Trinity Hlynn Prater"
            }
            \concat {
                \fontsize #3
                \override #'(font-name . "Bodoni72 Book")
                    \fromproperty #'page:page-number-string
            }
        }

        evenFooterMarkup = \markup
            \fill-line {
                \concat {
                    \fontsize #3
                    \override #'(font-name . "Bodoni72 Book")
                        \fromproperty #'page:page-number-string
                }
                \concat {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    ". . . so fließt den auch mit ihm davon"
                    \override #'(font-name . "Bodoni72 Book")
                    " - Trinity Hlynn Prater"
                }
            }
}

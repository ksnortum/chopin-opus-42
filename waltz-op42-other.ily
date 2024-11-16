%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

% ly:expect-warning only works to supress once.  This function allows
% you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

%
% Markup
%

leggiero = \markup \large \italic leggiero
accelerando = \markup \large \italic accelerando
sostenuto = \markup \large \italic \whiteout \pad-markup #0.25 sostenuto
pLeggiero = \markup { 
  \dynamic p \normal-text \large \italic \whiteout \pad-markup #0.25 leggiero 
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 2.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 2.5))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeG = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 1)) \etc

moveOttavaA = \once \override Staff.OttavaBracket.Y-offset = 8
moveTextA = \tweak Y-offset 4 \etc

beamPositionsA = \once \override Beam.positions = #'(4 . 1)

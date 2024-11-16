%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "waltz-op42-other.ily"

#(ly:expect-warning-times 2 "cyclic dependency")

global = {
  \time 3/4
  \key af \major
}

phraseARH = {
  g8( df' ef g df' f |
  d8 ef f ef af af, |
  f'8 ef df! g, f ef |
  d8 ef f ef af af,) |
  g8( df'! ef g df' f |
  d8 ef f ef c' c, |
  f8 ef df! g, f ef |
  df8 c bf af g f) | % end slur, SrcB
}

phraseBRH = {
  ef8( g df' ef g f' |
  d8 ef f ef af af, |
  f'8 ef df! g, f ef |
  d8 ef f ef af af,) |
  g8( df'! ef g df' f |
  d8 ef f ef c' c, |
  f8 ff ef df! g, f! |
  ff8 ef df g, f! ff) | % end slur, SrcB
}

phraseCRHU = {
  \voiceOne c'4( s8 df!4 s8 |
  c4 s8 bf4 s8 |
  bf4 s8 c4 s8 |
  bf4 s8 af4 s8 |
  g4 s8 f4 s8 |
  ef4 s8 af4 s8 |
  ef4 s8 bf'!4 s8 |
  ef,4 s8 c'4 s8 |
}

phraseDRHU = {
  c4 s8 df!4 s8 |
  c4 s8 bf4 s8 |
  bf4 s8 c4 s8 |
  bf4 s8 af4 s8 |
  g4 s8 f4 s8 |
  ef4 s8 af4 s8 |
  c4 s8 bf!4 s8 |
  af4 s4. \hideNoteHead ef'8) |
}

phraseERHU = {
  c'4( s8 df!4 s8 |
  c4 s8 bf4 s8 |
  bf4 s8 c4 s8 |
  bf4 s8 af4 s8 |
  g4 s8 f4 s8 |
  ef4 s8 af4 s8 |
  ef4 s8 bf'!4 s8 |
  ef,4 s8 c'4 s8 |
}

rightHandUpper = \relative {
  ef'2.~\startTrillSpan |
  ef2.~ |
  ef2.~ |
  ef2.~ |
  ef2.~ |
  ef2.~ |
  ef2.~ |
  \afterGrace 15/16 ef2. { d16(\stopTrillSpan ef) } |
  
  \barNumberCheck 9
  \phraseCRHU
  
  \barNumberCheck 17
  \phraseDRHU
  
  \barNumberCheck 25
  \phraseERHU
  
  \barNumberCheck 33
  c4 s8 df!4 s8 |
  c4 s8 bf4 s8 |
  bf4 s8 c4 s8 |
  bf4 s8 af4 s8 |
  g4 s8 f4 s8 |
  ef4 s8 af4 s8 |
  c4 s8 bf!4 s8 |
  \oneVoice <c, af'>4) r af\trill |
  
  \barNumberCheck 41
  \phraseARH
  
  \barNumberCheck 49
  \phraseBRH
  
  \barNumberCheck 57
  ef4^( c \tuplet 3/2 { af'8 bf af } |
  \voiceOne g2*1/2 df4 <df' f> |
  g,2*1/2 df4 <c' ef> |
  \oneVoice g8 c, g' af c af |
  ef4 c \tuplet 3/2 { af'8 bf af } |
  \voiceOne g2*1/2 df4 <df' f> |
  g,2*1/2 df4 <c' ef> |
  <c, af'>2 f4~ |
  
  \barNumberCheck 65
  f4 ef \tuplet 3/2 { af8 bf af } |
  g2. |
  g2*1/2 df4 <c' ef> |
  \oneVoice g8 c, g' af c af |
  ef4 c \tuplet 3/2 { af'8 bf af } |
  \voiceOne g2*1/2 df4 <df' f> |
  g,2*1/2 df4 <c' ef> |
  \oneVoice <c, af'>4) r af'\trill |
  
  \barNumberCheck 73
  \phraseARH
  
  \barNumberCheck 81
  \phraseBRH
  
  \barNumberCheck 89
  <af, ef'>2.->^( |
  <df f>4. <af ef'>8 <f df'> <af c> |
  % first beat, g according to SrcB 
  <g bf>4) r8 <g' f'>8([ <bf ef>) r16 <ef, df'>]( |
  <af c>4) r8 <c, af'>([ <ef af>) r16 f]^( |
  <af, ef'>2.-> |
  <df f>4. <af ef'>8 <f df'> <af c> |
  <g bf>4) r8 r16 <ff' bf df ff>( q4 |
  <ef bf' df ef>4) r8 r16 <ff bf df ff>( <ef bf' df ef>4-> |
  
  \barNumberCheck 97
  <af ef'>2. |
  <df f>4. <af ef'>8 <f df'> <af c> |
  <g bf>4) r8 <g' f'>8([ <bf ef>) r16 <ef, df'>]( |
  <af c>4) r8 <c, bf'>([ <f af>) r16 <df f>]( |
  <af ef'>2. |
  <df f>4. <af ef'>8 \slashedGrace { q } <f df'> <af c> |
  <ef bf'>4) r8 r16 <ff' bf df ff>( q4 |
  <ef bf' df ef>) r8 r16 <ff bf df ff>( q4 |
  
  \barNumberCheck 105
  % like phraseARH except 1st eight
  g,8 df' ef g df' f! |
  d8 ef f ef af af, |
  f'8 ef df! g, f ef |
  d8 ef f ef af af,) |
  g8( df'! ef g df' f |
  d8 ef f ef c' c, |
  f8 ef df! g, f ef |
  df8 c bf af g f) |
  
  \barNumberCheck 113
  \phraseBRH
  
  \barNumberCheck 121
  % ef tied, according to SrcB
  ef2.~(^\sostenuto |
  ef8 d cs d f ef |
  d2 c4) |
  r4 r g'-\slurShapeA ( |
  g2. |
  f4 g af |
  bf2. |
  ef,2.) |
  
  \barNumberCheck 129
  c'2.-\slurShapeC ( |
  bf2 c4 |
  af2. |
  f2 g4 |
  ef2. |
  f4 ef bf |
  c2.~ |
  <c ef>2) ef4^( |
  
  \barNumberCheck 137
  <c ef>2. |
  \tuplet 3/2 { <b d>8 ef d } <as cs> <b d> <af! f'> <g ef'> |
  <f d'>2 <ef c'>4~ |
  q4) r <a ef' g>^( |
  % first beat chord contains an af, according to SrcB
  \acciaccatura { af!8 } <af ef' g>2 <d f>4~ |
  q4 <ef g> \once \omit Accidental <d af'> |
  <df! bf'>2. |
  <df ef>2) ef4-\slurShapeB ( |
  
  \barNumberCheck 145
  <af c>2. |
  <e bf'>2 <e c'>4 |
  <f af>2. |
  <b, f'>2 <b g'>4) |
  <c ef>4-\slurShapeD ( <ef af> <af c> |
  <df f>4 <bf ef> <ef, bf'> |
  <af c>2. |
  <c, ef>2) q4-\slurShapeE ( |
  
  \barNumberCheck 153
  <af' c>2. |
  <e bf'>2 <e c'>4 |
  <f af>2. |
  <b, f'>2 <b g'>4 |
  <c ef>4 <ef af> <af c> |
  \slashedGrace { ef'8 } <ef, gf df'>2 <ef gf c>4 |
  \voiceOne c'2 bf4) |
  \set Staff.tieWaitForNote = ##t
  \oneVoice \grace { f16~\( b_~ f'( } <f, b ef)>2 <f b d>4 |
  
  \barNumberCheck 161
  <ef g d'>2 <ef g c>4 |
  <g df'! ef>4 r8 <g df' e> q4 |
  <g df' f>4 r8 <df' ef! fs> q4 |
  <c ef g>4 r8 <c ef af> q4\) |
  
  \barNumberCheck 165
  \phraseARH 
  
  \barNumberCheck 173
  \phraseBRH 
  
  \barNumberCheck 181
  % like 9
  \phraseCRHU
  
  \barNumberCheck 189
  % like 17
  \phraseDRHU
  
  \barNumberCheck 197
  % like 25
  \phraseERHU
  
  \barNumberCheck 205
  % like 33 (5 bars)
  c4 s8 df!4 s8 |
  c4 s8 bf4 s8 |
  bf4 s8 c4 s8 |
  bf4 s8 af4 s8 |
  g4 s8 f4 \hideNoteHead bf8) |
  \oneVoice g,2( f4 |
  g2 f4 |
  g2 \slashedGrace { bf8 } af4) |
  
  \barNumberCheck 213
  % phraseARH, (4 bars)
  g8( df' ef g df' f |
  d8 ef f ef af af, |
  f'8 ef df! g, f ef |
  d8 ef f ef af af,) |
  a8( ef' gf a ef' gf |
  e8 f gf f bf bf, |
  gf' f ef! a, gf f |
  e8 f gf f bf bf,) |
  
  \barNumberCheck 221
  cf8( d f af cf cf' |
  bf8 af bf af g f |
  g8 f g f ef d |
  ef8 d ef d df cf |
  df8 cf df cf bf af |
  bf8 af bf af g f |
  g8 f ef d ef d |
  df!8 cf df cf bf af) |
  
  \barNumberCheck 229
  <ef bf'>2.( |
  <af c>4. <ef bf'>8[ <c af'> r16 <df f>] |
  <g, ef'>4) r8 <g' f'>8([ <bf ef>) r16 <ef, df'>]( |
  <af c>4) r8 <c, bf'>[( <ef af>) r16 f]_( |
  <ef bf'>2. |
  <af c>4. <ef bf'>8[ <c af'> r16 <df f>] |
  <g, ef'>4) r8 <g'' f'>[( <bf ef>) r16 <ef, df'>]( |
  <af c>4) r8 <c, bf'>[( <ef af>) r16 <ds, ds'>]( |
  
  \barNumberCheck 237
  <e b' e>4) r8 r16 <e' b' e>( q4 |
  q4. <e cs' e>8 <e b' e>4 |
  q4) r \clef bass ds,,8( e |
  fs8 gs a b cs d |
  \clef treble ds8 e fs gs a b |
  cs8 d ds e fs gs |
  a8 b cs d ds e |
  a4) r <af,, af'>-\slurShapeF ( |
  
  \barNumberCheck 245
  <ef! bf'!>2. |
  <af c>4. <ef bf'>8[ <c af'> r16 <df f>] |
  <g, ef'>4) r8 <g' f'>8([ <bf ef>) r16 <ef, df'>]( |
  <af c>4) r8 <c, bf'>[( <ef af>) r16 f]_( |
  <ef bf'>2. |
  <af c>4. <ef bf'>8[ <c af'> r16 <df f>] |
  <g, ef'>4) r8 <g'' f'>[( <bf ef>) r16 <ef, df'>]( |
  <af c>4) r8 <c, bf'>[( <ef af>) r16 f]( |
  
  \barNumberCheck 253
  <af, ef' af>2. |
  <af f' af>4. <af ef' af>8[ <af df af'>) r16 <bf af'>] |
  <af c gf' af>4 r8 <c' bf'>8[( <ef af>) r16 <af, gf'>]( |
  <df f>4) r8 <f, ef'>[( <af df>]) r16 <gs, gs'>( |
  <a e' a>2. |
  <a fs' a>4. <a e' a>8[ <a d a'>8. <bf bf'>16] |
  <bf d  f! bf>4 r8 <b d f b> <b d fs b>4 |
  <b d g b>4 r8 <b d af' b> q4 |
  
  \barNumberCheck 261
  <ef ef'>4) g,8-\slurShapeG ( df'! g f' |
  d8 ef f ef af af, |
  f'8 ef df! g, f ef |
  d8 ef f ef af af,) |
  g8( df'! ef g df' f |
  d8 ef f ef c' c, |
  f8 ef df! g, f ef |
  df c bf af g f |
  
  \barNumberCheck 269
  ef8 g df' ef g f' |
  d8 ef f ef af af, |
  f'8 ef df! g, f ef |
  d8 ef f ef af af,) |
  g8( df'! f ef g df' |
  \moveOttavaA \ottava 1 f8 ef g df' f ef |
  df8 g, f \ottava 0 ef df g, |
  f ef df g, f ef |
  
  \barNumberCheck 277
  <af c>8-\moveTextA ^\accelerando d, ef <af c> ef ff |
  <af c>8 d, ef <af c> ef ff |
  <af c>8 d, ef <af c> ef ff |
  <af c>8 d, ef <af c> ef ff |
  <af c>8 d, ef <af c> d ef |
  <af c> d, ef <af c> d ef |
  <af c>8 ef c ef, <af c> ef |
  \voiceOne \beamPositionsA c8 ef, <af c> ef c \staffDown ef,) |
  
  \barNumberCheck 285
  \staffUp \oneVoice  R2. |
  <af'' ef' af>4-> r r |
  <c,, ef af c>4-> r r |
  \staffDown \voiceOne d,8( f ef b df c |
  af4) \staffUp \oneVoice r r |
  \bar "|."
}

phraseCRHL = {
  \voiceFour c''8 d, ef df' e, f |
  c'8 d, ef! bf' c, df |
  bf'8 c, df c' d, ef! |
  bf'8 c, df! af' b, c |
  g'8 as, b f' as, b |
  ef8 b c af' b, c |
  ef8 c df bf' c, df |
  ef8 b c c' d, ef |
}

phraseDRHL = {
  c'8 e, f df' e, f |
  c'8 e, f bf e, f |
  bf8 ds, e c' ds, e |
  bf'8 e, f af e f |
  g8 as, b f' as, b |
  ef8 b c af' d, ef |
  c'8 d, ef bf'! c, df |
  af'8 c, ef af c ef |
}

phraseERHL = {
  c'8 d, ef df' e, f |
  c'8 d, ef! bf' c, df |
  bf'8 c, df c' d, ef! |
  bf'8 c, df! af' b, c |
  g'8 as, b f' as, b |
  ef8 b c af' b, c |
  ef8 c df bf' c, df |
  ef8 b c c' d, ef |
}

rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  \phraseCRHL
  
  \barNumberCheck 17
  \phraseDRHL
  
  \barNumberCheck 25
  \phraseERHL
  
  \barNumberCheck 33
  c'8 e, f df' e, f |
  c'8 e, f bf e, f |
  bf8 ds, e c' ds, e |
  bf'8 e, f af e f |
  g8 as, b f' as, b |
  ef8 b c af' d, ef |
  c'8 d, ef bf'! c, df |
  s2. |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. |
  g,2.-> |
  g2.-> |
  s2. * 2 |
  g2.-> |
  g2.-> |
  s2 df4 |
  
  \barNumberCheck 65
  c2.~ |
  c4 df <df' f> |
  g,2. |
  s2. * 2 |
  g2.-> |
  g2.-> |
  s2. |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 6 |
  <df f>4 r q |
  s2. |
  
  \barNumberCheck 161
  s2. * 4 |
  
  \barNumberCheck 165
  s2. * 8 |
  
  \barNumberCheck 173
  s2. * 8 |
  
  \barNumberCheck 181
  \resetRelativeOctave c
  \phraseCRHL
  
  \barNumberCheck 189
  \phraseDRHL
  
  \barNumberCheck 197
  \phraseERHL
  
  \barNumberCheck 205
  % like 33 (5 bars)
  c'8 e, f df' e, f |
  c'8 e, f bf e, f |
  bf8 ds, e c' ds, e |
  bf'8 e, f af e f |
  g8 as, b f' as, b |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

phraseALH = {
  ef,4 <df'' ef g> q |
  af4 <c ef af> q |
  ef,4 <df' ef g> q |
  af,4 <c' ef> q |
  ef,,4 <df'' ef g> q |
  \clef treble af4 <ef' gf c> a, |
  bf4 <ef g! df'> \clef bass ef, |
  af!4 <c ef> <d, cf'> |
}

phraseBLH = {
  ef4 <df'! ef> <df ef g> |
  af4 <c ef af> q |
  ef,4 <df' ef g> q |
  af,4 <c' ef> q |
  ef,,4 <df'' ef g> q |
  \clef treble af4 <ef' gf c> a, |
  bf4 <ef g! df'> r |
  R2. |
}

phraseCLH = {
  af4 <ef' af c> q |
  ef,4 <ef' g> q |
  e,4 <df'! g> q |
  f,4 <c' af'> q |
  d,4 <d' af'!> q |
  ef,4 <ef' af> q |
  ef,4 <ef' g> q |
  af,4 <ef' af> q |
}

phraseDLH = {
  af,4 <f' c'> q |
  g,4 <df' bf'> q |
  c,4 <c' g' bf> q |
  f,4 <c' af'> q |
  d,4 <d' af'!> q |
  ef,4 <ef' af> <ef af c> |
  ef,4 <ef' g> q |
  <af, ef' af>4 r r |
}

phraseELH = {
  \clef treble af'4 <ef' af c> q |
  \clef bass ef,4 <bf' df! g> q |
  e,4 <bf' df g> q |
  f4 <af c af'> q |
  d,4 <af'! b f'> q |
  ef4 <af c ef> q |
  ef,4 <bf'' ef g> q |
  \clef treble af4 <ef' af> q |
}

leftHand = \relative {
  \global
  \clef bass
  R2. * 4 |
  r4 r <f df'>( |
  <df bf'>2 <ef c'>4 |
  <c af'>2. |
  <bf g'>4) r r |
  
  \barNumberCheck 9
  \phraseCLH
  
  \barNumberCheck 17
  \phraseDLH
  
  \barNumberCheck 25
  \phraseELH
  
  \barNumberCheck 33
  af,4 <c f af> q |
  g4 <df' f bf> q |
  \clef bass c,4 <bf' c g'> q |
  f4 <af c f> q |
  d,4 <af'! b f'> q |
  ef4 <af c ef> q |
  ef,4 <g' df'! ef> q |
  af,4 <ef' c'> r |
  
  \barNumberCheck 41
  \phraseALH
  
  \barNumberCheck 49
  \phraseBLH
  
  \barNumberCheck 57
  \clef bass af,,4 af' ef |
  ef,4 bf'' ef, |
  ef,4 bf'' ef, |
  af,4 af' ef |
  af,4 af' f |
  ef,4 bf'' ef, |
  ef,4 bf'' ef, |
  af,4 af' df, |
  
  \barNumberCheck 65
  af4 af' ef |
  ef,4 bf'' ef, |
  ef,4 bf'' ef, |
  af,4 af' ef |
  af,4 af' f |
  ef,4 bf'' ef, |
  ef,4 bf'' ef, |
  af,4 <ef' af ef'> r |
  
  \barNumberCheck 73
  \phraseALH
  
  \barNumberCheck 81
  \phraseBLH
  
  \barNumberCheck 89
  \clef bass af,,4 <gf' c> q |
  % third beat, bf according to SrcB
  df,4 <df' af'> bf |
  ef,4 <ef' bf' df> <ef g df'> |
  af,4 <ef' af> <ef af c> |
  af,4 <gf' c> q |
  df,4 <df' af'> bf |
  ef,4 <ef' g df'> <ef af df> |
  <ef g df'>4 <af bf df> < g bf df> |
  
  \barNumberCheck 97
  af,4 <af' c gf'> q |
  df,4 <af' df f> <bf df> |
  <ef,, ef'>4 \clef treble <df'' ef bf'> <df ef g> |
  af4 <c ef af> <df f af> |
  \clef bass <af, af'>4 <af' c gf'> q |
  df,4 <af' df f> <af bf df> |
  <ef, ef'> <af' bf df ff> q |
  <g bf df ef>4 <af bf df ff> q-> |
  
  \barNumberCheck 105
  \phraseALH
  
  \barNumberCheck 113
  \phraseBLH
  
  \barNumberCheck 121
  \clef bass af,,4 <c fs c'> q |
  g4 <d' g c!> <d f! g b> |
  c,4 <ef' g> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf ef> q |
  bf,4 <af' bf d> q |
  ef,4 <ef' af df!> q |
  ef,4 <ef' g df'> q |
  
  \barNumberCheck 129
  af,4 <ef' af c> q |
  c4 <g' c e> q |
  \mergeDifferentlyDottedOn
  << { \voiceThree f2*1/2 <af c f>4 q } \new Voice { \voiceTwo f2. } >> |
  << { d2*1/2 <af' b>4 q } \new Voice { \voiceTwo d,2. } >> |
  << { ef2*1/2 <af c>4 q } \new Voice { \voiceTwo ef2. } >> |
  \oneVoice ef,4 <ef' g df'> q |
  << { \voiceThree af,2*1/2 <ef' af>4 q } \new Voice { \voiceTwo af,2. } >> |
  \oneVoice fs4 <ef' af> q |
  
  \barNumberCheck 137
  g,4 <c g'> q |
  g,4 f'' <d b'> |
  c,4 <c' g'> q |
  f,4 <f' c'> q |
  bf,,4 <bf' bf'> <bf  af' bf>~ |
  q4 <bf g' bf> <bf f' bf> |
  ef,4 <ef' g df'> q |
  ef,4 <ef' g df'> q |
  
  \barNumberCheck 145
  af,4 <ef' af c> q |
  c,4 <c' g' c> q |
  f,4 <f' c'> q |
  d,4 <d' af'> q |
  ef,4 <ef' af> <ef af c> |
  ef,4 <ef' g df'> q |
  af,4 <ef' af c> q |
  af,4 <ef' af> q |
  
  \barNumberCheck 153
  af,4 <ef' af c> q |
  c,4 <c' g' c> q |
  f,4 <f' c'> q |
  d,4 <d' af'> q |
  ef, <ef' af> <ef af c> |
  ef,4 <ef' a c> q |
  ef,4 <ef' bf' df> <ef bf'> |
  ef,4 <ef' b' d> q |
  
  \barNumberCheck 161
  ef,4 <ef' c'> q |
  <ef, ef'>4 <ef' bf' df! ef> <bf' df e> |
  <ef,, ef'>4 <bf'' df f> <bf df fs> |
  <ef,, ef'>4 <c'' ef g> <c ef af> |
  
  \barNumberCheck 165
  \resetRelativeOctave c
  \phraseALH
  
  \barNumberCheck 173
  \phraseBLH
  
  \barNumberCheck 181
  \clef bass
  \resetRelativeOctave c
  \phraseCLH
  
  \barNumberCheck 189
  \phraseDLH
  
  \barNumberCheck 197
  \phraseELH
  
  \barNumberCheck 205
  % like 33 (5 bars)
  af,4 <c f af> q |
  g4 <df' f bf> q |
  \clef bass c,4 <bf' c g'> q |
  f4 <af c f> q |
  d,4 <af'! b f'> r |
  g2( f4 |
  g2 f4 |
  g2 \slashedGrace { bf8 } af4) |
  
  \barNumberCheck 213
  ef4 \clef treble <df' ef bf'> q |
  af4 <c ef af> q |
  \clef bass ef,4 <df' ef g> q |
  af,4 <c' ef> q |
  ef,4 \clef treble <c' ef a> q |
  bf4 <df f bf> q |
  \clef bass ef,4 \clef treble <c' ef a> q |
  \clef bass ef,,!4 <bf'' df f> q |
  
  \barNumberCheck 221
  <ef,,, ef'>4 r r |
  \clef treble <d''' f af b>4-> r r |
  g'8->( f) r4 r |
  ef8->( d) r4 r |
  df8->( cf) r4 r |
  bf8->( af) r4 r |
  g8->( f) r4 r |
  R2. |
  
  \barNumberCheck 229
  \clef bass ef,,4 <ef' g df'> q |
  af,4 <ef' af c> <ef af> |
  ef,4 <ef' bf' df> <ef g df'> |
  af,4 <ef' af> <ef af c> |
  ef,4 <ef' g df'> q |
  af,4 <ef' af c> q |
  ef,4 <bf'' df ef g> q |
  af,4 <c' ef af>4 q8 r |
  
  \barNumberCheck 237
  <d,, d'>4 <d' e gs b> q |
  q4. <d e gs cs>8 <d e gs b>4 |
  q4 r \voiceTwo r |
  R2. |
  \oneVoice R2. * 3 |
  <cs a' e'>4 r <d f b> |
  
  \barNumberCheck 245
  ef,!4 <ef'! g df'!> q |
  af,4 <ef' af c> <ef af> |
  ef,4 <ef' bf' df> q |
  af,4 <ef' af> <ef af c> |
  <df, df'>4 <ef' g ef'> q |
  <c, c'>4 <ef' af ef'> q |
  <bf, bf'>4 <ef' bf' df ef> <ef g df' ef> |
  <af,, af'>4 <ef'' af ef'> q |
  
  \barNumberCheck 253
  <gf,, gf'>4 <gf'' af c ef> q |
  <f,, f'>4 <f'' af df f> q |
  <ef,, ef'>4 <ef'' af c gf'> q |
  <df,, df'>4 <f'' af df f> q |
  <g,,! g'!>4 <g'' a cs e> q |
  <fs,, fs'>4 <fs'' a d fs> q |
  <af,,! af'!>4 <af''! d f!> <fs,, fs'> |
  <f! f'!>4 <b'' d g> <ff,, ff'> |
  
  \barNumberCheck 261
  <ef ef'>4 <df''' ef> <df ef g> |
  ef,4 <c' ef af> q |
  ef,4 <df' ef g> q |
  ef,4 <c' ef> q |
  ef,4 <df' ef g> q |
  ef,4 \clef treble <ef' gf c> a, |
  bf4 <ef g! df'> \clef bass ef,4 |
  af!4 <c ef> <d, cf'> |
  
  \barNumberCheck 269
  ef4 <df'! ef> <df ef g> |
  ef,4 <c' ef af> q |
  ef,4 <df' ef g> q |
  ef,4 <c' ef af> q |
  <ef,, ef'>4 r r |
  \clef treble <bf'' ef g df'>4 r r |
  R2. * 2 |
  
  \barNumberCheck 277
  \clef bass
  af,4 <ef' af c> <ff af c>-> |
  af,4 <ef' af c> <ff af c>-> |
  af,4 <ef' af c> <ff af c>-> |
  af,4 <ef' af c> <ff af c>-> |
  af,4 <ef' af c> q |
  q4 q q |
  q4 r r |
  R2. |
  
  \barNumberCheck 285
  af,,4 r r |
  \clef treble <c'' ef af c>4-> r r |
  \clef bass <af, ef' af>4-> r r |
  \voiceTwo d,8 f ef b df c|
  af4 \oneVoice r r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
%   \override TextSpanner.Y-offset = 0.5
  \override Hairpin.to-barline = ##f
  \override Hairpin.after-line-breaking = ##f
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 9
  s2.^\leggiero |
  s2. * 7 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2.\mf | % SrcB
  s2. * 7 |
  
  \barNumberCheck 65
  s2. * 7 |
  s2 s4\p | 
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 6 |
  s4 s8. s16\f s4 |
  s2. |
  
  \barNumberCheck 97
  s2.\cresc |
  s2. * 5 |
  s4 s8. s16\ff s4 |
  s2. |
  
  \barNumberCheck 105
  \tag layout { s2.^\pLeggiero } \tag midi { s2.\p } |
  s2. * 7 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 5 |
  s2.\cresc |
  s2. * 2 |
  
  \barNumberCheck 161
  s2. * 3 |
  s2 s8 s\! |
  
  \barNumberCheck 165
  \tag layout { s2.^\pLeggiero } \tag midi { s2.\p } |
  s2. * 7 |
  
  \barNumberCheck 173
  s2. * 6 |
  s2.\p |
  s2. |
  
  \barNumberCheck 181
  s2. * 8 |
  
  \barNumberCheck 189
  s2. * 8 |
  
  \barNumberCheck 197
  s2. * 8 |
  
  \barNumberCheck 205
  s2. * 5 |
  s2.^\sostenuto
  s2. * 2 |
  
  \barNumberCheck 213
  s2.^\leggiero |
  s2. * 3 |
  s2.\cresc
  s2. * 2 |
  s2 s8 s\! |
  
  \barNumberCheck 221
  s2.\ff |
  s2. * 5 |
  s2.\> |
  s2 s8 s\! |
  
  \barNumberCheck 229
  s2. * 8 |
  
  \barNumberCheck 237
  s2. * 2 |
  s2 \tag layout { s4^\pLeggiero } \tag midi { s4\p } |
  s2. * 5 |
  
  \barNumberCheck 245
  s2. * 4 |
  s2.\cresc |
  s2. * 3 |
  
  \barNumberCheck 253
  s2 s8 s\! |
  s2. * 7 |
  
  \barNumberCheck 261
  s4\sf \tag layout { s2^\pLeggiero } \tag midi { s2\p } |
  s2. * 7 |
  
  \barNumberCheck 269
  s2.\f |
  s2. * 3 |
  s2.\ff |
  s2. * 3 |
  
  \barNumberCheck 277
  s2.\f |
  s2.\cresc |
  s2. * 3 |
  s2 s8 s\! |
  s2.\ff |
}

tempi = {
  \tempo "Vivace" 2. = 84
  s2. 
  \set Score.tempoHideNote = ##t
  s2. * 87
  \tempo 2. = 72
  s2. * 16
  \tempo 2. = 84
  s2. * 16
  \tempo 2. = 72
  s2. * 44 
  \tempo 2. = 84
  s2. * 45
  \tempo 2. = 72
  s2. * 3
  \tempo 2. = 84
  s2. * 16 
  \tempo 2. = 72
  % s2. * 32 
  s2. * 10 
  s2 \tempo 2. = 84 s4
  s2. * 4 |
  \tempo 2. = 72
  s2. * 17 
  s4 \tempo 2. = 84 s2 
  s2. * 15 
  \tempo 2. = 88
  s2. 
  \tempo 2. = 92
  s2. 
  \tempo 2. = 96
  s2.
  \tempo 2. = 100
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 17
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s2-\tweak Y-offset -0.5 \sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 49
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s2.-\tweak Y-offset -1 \sd |
  s2 s8 s\su |
  
  \barNumberCheck 57
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 65
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 6 |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 89
  s2. * 8 * 19 |
  s2. * 3 |
  s4\sd s2\su |
  
  \barNumberCheck 245
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -0.5 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  
  \barNumberCheck 253
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  
  \barNumberCheck 261
  s2\sd s8 s\su |
  s2. * 7 |
  
  \barNumberCheck 269
  s2. * 4 |
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  
  \barNumberCheck 277
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2.\sd |
  s2. * 3 |
  
  \barNumberCheck 285
  s2. * 2 |
  s2 s4\su |
}

forceBreaks = {
  % page 1
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 6
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 7
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 8
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
}
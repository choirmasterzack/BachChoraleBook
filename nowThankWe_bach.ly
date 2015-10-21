\version "2.18.2"

\header {
  title = "Now Thank we all Our God"
  subtitle = "Nun Danket Alle Gott"
  composer = "Melody: Johann Cruger (1647)"
  arranger = "Arr: J.S. Bach"
  poet = "Martin Rinckart, 1638"
  meter = "Tr. Catherine Winkworth"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")

}

global = {
  \key f \major
  \time 4/4
    #(set-global-staff-size 15)
}

soprano = \relative c'' {
  \global
  % Music follows here.
   r2 c c c d d c1 
   R1*2  r2 a bes a g a g1 f 
   
   R1*3 
   
   r2 c' c c d d c1 
   R1*2 r2 a bes a g a g1 f
   
   R1*4
   
   r2 g g g a a g r R1*3 r2 g a4( b!) c2 c b! c1 
   R1*4 r2 c d c bes a bes1 
   R1*3 r2 a g a g g f1 
   
   R1*7 \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  r2 f2 f a bes bes a1 
  R1*2 r2 f g f e f f( e) c1 
  R1*3 r2 f f a bes bes a1 R1*2 
  r2 f g f e f f( e) c1 
  
  R1*4 r2 e e e f f g r2 R1*3 r2 g 
  f g g g g1 R1*4 r2 a bes a f f f1 
  R1*3 r2 f e f f e c1 R1*7
}

tenor = \relative c' {
  \global
  % Music follows here.
  r2 a2 a4( c) f2 f f f1 R1*2 
  r2 c c c c c c2.( bes4) a1 R1*3 
  
  r2 a2 a4( c) f2 f f f1 R1*2 r2 
  c c c c c c2.( bes4) a1 R1*4 
  r2 
  c2 c c c c4( d) e2 r2 R1*3 r2 c c4( d) e2 d d e1 
  R1*4 r2 f f ees d c d1 R1*3 
  r2 c c c c c a1 R1*7 
}

bass = \relative c {
  \global
  % Music follows here.
  r2 f2 f f bes bes, f'1 
  R1*2 r2 f e f c4( bes) a( f) c'1 f 
  
  R1*3 r2 f f f bes bes, f'1 
  R1*2 r2 f e f c4( bes) a( f) c'1 f R1*4 
   
  r2 c c c f f, c' r2 R1*3 
  r2 e f e4( f) g2 g, c1 R1*4 
  
  r2 f bes, c d4( ees) f2 bes,1 R1*3 
  r2 f' c' f, c c f1 R1*7 
}

verse = \lyricmode {
  % Lyrics follow here.
  
  \set stanza = "1."
   Now thank we all our \markup {\smallCaps {God}}
   With heart and hands and voic -- es, 
   Who won -- drous things hath done, 
   In Whom \markup { \smallCaps {His}} world re -- joi -- ces.
   
   Who from our mo -- ther's arms
   Hath blessed us on our way
   With count -- less gifts of love, 
   And still is ours to -- day. 
  
}

verseTwo = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  All praise and thanks to \markup {\smallCaps God} 
  The Fa -- ther now be giv -- en 
  The Son, and Him who reigns 
  With Them in high -- est hea -- ven. 
  
  The one e -- ter -- nal God, 
  Whom earth and heav'n a -- dore; 
  For thus it was, is now, 
  and Shall be ev -- er -- more. 
  
}

verseGerman = \lyricmode { 
\set stanza = \markup {\tiny "[German]"}
Nun dan -- ket al -- le Gott
Mit Her -- zen, Mund und Hän -- den,
Der gro -- ße Din -- ge tut
An uns und al -- len En -- den,
Der uns von Mut -- ter -- leib
Und Kin -- des -- bei -- nen an
Un -- zäh -- lig viel zu gut
Bis hier her hat ge -- tan. 

}


rightOne = \relative c'' {
  \global
  % Music follows here.
   a4. bes8 a8 g a bes c bes a2 c4 d8 c bes2 d4 c8 bes a2 
   a8 bes c d ees2 d8 c bes4 bes8 a bes4 c8 bes a bes c2 
   bes8 a g4 bes8 g a4 c8 a bes4 g r a8 bes 
   c bes c d c d c bes a4 c8 bes a4 f' g, g8 f g4 bes8 g 
   a c bes g a c bes g a4 a8 bes16 c bes8 a g f 
   f c f g a g a bes c bes a2 c4 d8 c bes2 d4 c8 bes a2 
   a8 bes c d ees2 d8 c bes4 bes8 a bes4 c8 bes a bes c2 bes8 
   a g4 bes8 g a4 c8 a bes4 g r a8 bes c bes c d c d c bes 
   a4 c8 bes a4 f' 
   g, g8 f g4 bes8 g a c bes g a c bes g a4 a8  bes16 c 
   bes8 a g f f c f g a b! c d
   e4. f8 <c e> <b d> <c e> <b d> 
   <c e> <b d> c2 e4 
   f c2 f4 e8 d c2 c8 d e d e f e f e f d4 d8 cis d4 e8 d 
   c!8 d e2 d8 c b! a b4 r4 c8 b a c b d c e d f e4 e8 d f4 e8 d e d c2 g8 a bes4
   bes8 a bes4 c8 bes
   a8 bes c2 bes8 a g bes a f g bes a f g4. bes8 a g a bes 
   c bes a2 c4 d8 c bes4 r a8 f
   bes4 bes8 f c'4 c8 f, d' ees f2 ees8 d c4 c8 bes c4 
   ees8 c d f ees c d f ees c d4 d8 ees16 f d4 c8 bes 
   bes8 d c bes a c bes a g4 g8 bes a4 a8 c bes a bes2 
   c8 bes a g f g a g a bes c bes a2 c4
   d8 c bes2 d4 c8 bes a2 f'4 g, g8 f g4 bes8 g 
   a c bes g a c bes g a4 a8 bes16 c a4 g8 f f1 \bar "|."
   
}

rightTwo = \relative c' {
  \global
  % Music follows here.
  f4. g8 f c f g a g f2 
  <f a>4 <f bes> <d f>2 
  <f bes>4 <f a>8 g f2 
  f8 g a bes <fis c'>2 bes8 a g4 g8 fis g4 a8 g f! g a2 
  g8 f! c4 g'8 e f4 a8 f g4 <c, e> r f g2 g 
  f4 a8 g f2 f1~f~f4 f g8 f e f 
  <a, c>8 c a c f c f g a g f2 <f a>4 <f bes> <d f>2 
  <f bes>4 <f a>8 g f2 f8 g a bes <fis c'>2 bes8 a 
  g4 g8 fis g4 a8 g f! g a2 g8 f c4 g'8 e 
  f4 a8 f g4 <c, e> r f4 g2 g 
  f4 a8 g f2 f1~f~f4 f g8 f e f <a, c> c a c f g a f 
  g4. a8 g2 g4 <e g>2 g4 a8 g <f a>2 a4 g <e g>2 g4 g8 f g a g a g a f4 f8 e f4 g
  g1~g2 r4 g4 f r4 g2 c4 c8 b! d4 c8 b c4 <e, g>2 c4 g' g8 fis g4 a8 g
  f8 g a2 g8 f e4 f e f e4. c8 f c f g a g f2 
  <f a>4 <f bes> <d f> r f8 c
  f4 r f r f r bes2~bes1 bes bes4 bes bes <ees, a>
  f2~f8 a g f <c e>4 c8 g' f4 f8 a g f g2 a8 g f c a c f c f g a g f2 a4
  <f bes>4 <d f>2 bes'4 a8 g f2.~f1~f1~f4 f f <bes, e> <a c>1
  
  
}

leftOne = \relative c {
  \global
  % Music follows here.
  <f c'>4 r <f c'> r
  <f f'> r <f c'> r 
  bes r bes r 
  <f c'> r <a c> r 
  <fis d'> r d' r 
  <g, d'> r <e c'> r 
  <f c'> r <f c'> r 
  <e c'> r <e c'> r 
  c' r <f, c'> r 
  <c' f> r <c e> r 
  <f, c'> r <a c> r 
  <bes d> r <g d'> r 
  c r <a c> r
  d <bes d> c <c, bes'>
  <f a> r <f c'> r 
  <f f'> r <f c'> r 
  bes r bes r 
  <f c'> r <a c> r 
  <fis d'> r <d d'> r 
  <g d'> r <e c'> r 
  <f c'> r <f c'> r 
  <e c'> r <f c'> r 
  c' r <f, c'> r 
  <c' f> r <c e> r
  <f, c'> r < a c> r 
  <bes d> r <g d'> r 
  c r <a c> r 
  d <bes d> c <c, bes'> 
  <f a> r <d d'> r 
  <c c'> r c' r 
  c r <c e> r 
  <f, c'> r <a c> r 
  c r <e, c'> r 
  <cis' e> r <a cis> r 
  <a d> r <b d> r
  <c e> r c r <g d'> r <e c'> r 
  <f c'> r <c' e> r 
  <g c> r <g d'> r 
  <c, c'> r <e c'> r <g d'> r <e c'> r
  <f c'> r <f c'> r <c c'> r <c c'> r 
   c' r <bes c> r
   <a c> r <f c'> r <bes d> r c r 
   <d, bes'> r <f a> r 
   <bes d> r <bes d> r 
   <g ees'> r <g c> r 
   <f bes> r <d bes'> r 
   <g d'> <ees g> <f bes> <f a>
   <bes d> r <f c'> r <c c'> r <f c'> r  <c c'> r  <c c'> r <f c'> r 
   <f c'> r <f c'> r <f c'> r 
   <bes d> r <d, bes'> r 
   <f c'> r <a c> r <bes d> r <g d'> r c r <a c> r 
   d <bes d> c <c, bes'> f1
  
  
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  
}

pedal = \relative c {
  \global
  % Music follows here.
  f,4 r4 f r 
  f4 r4 f r
  bes r d r 
  f, r a r 
  fis r d' r 
  g, r e r 
  f r f r 
  e r f r 
  c' r f, r 
  c' r c r 
  f, r a r 
  bes r g r 
  c r a r 
  d bes c c, 
  f r f r 
  f r f r 
  bes r d r 
  f, r a r
  fis r d r 
  g r e r
  f r f r  
  e r f r 
  c' r f, r 
  c' r c r 
  f, r a r 
  bes r g r 
  c r a r 
  d bes c c, 
  f r d r 
  c r c' r 
  c r c r 
  f, r a r 
  c r e, r 
  cis' r a r 
  d r b! r 
  c! r e r 
  g, r e r 
  f r c' r 
  g r g r 
  c, r e r 
  g r e r 
  f r f r 
  c r c r 
  c' r bes r 
  a r f r 
  bes r c r 
  d, r f r 
  bes r d r
  ees r c r f, r d r 
  g ees f f 
  bes r f r 
  c r f r c r c r 
  f r f r f r f r 
  bes r d, r 
  f r a r bes r g r c r a r 
  d bes c c, f1
  
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \soprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verseTwo
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verseGerman
  \new Staff \with {
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \tenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \bass }
  >>
>>

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" << \rightOne \\ \rightTwo >>
    \new Staff = "left" { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \new Staff = "pedal" { \clef bass \pedal }
>>

\score {
  <<
    \choirPart
    \organPart
  >>
  \layout { }
}

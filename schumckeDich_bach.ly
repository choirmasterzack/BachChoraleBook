\version "2.18.2"

\header {
  title = "Deck Thyself with Joy and Gladness"
  subtitle = "Schumcke Dich, O Liebe Seele"
  composer = "Harm. J.S. Bach"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  page-count =  #1
}

global = {
  \key f \major
  \time 4/4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  a4 g f g a8( bes) c4 bes2 a
  c4 a bes a8[( g)] f( g) a4 g2 f
  
  a4 g f g a8( bes) c4 bes2 a
  c4 a bes a8[( g)] f( g) a4 g2 f
  
  c'4 d8[( e)] f4 f e8[( d)] c( d) d2 c 
  c4 d8[( e)] f4 f e8[( d)] c( d) d2 c
  
  g4 a bes bes a8[( c)] bes( a) g4 g\fermata
  c a bes a8( g) f( g) a4 g2 f1 \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  f4 e d c c f f( e) f2 
  g4 f f f8[( e)] d( e) f4 f( e) c2 
  
  f4 e d c c f f( e) f2 
  g4 f f f8[( e)] d( e) f4 f( e) c2 
  
  a'4 g f8( g) a4 a e a( g8 f) e2
  f4 f8( g) a4 a g g8( a) g( f16 e f4) e2 
  
  e4 f e8( f) g4 f8[( a)] g( f) e4 e\fermata
  e f f8[( e)] f( e) d( e) f4 f( e) c1 
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  c4 c8( bes) a4 g f8( g) a4 g8( f) g4 f2 
  c'4 c d c d c c8( bes16 a bes4) a2 
  
  c4 c8( bes) a4 g f8( g) a4 g8( f) g4 f2 
  c'4 c d c d c c8( bes16 a bes4) a2
  
  f'4 b,!8[( cis)] d4 d c!8( b!) c4 c( b!) c2 
  a4 bes c8[( b!)] c( d) e[( f)] g( c,) c4( b!) c2 
  
  c4 c bes8( a) g4 c4 d e8( d) c4\fermata c4 c bes 
  c d c c8( bes16 a bes4) a1 
}

bass = \relative c {
  \global
  % Music follows here.
  f4 c d e f a,8( bes) c2 <f, f'> 
  e'4 f d8( e) f4 bes, a8( bes) c2 <f, f'> 
  
  f'4 c d e f a,8( bes) c2 <f, f'> 
  e'4 f d8( e) f4 bes, a8( bes) c2 <f, f'>
  
  f'4 e d8[( e)] f( g) a4. g8 f4( g) c,2 
  f4 bes, a8[( g)] a( b!) c[( d)] e( f) g4( g,) c2 
  
  c'4 bes8[( a)] g4 f8( e) f4 bes, c c\fermata 
  a d g, a bes a8( bes) c2 <f, f'>1 
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Deck thy -- self with joy and glad -- ness, 
  Leave be -- hind all gloom and sad -- ness, 
  Come in -- to the day light's splen -- dor, 
  There with joy Thy prais -- es ren -- der 
  Un -- to Him whose grace un -- bound -- ed
  hath this won -- drous ban -- quet found -- ed; 
  High o'er all the heav'ns He reign -- eth,  
  Yet to dwell with thee, He deign -- eth.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Nay, tho' rea -- son here doth pon -- der, 
  It can ne -- ver reach this won -- der
  That this bread is ne -- ver less -- ened, 
  Tho' it nour -- ish thou -- sands pre -- sent, 
  And that Christ His blood is gi -- ving
  With the wine we are re -- ceiv -- ing. 
  These great mys -- ter -- ies un -- sound -- ed 
  Are by God a -- line ex -- pound -- ed. 
}

\score {
  \new ChoirStaff <<
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
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
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
  \layout { }
}

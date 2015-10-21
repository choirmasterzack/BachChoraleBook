\version "2.18.2"

\header {
  title = "Was Gott Tut, Das ist wohlgetan"
  subtitle = "What God Ordains is Always Good"
  composer = "J.S. Bach"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  page-count = #1
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

soprano = \relative c' {
  \global
  % Music follows here.
  d4 g a b e d4. c8 b4\fermata e d c b c8( d) a2 g4\fermata 
  d4 g a b e d4. c8 b4\fermata e d c b c8( d) a2 g4\fermata
  d' e e a,\fermata a d d g,\fermata b a g fis g8( fis) e2 d4\fermata
  d' c! b a b8( c) a2 g4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  b8( c) d4 d d  e8( fis) g4 fis g g fis g8[( a)] b( a) g4 g( fis) d 
  b8( c) d4 d d  e8( fis) g4 fis g g fis g8[( a)] b( a) g4 g( fis) d
  g g g fis fis8( g) a( g) fis4 e e e d8( cis) d4 d d( cis) d 
  g8( fis) e4 d8( e) fis4 g g( fis) d
}

tenor = \relative c' {
  \global
  % Music follows here.
   g8( a) b4 a g g8( a) b4 a8( d) d4 c8( b) a4 e' d e e( d8 c) b4 
   g8( a) b4 a g g8( a) b4 a8( d) d4 c8( b) a4 e' d e e( d8 c) b4 
   b4 c8( b) a4 d d a b b g a a a g8( a) b4( a8 g) fis4 g g8[( a)] b( c) d4 d 
   d8[( c16 b c8 a)] b4 
}

bass = \relative c {
  \global
  % Music follows here.
  g4 g' fis g c, b8( c) d4 g,\fermata c4 d e8[( fis)] g( fis) e[( d)] c4( d) g,\fermata
  g4 g' fis g c, b8( c) d4 g,\fermata c4 d e8[( fis)] g( fis) e[( d)] c4( d) g,\fermata
  g' c, cis d d8( e) fis4 b, e\fermata e8( d) cis( b) a4 d8[( cis)] b( a) g4( a) d\fermata
  b e8( fis) g4 d8( c) b[( g)] d'2 g,4\fermata
}

verseOne = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  What God Or -- dains is al -- ways good! 
  His ho -- ly will a -- bid -- eth. 
  I will be still what -- e'er He doth, 
  and fol -- low where He guid -- eth. 
  He is my God; Through dark my road, 
  He know -- eth how to shield me, 
  Where -- fore to Him I yield me. 
}

verseTwo = \lyricmode {
 \set stanza = "2."
 What God or -- dains is al -- ways good! 
 My life, my light can ne -- ver in -- tend me harm; then to His care 
 I give my -- self for -- ev -- er. In weal or woe; for well I know, 
 some -- day I shall see clear -- ly that God did love me dear -- ly. 
 
}

verseThree = \lyricmode {
 \set stanza = "3."
 What God or -- dains is al -- ways good! 
 Here shall my stand be tak -- en; 
 Through sor -- row, need, or death be mine, 
 Yet am I not for -- sa -- ken. 
 My Fa -- ther's care is round me there, 
 His arms em -- brace and shield me; 
 Then to my God I yield me. 
 
}

verseGerman = \lyricmode {
 \set stanza = "[German]"
 Was Gott tut, das ist wohl -- ge -- tan
Es bleibt ge -- recht sein Wil -- le;
Wie er fängt mei -- ne Sa -- chen an,
Will ich ihm hal -- ten stil -- le.
Er ist mein Gott,
Der in der Not
Mich wohl weiß zu er -- hal -- ten;
Drum laß ich ihn nur wal -- ten.
 
 
} 

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { "Soprano" "Alto" }
    } <<
      \transpose g f {
      \new Voice = "soprano" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \soprano }}
      
      \transpose g f {
      \new Voice = "alto" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \alto } }
    >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Lyrics \lyricsto "soprano" \verseThree
    \new Lyrics \lyricsto "soprano" \verseGerman

    \new Staff \with {
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      
      \transpose g f {
      \new Voice = "tenor" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \tenor } }
      
      \transpose g f {
      \new Voice = "bass" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \bass }}
    >>
  >>
  \layout { }
}

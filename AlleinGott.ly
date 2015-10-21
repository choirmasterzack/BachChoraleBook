\version "2.18.2"

\header {
  title = "All Glory Be To God on High"
  subtitle = "Allein Gott in der Höh‘ sei Ehr"
  composer = "Harm: J.S. Bach"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
    left-margin = 1.2\in
  %top-margin = 1\
  bottom-margin = 1\in
  right-margin = 1.2\in
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

soprano = \relative c'' {
  \global
  % Music follows here.
    g8( a) b4 c d c b a b\fermata
    b b a8( b) c( b) a4 g8( e fis4) g\fermata 
    g8( a) b4 c d c b a b\fermata b4 b a8( b) c( b) a4 g8( e fis4) g\fermata
    g a b c b a8.( b16) b4 a\fermata a4 b c d c b a b\fermata
    g a b c!8( b) a4 g8( e fis4) g4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  d4 g g fis e8( fis) g( fis) e4 dis\fermata e d8( e) fis4 g4. fis8
  g4( d) d\fermata d g g fis e8( fis) g( fis) e4 dis\fermata
  e d!8( e) fis4 g4. fis8 g4( d) d\fermata d8( e) fis4 gis 
  a8[( a,)] d( e) a,( a'4) gis8 e4\fermata d4 d g! fis8( gis) a4 
  g!8( fis) e4 dis\fermata b8( cis) d!( e) fis4 e4. d16( c) g'4( d) d\fermata
}

tenor = \relative c' {
  \global
  % Music follows here.
  b8( c) d4 e8[( g,)] a[( b)] c( d) e( b) c4 fis,\fermata
  g8( a)  b( c) d4 e4. d16( c) d8 ( c16 b a4) b\fermata
  b8( c) d4 e8[( g,)] a[( b)] c( d) e( b) c4 fis,\fermata
  g8( a)  b( c) d4 e4. d16( c) d8 ( c16 b a4) b\fermata
  b4 a d e8[( f!)] f( e) e16( d e8) f!( e16 d) c4\fermata 
  a g! g8( a) b4 e, e'8( b) c4 fis,\fermata g fis b8( a) g4. fis8 
  d'8( c16 b a4) b4\fermata
}

bass = \relative c {
  \global
  % Music follows here.
  g4 g'8( fis) e4 d a e'8( d) c4 b\fermata e8( fis) g4 fis e8[( d)] c( a) 
  b( c d4) g,4\fermata g4 g'8( fis) e4 d a e'8( d) c4 b\fermata e8( fis)
  g4 fis e8[( d)] c( a) b( c d4) g,\fermata g' d8[( d')] c( b) a4 g! f!8[( c)] 
  d( e) a,4\fermata fis' g!8( fis) e4 b c8( d) e( d) c4 b\fermata 
  e d dis e8[( d!)] c( a) b( c d4) g,\fermata
}

VerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  All glo -- ry be to God on high, who hath our race be -- friend -- ed. 
  To us no harm shall now come nigh, The strife at last is end -- ed. 
  God show -- eth His good will to men, And peace shall reign on earth a -- gain; 
  O thank Him for His good -- ness!
}


VerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  We praise, we wor -- ship Thee, we trust and give Thee thanks for ev -- er. 
  O Fa -- ther that Thy rule is just, and wise, and chang -- es ne -- ver. 
  Thy bound -- less pow'r o'er all  things reigns, done is what -- e'er Thy 
  will or -- dains; Well for us that Thou rul -- est!  
}

GermanText = \lyricmode {
  \set stanza = "3."
Al -- lein Gott in der Höh sei Ehr
Und Dank für sei -- ne Gna -- de,
Da -- rum daß nun und nim -- mer -- mehr
Uns rüh -- ren kann kein Scha -- de.
Ein Wohl -- ge -- falln Gott an uns hat,
Nun ist groß Fried ohn Un -- ter -- laß,
All Fehd hat nun ein En -- de. 
}



\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "Soprano"
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \VerseOne }
    \addlyrics { \VerseTwo }
    \addlyrics { \GermanText }
    \new Staff \with {
      instrumentName = "Alto"
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \VerseOne }
    \addlyrics { \VerseTwo }
    \addlyrics { \GermanText }
    \new Staff \with {
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \VerseOne }
    \addlyrics { \VerseTwo }
    \addlyrics { \GermanText }
    \new Staff \with {
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \VerseOne }
    \addlyrics { \VerseTwo }
    \addlyrics { \GermanText }
  >>
  \layout { }
}

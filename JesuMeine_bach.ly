\version "2.18.2"

\header {
  title = "Jesus, Priceless Treasure"
  subtitle = "Jesu, Meine Freude"
  composer = "Harm: J.S. Bach"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key g \major
  \time 4/4
  #(set-global-staff-size 18)
}

soprano = \relative c'' {
  \global
  % Music follows here.
  b b a g fis2 e
  b'4 cis d b e2 dis 
  e8( fis) g4 fis4. fis8 e1\fermata \bar "||"

  b4 b a g fis2 e 
  b'4 cis d b e2 dis 
  e8( fis) g4 fis4. fis8 e1\fermata \bar "||"
  
  b4 b c b a4. a8 g2 
  b4 cis d b e d8( cis) cis2  b2 
  b4 b a g8( fis) fis2 e1 \bar "|."
  
}

alto = \relative c' {
  \global
  % Music follows here.
  g'4 fis e8( dis) e4 e( dis) b2 
  g'8( fis) e4 d d g8( a b4) b2 
  g8( a) b4 b4. a8 g1 
  
  g4 fis e8( dis) e4 e( dis) b2 
  g'8( fis) e4 d d g8( a b4) b2 
  g8( a) b4 b4. a8 g1
  
  g4 g a g g fis d2 
  g4 g a g8( a) b4 b b( ais) fis2 
  g4 fis e e e( dis) b1 
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  e4 b c8( fis,) g4 c( b8 a) g2 
  e'8[( d)] cis( b) a4 g8( a) b4( g') fis2
  e4 e e dis b1 

  e4 b c8( fis,) g4 c( b8 a) g2 
  e'8[( d)] cis( b) a4 g8( a) b4( g') fis2
  e4 e e dis b1 
  
  e4 d! d d e d8( c) b2 
  d4 e d d g fis fis( fis8 e) dis2 
  e4 fis8( g) a( a,) b4 c( b8 a) gis1 
}

bass = \relative c {
  \global
  % Music follows here.
  e4 d c4. b8 a4( b) e2 
  e4 a8( g) fis4 g8( fis) 
  e( fis g a) b2 
  c4 b8( a) b4 b, e1 
  
  e4 d c4. b8 a4( b) e2 
  e4 a8( g) fis4 g8( fis) 
  e( fis g a) b2 
  c4 b8( a) b4 b, e1
  
  e8( fis) g4 fis g c, d g,2 
  g'4 fis8( e) fis4 g8( fis) e4 b e( fis) b,2
  e4 d! c b a( b) e1 
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Je -- sus, price -- less Trea -- sure, 
  Source of pur -- est plea -- sure, 
  Tru -- est Friend to me. 
  Ah, how long I've pant -- ed, 
  And my heart hath faint -- ed, 
  Thirst -- ing, \markup {\smallCaps Lord,} for Thee. 
  
  Thine I am, O spot -- less Lamb! 
  I will suf -- fer nought to hide Thee, 
  Nought I ask be -- side Thee.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Hence, all fear and sad -- ness! 
  For the \markup {\smallCaps Lord} of glad -- ness, 
  Je -- sus, en -- ters in. 
  Those who love the Fa -- ther, 
  Though the storms may ga -- ther, 
  Still have peace with -- in; 
  
  Yea, what -- e'er I here must bear, 
  Thou art still my pur -- est plea -- sure, 
  Je -- sus, price -- less Trea -- sure! 
}

verseGerman = \lyricmode {
  \set stanza = \markup { \tiny  "[German]"}
  % Lyrics follow here.
    Je -- su, mei -- ne Freu -- de,
    Mei -- nes Her -- zens Wei -- de,
    Je -- su, mei -- ne Zier,
    Ach wie lang, ach lan -- ge
    Ist dem Her -- zen ban -- ge
    Und ver -- langt nach dir!
    Got -- tes Lamm, mein Bräu -- ti -- gam,
    Auß -- er dir soll mir auf Er -- den
    Nichts sonst Lie -- bers wer -- den.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { "Soprano" "Alto" }
    } <<
      \new Voice = "soprano" \with {
        \consists "Ambitus_engraver"
      } \transpose g f {  { \voiceOne \soprano }}
      \new Voice = "alto" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } \transpose g f { { \voiceTwo \alto }}
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
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
      } \transpose g f { { \voiceOne \tenor }}
      \new Voice = "bass" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } \transpose g f { { \voiceTwo \bass }}
    >>
  >>
  \layout { }
}

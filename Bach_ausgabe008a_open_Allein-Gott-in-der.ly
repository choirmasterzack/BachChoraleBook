\version "2.19.28"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Template File cobbled together by Zack von Menchhofen 
%
% http://www.zacheryv.com
% http://www.choirmaster.ca
% http://www.choir.space
%
%
% Feel Free to Use
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  %title = "Title"
  %subtitle = "Subtitle"
  composer = "Johann Sebastian Bach (1685-1750)"
  %arranger = "Used in Cantata BWV 80"
  title = \markup { \override #'(font-name . "KaiserzeitGotisch") \fontsize #8 { "Allein Gott in der Höh' sei Ehr"}}
  %Make a Crown
  %title = \markup {   \override #'(font-name . "IntellectaCrowns") \fontsize #10 {
  %       Y
  %}}
  %Make a pretty border at the bottom
  %copyright = \markup {\override #'(font-name . "IntellectaHeraldics") \fontsize #13 {      "yyyyyy"    }}
  % Remove default LilyPond tagline
  tagline = ##f
}

%#(set! paper-alist (cons '("halfLegal" . (cons (* 8.5 in) (* 9 in))) paper-alist))
#(set-global-staff-size 16)

\paper {
  #(set-paper-size "letter")
  page-break = #ly:minimal-breaking
   #(include-special-characters)
  two-sided = true
  top-margin = .2\in
  bottom-margin = .2\in 
  left-margin = .5\in
  right-margin = .5\in
  first-page-number = #18
  print-first-page-number =  ##t
  oddHeaderMarkup = \markup \fill-line { " "  }
  evenHeaderMarkup = \markup \fill-line { " "  }
  oddFooterMarkup = \markup { 
                        \fill-line {
                          \line {   \tiny \bold \smallCaps "Bach::Riemenschneider/vonMenchhofen "    }
                          \line { \tiny \bold \smallCaps "Page: "   \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string } 
                        } 
                      }
  evenFooterMarkup = \markup { 
                        \fill-line {
                          \line { \tiny \bold \smallCaps "Bach::Riemenschneider/vonMenchhofen"  }
                          \line { \tiny \bold \smallCaps  "    Page: "   \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string  } 
                        } 
                      } 
  ragged-bottom = ##t
  system-system-spacing.basic-distance = #22
  systems-per-page = #2
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

trumpetC = \relative c'' {
  \global
  % Music follows here.
  b,8( d) g4 g a a g d g\fermata g g d8( g) a( g) d4 b4 r8 \times 2/3 { d16 b d} b4 \bar "'"
  b8( d) g4 g a a g d g\fermata g g d8( g) a( g) d4 b4 r8 \times 2/3 { d16 b d} b4 \bar "'"
  b4 d g g, r4 a'8. b16 b4 r4 d, g a b a g r4 r g 
  g d8( g) a g4 b,8 b4 r8 \times 2/3 {d16 b d} b4\fermata 
}

soprano = \relative c'' {
  \global
  % Music follows here.
  g8( a) b4 c d c b a b\fermata b b a8[( b)] c( b) a4 g8.( a16 a4) g4\fermata
  g8( a) b4 c d c b a b\fermata b b a8[( b)] c( b) a4 g8.( a16 a4) g4\fermata
  
  g a b c b a4. gis8 a4\fermata a  b c d c b a b\fermata
  b b a8[( b)] c( b) a4 g8.( a16)~ a4 g4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  d8( fis) g4 g fis e8( fis) g4. fis8 g4\fermata g g fis8( g) a( g) fis4 g4.( fis8) d4\fermata 
  d8( fis) g4 g fis e8( fis) g4. fis8 g4\fermata g g fis8( g) a( g) fis4 g4.( fis8) d4\fermata
  
  d4 d d e e e8[( c)] f!( e) e4\fermata fis g f! e e8( fis) g4 g8( fis16 e) dis4\fermata
  e4 d!8[( e)] fis( g) a[( g)] g( fis) e( d e[ d)] d4\fermata 
}

tenor = \relative c' {
  \global
  % Music follows here.
  b8( c) d4 e a, a d d d\fermata e d d e8( d) d[( c)] b4( e8 d16 c) b4\fermata
  b8( c) d4 e a, a d d d\fermata e d d e8( d) d[( c)] b4( e8 d16 c) b4\fermata
  
  b4 a g g gis a d c\fermata a d c b c8( d) e4 e, fis\fermata g8( a) b[( c)] d( g,) fis( g16 fis) e8( fis) 
  g4.( fis8) b4\fermata
}

bass = \relative c {
  \global
  % Music follows here.
  g4 g'8( fis) e4 d a b8( c) d4 g,\fermata e' b8( c) d4 a8( b) c[( d)] e( d c[ d)] g,4\fermata
  g4 g'8( fis) e4 d a b8( c) d4 g,\fermata e' b8( c) d4 a8( b) c[( d)] e( d c[ d)] g,4\fermata
  
  g' fis f! e d c8( f!) d[( e)] a,4\fermata
  d8( c) b4 a gis a e'8( d) c4 b\fermata
  e8( fis) g4 fis8( e) dis[( e)] cis( d) e( b c![ d)] g,\fermata
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Al -- lein Gott in der Höh' sei Ehr'
  Und Dank für sei -- ne Gna -- de,
  Da -- rum daß nun und nim -- mer -- mehr
  Uns rüh -- ren kann kein Scha -- de.
  Ein Wohl -- ge -- fall'n Gott an uns hat,
  Nun ist groß' Fried' ohn' Un -- ter -- laß,
  All' Fehd' hat nun ein En -- de.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Wir lo -- ben, preis'n, an -- be -- ten dich
  Für dei -- ne Ehr'; wir dan -- ken,
  Daß du, Gott Va -- ter e -- wig -- lich
  Re -- gierst ohn' al -- les Wan -- ken.
  Ganz un -- ge -- meß'n ist dei -- ne Macht,
  Fort g'schieht, was dein Will' hat be -- dacht;
  Wohl uns des fei -- nen Her -- ren!
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  O Je -- su Christ, Sohn ein -- ge -- bor'n
  Dei -- nes himm -- li -- schen Va -- ters,
  Ver -- söh -- ner der'r, die war'n ver -- lor'n,
  Du Stil -- ler un -- sers Ha -- ders,
  Lamm Got -- tes, heil' -- ger Herr und Gott,
  Nimm an die Bitt' von un -- srer Not,
  Er -- barm' dich un -- ser al -- ler!
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  O Heil' -- ger Geist, du höch -- stes Gut,
  Du al -- ler -- heil -- samst' Trös -- ter,
  Vor's Teu -- fels G'walt for -- tan be -- hüt',
  Die Je -- sus Christ er -- lö -- set
  Durch gro -- ße Mart'r und bit -- tern Tod,
  Ab -- wend all un -- sern Jamm'r und Not!
  Da -- rauf wir uns ver -- la -- ßen.
}

trumpetCPart = \new Staff \with {
  fontSize = #-3
  \override StaffSymbol.staff-space = #(magstep -3)
  \consists "Ambitus_engraver"
  instrumentName = "Cor."
} \trumpetC

choirPart = \new ChoirStaff <<
  \new Staff \with {
%    instrumentName = "S."
    \consists "Ambitus_engraver"
  } { \soprano }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour } 
  \new Staff \with {
    %instrumentName = "A."
    \consists "Ambitus_engraver"
  } { \alto }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }   
    \new Staff \with {
    %instrumentName = "T."
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenor }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour } 
  \new Staff \with {
    %instrumentName = "B."
    \consists "Ambitus_engraver"
  } { \clef bass \bass }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour } 
>>

\score {
  <<
    \trumpetCPart
    \choirPart
  >>
  \layout {
    indent = #0
  }
}


%%%%%%%%%%% USE THIS SECTION FOR TWO COLUMN TEXT BELOW MUSIC
%
%#(define-markup-command (columns layout props args) (markup-list?)
%   (let ((line-width (/ (chain-assoc-get 'line-width props
%                         (ly:output-def-lookup layout 'line-width))
%                        (max (length args) 1))))
%     (interpret-markup layout props
%       (make-line-markup (map (lambda (line)
%                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
%                                  #:override `(line-width . ,line-width)
%                                  line))
%                               args)))))
%
%\markup {
%  \fill-line { 
%     \line { 
%       \override #'(font-name . "IntellectaHeraldics") \fontsize #20 {
%         b
%       }
%     }
%  }
%}

%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #17 {{\concat {\smallCaps "Ein Feste Burg ist Unser Gott "}}}
%\markup \abs-fontsize #17 {{\concat {
% \italic {"(A Mighty Fortress is our God)"}}}}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup 
%  \abs-fontsize #11  {
%    \wordwrap  { \justify {
%      In his book, \italic {Bach: Music in the Castle of Heaven,} Sir John Eliot Gardner shares a story of the Bach family.  Bach's whole family were musicians.  They would often get together for huge family affairs-Dinners and Picnics.  Apparently, the Bach family loved to sing "bawldy" drinking songs.  But being a good and faithful Lutheran family, they would often also sing hymns together. So I had to include the most famous of all the German hymns!}
%      }
%    }	   
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 \fill-line {\smallCaps { "- Translation -"} }
%\markup \abs-fontsize #12 {\null}
%\markup { \columns {
%  \column { 
%    \override #'(font-name . "PlakatFraktur") {
%    \wordwrap  { \justify {
%        "Ein' feste Burg ist unser Gott, Ein' gute Wehr und" 
%        "waffen, Er hilft uns frei aus aller Not, Die uns jetzt" 
%        "hat betroffen. Der alt' böse Feind, Mit ernst er's "
%        "jetzt meint, Groß Macht und viel List Sein' grausam" 
%        "Rüftung ist, Auf Erb' ist nicht Sein's Gleichen." 
%    }}  
%    }
%  }
%  \column \abs-fontsize #10 { 
%    \wordwrap  { \justify {
%      "A mighty fortress is our God, A bulwark "
%      "never failing, He helps us free from " 
%      "every need that affects us. The old evil" 
%      "enemy, thinks he's now a great power and" 
%      "much cunning - His cruelty has is not "
%      "an equal."
%    }}
%  }
%}
%}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup { \columns {
%  \column { 
%    \override #'(font-name . "PlakatFraktur")  {
%    \wordwrap  { \justify {
%        "Mit uns'rer Macht ist nichts gethan, Wir find gar" 
%        "bald verloren, Es streit' für uns der rechte Mann,"
%        "Den Gott hat selbst erforen. Fragst du, wer der" 
%        "ist? Er heißt Jesus Christ, Der Herr Zebaoth,"
%        "Und ist fein ander' Gott, Das feld"
%        "muß Er behalten." 
%    }}  
%    }
%  }
%  \column \abs-fontsize #10 { 
%    \wordwrap  { \justify {
%      "With our power nothing is done, we find we are"
%      "lost. For us the right man is on our side,"
%      "whom God Himself has given. Ask you who is"
%      "He? His name is Jesus Christ, the Lord of"
%      "Hosts, and He must win the battle."
%    }}
%  }
%}
%}


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
  poet = "Used in Cantata BWV 80"
  title = \markup { \override #'(font-name . "KaiserzeitGotisch") \fontsize #8 { "Ein' feste Burg ist unser Gott"}}
  subtitle = "Ausgabe III"
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
#(set-global-staff-size 17)

\paper {
  #(set-paper-size "letter")
  page-break = #ly:minimal-breaking
   #(include-special-characters)
  two-sided = true
  top-margin = .3\in
  bottom-margin = .3\in 
  left-margin = .5\in
  right-margin = .5\in
  system-system-spacing.basic-distance = #24
  systems-per-page = #2
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
  \key d \major
  \time 4/4
  \partial 4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  d4 d d a8( b) cis4 d8( cis) b4 a\fermata d cis b a b8( a) g( fis e4) d\fermata \bar "||"
  d'4 d d a8( b) cis4 d8( cis) b4 a\fermata d cis b a b8( a) g( fis e4) d\fermata \bar "||"
  d a'( b) a gis a2\fermata d,4 a' b cis d\fermata cis d cis b2 a4\fermata
  b4 b a b8( a) g4 fis\fermata d'! cis b a b8( a) 
  g( fis e4) d4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  a'4 a8( g) fis[( e)] d4 e a,8( a'4) gis8 e4\fermata b'e,8( fis) g4 fis8( e) d[( cis)]
  b4( cis) a\fermata 
  a'4 a8( g) fis[( e)] d4 e a,8( a'4) gis8 e4\fermata b'e,8( fis) g4 fis8( e) d[( cis)]
  b4( cis) a\fermata
  d4 cis8( fis e4) e8( fis) e4 e2\fermata d4 d8( c!) b( d) g4 fis\fermata fis fis e8( a) 
  fis4( e8 d) cis4\fermata e d8( e) fis4 fis fis8( e) dis4\fermata fis e d?8( g) 
  g8( fis16 e) fis4 g8( b, cis4) a
}

tenor = \relative c' {
  \global
  % Music follows here.
  fis8( e) d8[( e)] fis[( g)] a4 g fis b,8( e) cis4\fermata fis,8( gis) a4 e'8( d) cis4 
  b8( cis) d4( a8 g) fis4 \bar "||"
  fis'8( e) d8[( e)] fis[( g)] a4 g fis b,8( e) cis4\fermata fis,8( gis) a4 e'8( d) cis4 
  b8( cis) d4( a8 g) fis4\fermata \bar "||"
  fis8( g) a[( d] cis b) cis4 b cis2\fermata 
  fis,8( g) a4 d e a,\fermata a a8( gis) a4 a( gis?) e\fermata g?8( a) b[( cis)] d( c!) b4 b b\fermata b8( a) 
  g( a) b4 e8( cis) d4 d( a8 g) fis4
}

bass = \relative c {
  \global
  % Music follows here.
  d'8( cis) b4 a8[( g)] fis[( g)] fis( e) fis4 e a,\fermata b cis8( d) e4 fis 
  g8( a) b( g a a,) d4\fermata
  d'8( cis) b4 a8[( g)] fis[( g)] fis( e) fis4 e a,\fermata b cis8( d) e4 fis 
  g8( a) b( g a a,) d4\fermata
  d8( e) fis4( gis) a8( d,) e4 
  a,2\fermata b4 fis' g e d\fermata fis
  b, cis d( e) a,\fermata e'8( fis) g4 d dis e b\fermata b e8( fis) g[( e)] cis[( a)] d( cis) 
  b( g a4) d,\fermata
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Ein' fe -- ste Burg ist un -- ser Gott, 
  Ein' gu -- te Wehr und waf -- fen, 
  
  Er hilft uns frei aus al -- ler Not, 
  Die uns jetzt hat be -- trof -- fen.
  
  Der alt' bö -- se Feind, 
  Mit ernst er's jetzt meint, 
  Groß Macht und viel List 
  Sein' grau -- sam Rü -- ftung ist, 
  Auf Erb' ist nicht Sein's Glei -- chen.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Mit uns' -- rer Macht ist nichts ge -- than, 
  Wir find gar bald ver -- lo -- ren
  Es streit' für uns der rech -- te Mann, 
  Den Gott hat selbst er -- fo -- ren. 
  Fragst du, wer der ist?
  Er heißt Je -- sus Christ, 
  Der Herr Ze -- ba -- oth, 
  Und ist fein an -- der' Gott, 
  Das feld muß Er be -- hal -- ten.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Und wenn die Welt voll Teu -- fel wär' 
  Und wollt' uns gar ver -- schlin -- gen
  
  So fürch -- ten wir uns nicht so sehr, 
  Es soll uns doch ge -- lin -- gen. 
  
  Der Fürht die -- ser Welt, 
  Wie sau'r er sich stellt,
  
  Thut er uns doch nicht, 
  Das macht, er ist ge -- richt't, 
  Ein Wört -- lein fann ihn fäl -- len.
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  Das Wort sie sol -- len laf -- fen stah'n, 
  Und sein Danf da -- zu ha -- ben: 
  
  Er ist bei uns wohl auf dem Plan
  Mit sei -- nem Geist und Ga -- ben. 
  
  Neh -- men sie den Leib, 
  Gut, Ehr', Kind und Weib, 
  Laß fah -- ren da -- hin, 
  
  Sie ha -- ben's fein Ge -- winn, 
  Das Reich muß uns doch blei -- ben.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      %instrumentName = "S."
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
  \layout {
    indent = 0
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


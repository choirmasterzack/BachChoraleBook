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
  subtitle = "Ausgabe II"
  composer = "Johann Sebastian Bach (1685-1750)"
  poet = "Used in Cantata BWV 80"
  title = \markup { \override #'(font-name . "KaiserzeitGotisch") \fontsize #8 { "Ein' feste Burg ist unser Gott"}}
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
  %between-system-space = 10\mm
  two-sided = true
  top-margin = .2\in
  bottom-margin = .2\in 
  %inner-margin = 1\in
  left-margin = .5\in
  right-margin = .5\in
  %outer-margin = 0.5\in
  %page-count = #2
  %between-system-space = 20\mm
  system-system-spacing.basic-distance = #22
  systems-per-page = #2
  first-page-number = #2
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
  d4 d d a8( b) cis4 d8( cis) b4 a\fermata
  d cis b a b8( a) g( fis e4) d\fermata \bar "||"
  d'4 d d a8( b) cis4 d8( cis) b4 a\fermata
  d cis b a b8( a) g( fis e4) d\fermata
  d a'( b) a gis a\fermata d, a' b8 cis d4\fermata
  cis d8[ cis] b b a4\fermata  b b a b8( a g4) fis\fermata
  d'? cis b a b8( a) g( fis e4) d\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  a'4 a8[( g)] fis[( g)] a[( fis)] g[( a)] fis[( e)] d[( e)] cis4 fis 
  e8( fis) g4 fis8[( e)] d4 d( cis) a 
  a'4 a8[( g)] fis[( g)] a[( fis)] g[( a)] fis[( e)] d[( e)] cis4 fis 
  e8( fis) g4 fis8[( e)] d4 d( cis) a
  d( cis8) fis( e4) cis8( d) b4 a d d g8 g fis4 fis fis16( gis) a8 a gis a4
  g? g fis fis( e) dis fis8( gis) a4 g! g fis8( e) d4( cis) a
}

tenor = \relative c' {
  \global
  % Music follows here.
  fis8( e) d4 c!8( b) d4 e a, a8( gis) a4 
  fis8( gis) a4 e'8( d) cis4 b8( cis) d4( a8 g) fis4
  fis'8( e) d4 c!8( b) d4 e a, a8( gis) a4 
  fis8( gis) a4 e'8( d) cis4 b8( cis) d4( a8 g) fis4
  fis8( gis) a[( d] cis[ b]) e([ fis]) e([ d]) cis4 fis,8( g) a4 e'8 e 
  d4 a b8[ e] fis[ e] cis4 b8([ cis] d4) d8([ c!]) b4 b b b e e e d8( a) 
  b4( e,8 a) fis4
}

bass = \relative c {
  \global
  % Music follows here.
  d'8( cis) b4 a8( g) fis4 e d e a,\fermata 
  b cis8( d) e4 fis g8( a) b( g a a,) d4 
  d'8( cis) b4 a8( g) fis4 e d e a,\fermata 
  b cis8( d) e4 fis g8( a) b( g a a,) d4
  d8( e) fis4( gis) a8[( d,)] e4 a,\fermata
  b fis' e8 a, d4\fermata fis b,8[ cis] d e a,4 e'( b8 cis) d4 
  dis e b\fermata b cis8[( d)] e( d) cis[( a)] d( cis) b( g a4) d\fermata
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


\version "2.8.8"

\paper{
  printallheaders = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##t
  head-separation = #1
  page-top-space = #1
}

upper = \relative c' {
  \clef treble
   \key g \minor
   \time 2/4 
   \once \override Score.RehearsalMark #'self-alignment-X = #left
   \mark "With a good swing."
    % 0
    \partial 8
      { f8 }
    % 1
    <<
      { <f d>4 g8.\noBeam a16\noBeam } \\
      {     s4 <ees>4 \stemNeutral }
    >> |
    % 2
      { <f bes>4 <ees g c>4 }
    % 3
    <<
      { bes'8( c8) bes8\noBeam <d, f a>8 } \\
      { <d g>4. s8 }
    >> |
    % 4
      { <d g>4 f4 } |
\break
    % 5
      { <f g>8\noBeam <ees g> <d a'>\noBeam <c a'> } |
    % 6
      { bes'4 d,8.\noBeam d16 } |
    % 7
    <<
      { \tieDown c2~ } \\
      { s2 }
    >> |
    % 8
    <<
      { c8 } \\
      { s8 }
    >>
    r8
    <<
      { bes'8( a) } \\
      { f4 }
    >> |
    % 9
      { g8.\noBeam f16 g8\noBeam <ees a>8 } |
\break
    % 10
    <<
      { bes'8.\noBeam a16 bes8( c8) } \\
      { d,4 s8 f8 }
    >>
    % 11
    <<
      { d'8.( c16) d8 c8 } \\
      { f,4 s4 }
    >>
    % 12
      { <f a f'>4 <g c ees>8\noBeam \stemUp <f bes d>8 \stemNeutral }
    % 13
      { <f a c>8\noBeam <d g bes>8 <g c ees>4 }
    % 14
      { <f bes d>4 <f a c>4 }
    % 15
      { <d f bes>2 \bar "||" \noPageBreak}
}



lower = \relative c {
    \clef bass
    \key g \minor
    \time 2/4

    % 0
    \partial 8
    { r8 }
    % 1
    <bes bes'>4 <ees bes'>4 |
    % 2
    <d bes'>4 c4 |
    % 3
    g'4. d8 |
    % 4
    <g bes>4 <d bes'>4 |
\break
    % 5
    <c d'>4 <f a>8\noBeam <ees f>8 |
    % 6
    <d f bes>4 <e g bes>4 |
    % 7
    <<
      { bes'4 a8 g8 } \\
      { f2~ }
    >> |
    % 8
    <<
      { a8 } \\
      { f8 }
    >>
    r8
    <<
      { \stemDown <bes d,>4 \stemNeutral } \\
      { s4 }
    >> |
    % 9
    <<
      { bes4 s4 } \\
      { ees,8. d16 ees8 f }
    >>
\break
    % 10
    { g8. f16 g8 a8 }
    % 11
    { bes8. a16 bes8\noBeam <g c e>8 }
    % 12
    { <f c'>4 c8\noBeam \stemUp d8 \stemNeutral }
    % 13
    { f8\noBeam g8 c,4 }
    % 14
    { f4 f,4 }
    % 15
    { bes2 \bar "||" \noPageBreak }
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricmode {
      \set associatedVoice = #"singer"

      U8 -- nite!4 All8. u16 -- nite!4 It's4 now4__ all8 u8 -- nite,4 For4
      Summer4 is8 a8 come4 in8. to16 day;2 __ \skip 4 And4 whi8 -- ther16 we8 are8
      \skip 16 go8. -- ing16 it's4 all__4 now8 u8 -- nite,4 In8 the8 mer8 -- ry8 morn4 -- ing4 of4 May.2
    }
    \new Staff = lower {
      \clef bass
      \lower
    }
  >>

  \header {
    title = \markup \center-align { "THE MAY MORNING SONG" }
  }

  \layout {
    \context { \GrandStaff \accepts "Lyrics" }
    \context { \Lyrics     \consists "Bar_engraver" }
    \context { \Score      \remove "Bar_number_engraver" }
  }

  \midi { \tempo 4 = 110 }
}

% 2014 = em dash.

\markup {
 \hspace #-1
 \column {
  \line { With the merry singing and the joyful spring, }
  \line { \hspace #3 For summer is a-come in to-day, }
  \line { How happy are those little birds that merrily doth sing }
  \line { \hspace #3 In the merry morning of May! }
  \line { \italic "Chorus: Unite! all unite! &c, after each verse." }
  \hspace #0.1
  \line { Young men and maidens, I warn you every one, }
  \line { \hspace #3 For summer is a-come in to-day, }
  \line { To go unto the green woods and bring the may home }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \line { Rise up, Mr #(ly:export (ly:wide-char->utf-8 #x2014)), with your sword by your side, }
  \line { \hspace #3 For summer is a-come in to-day, }
  \line { Your steed is in the stable and waiting for to ride }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \line { Rise up, Mr #(ly:export (ly:wide-char->utf-8 #x2014)), and gold be your ring, }
  \line { \hspace #3 For summer is a-come in to-day, }
  \line { And send us out a cup of ale, and better we shall sing, }
  \line { \hspace #3 In the merry morning of May!  }
  \hspace #0.1
  \line { Rise up Master #(ly:export (ly:wide-char->utf-8 #x2014)), and reach to me your hand, }
  \line { \hspace #3 For summer is a-come in to day; }
  \line { And you shall have a lively lass, and a }
  \line { \hspace #6 thousand pounds in hand, }
  \line { \hspace #3 In the merry morning of May!  }
  \hspace #0.1
  \hspace #0.1
  \line { Where are the maidens that here now should sing? }
  \line { \hspace #3 For summer is a-come in to day, }
  \line { Oh, they are in the meadows the flowers gathering, }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \hspace #0.1
  \line { The young maids of Padstow, they might if }
  \line { \hspace #6 they would#(ly:export (ly:wide-char->utf-8 #x2014)) }
  \line { \hspace #3 For summer is a-come in to day#(ly:export (ly:wide-char->utf-8 #x2014)) }
  \line { They might have a garland, and decked it all in gold, }
  \line { \hspace #3 In the merry morning of May! }
 }
 \hspace #3
 \column {
  \line { "Rise up, Mrs" #(ly:export (ly:wide-char->utf-8 #x2014))", all in your gown of green," }
  \line { \hspace #3 For summer is a-come in to-day; }
  \line { You are so fair a lady as waits upon the queen, }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \line { Rise up, Mr #(ly:export (ly:wide-char->utf-8 #x2014)), I know you well a fine, }
  \line { \hspace #3 For summer is a-come in to-day; }
  \line { You have a shilling in your purse, but I wish }
  \line { \hspace #6 it was in mine, }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \line { Rise up, Miss #(ly:export (ly:wide-char->utf-8 #x2014)), and strew all your flowers, }
  \line { \hspace #3 For summer is a-come in to-day; }
  \line { It is but a while ago since we have strewed ours, }
  \line { \hspace #3 In the merry morning of May!  }
  \hspace #0.1
  \line { Rise up, Miss #(ly:export (ly:wide-char->utf-8 #x2014)), and reach to me your hand }
  \line { \hspace #3 For summer is a-come in to-day; }
  \line { You are so fair a damsel as any in the land, }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \line { Where are the young men that here now }
  \line { \hspace #6 should dance? }
  \line { \hspace #3 For summer is a-come in to day; }
  \line { Oh some they are in England, and some they }
  \line { \hspace #6 are in France, }
  \line { \hspace #3 In the merry morning of May! }
  \hspace #0.1
  \line { The young men of Padstow, they might if }
  \line { \hspace #6 they would#(ly:export (ly:wide-char->utf-8 #x2014)) }
  \line { \hspace #3 For summer is a-come in to-day#(ly:export (ly:wide-char->utf-8 #x2014)) }
  \line { They might have built a ship, and gilt her all in gold, }
  \line { \hspace #3 In the merry morning of May!  }
  \hspace #0.1
  \line { Now fare ye well, we bid you all good cheer, }
  \line { \hspace #3 For summer is a-come in to-day, }
  \line { We'll call once more unto your house before }
  \line { \hspace #6 another year, }
  \line { \hspace #3 In the merry morning of May! }
 }
}


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
   \time 3/8
   \once \override Score.RehearsalMark #'self-alignment-X = #left
   \mark "Not too fast, with good accent."

    % 1
    <<
      { f16\noBeam bes16 <f a>8\noBeam <f bes>8 } \\
      { d8 s4 }
    >> |
    % 2
      <ees g bes>8\noBeam <d f bes>8\noBeam f8 |
    % 3
      <d bes'>16\noBeam <f bes>16 <e c'>8\noBeam <e d'>8 |
    % 4
      <f c'>8\noBeam <f c'>8\fermata\noBeam <f d'>8 |
\break
    % 5
    <<
      { g16\noBeam g16 <f a>8\noBeam <f bes>8 } \\
      { d8 s8 s8 }
    >> |
    % 6
      <ees c'>8 <ees g>8\noBeam <c f c'>8 |
    % 7
      <c g' c>8[( <d g d'>8)] <ees g ees'>8\noBeam |
    % 8
      <f d'>8[( <g c>8)] <c, f a>8 |
    % 9
    <<
      { bes'8 bes4 \bar "||" } \\
      { d,4. }
    >>
}

lower = \relative c {
    \clef bass
    \key g \minor
    \time 3/8

    % 1
    bes8 r8 bes'8 |
    % 2
    bes,8 r8 <f' a>8 |
    % 3
    <g bes>8 <g bes>8\noBeam <c, bes'>8 |
    % 4
    <f bes>8 <f a>8\noBeam <d a'>8 |
\break
    % 5
    <<
      { \stemDown <g bes>8\noBeam \stemUp c8\noBeam } \\
      {       s8 f,16[ ees16] <d f>8 }
    >> |
    % 6
    <c g'>8 <c g'>8\noBeam <f a>8 |
    % 7
    <<
      { \stemDown <ees g>8 <d f>8 c8 \stemNeutral } \\
      {       s8     s8 \stemUp g'16 a16 \stemNeutral }
    >> |
    % 8
    <<
      { bes4 s8 } \\
      { d,8[ ees8] f8\noBeam }
    >> |
    % 9
    <f bes,>4. |
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricmode {
      \set associatedVoice = #"singer"

      All16 now for8 to fetch home, The Summer and the May, O! For
      Summer is a -- come, O! And Win4 -- ter8 is__ _ a8 -- go,8 O!4
    }
    \new Staff = lower {
      \clef bass
      \lower
    }
  >>

  \header {
    title = \markup \center-align { "THE DAY SONG" }
  }

  \layout {
    \context { \GrandStaff \accepts "Lyrics" }
    \context { \Lyrics     \consists "Bar_engraver" }
    \context { \Score      \remove "Bar_number_engraver" }
  }

  \midi { \tempo 4 = 58 }
}

\markup {
 \hspace #8
 \column {
  \line {  Up flies the kite, }
  \line {  \hspace #3  And down falls the lark, O! }
  \line {  Un Ursula Bird she had an old ewe, O! }
  \line {  \hspace #3  And she died in Old Park O! }
  \hspace #0.1
  \line {  Oh, where is St. George? }
  \line {  \hspace #3  Oh where is he, O? }
  \line {  He's down in his long boat, }
  \line {   \hspace #3 All on the salt sea, O! }
 }
 \hspace #12
 \column {
  \line {  Oh, where are those French dogs? }
  \line {  \hspace #3  Oh, where are they, O? }
  \line {  They're down in their long boats, }
  \line {  \hspace #3  All on the salt sea, O! }
  \hspace #0.1
  \line {  Oh, where are those French dogs? }
  \line {  \hspace #3  Oh where are they, O! }
  \line {  They shall eat the grey goose feathers, }
  \line {  \hspace #3  And we will eat the roast, O! }
 }
}


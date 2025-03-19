\version "2.24"
\language "english"

opening_rh_A = {
  \fixed e' {
    <e b>8 b, <e b> b, <e b>8 b, <e b> b, |
    <fs b> b, <fs b> b, <fs b> b, <fs b> b, |
    <e b>8 b, <e b> b, <e b>8 b, <e b> b, |
    <cs a> a, <cs a> a, <cs a> a, <cs a> a, |
  }
}
opening_rh_B = {
  \fixed e' {
    <e b>8 b, <e b> b, <e b>8 b, <e b> b, |
    <fs b> b, <fs b> b, <fs b> b, <fs b> b, |
    <ds b>8 b, <ds b> b, <ds b>8 b, <ds b> b, |
    <cs a> a, <cs a> a, <cs a> a, <cs a> a, |
  }
}
opening_lh = {
  \relative e {
    
    e,2~e8 fs gs b~|b2~b8 cs ds cs~|cs2~cs8 ds e a,~|a2~a8 ds e e,~|
    e2~e8 fs gs b~|b2~b8 cs ds gs,~|gs2~gs8 gs' gs, a~|a2~a8 ds e4|
    
    e,2~e4 gs8 b~|b2~b8 cs ds4 |cs2~cs8 ds e a,~|a2~a8 ds e4|
    e,2~e4 gs8 b~|b2~b8 cs ds4|gs,2~gs8 gs' gs, a~|a2~a8 ds e4|
  }
}

piano = {
  \new PianoStaff \with { instrumentName = "Piano" shortInstrumentName = "P" } <<
    \new Staff {
      \key e \major
      \time 4/4
      \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
      \opening_rh_A
      \opening_rh_B	\mark \default
      \opening_rh_A
      \opening_rh_B
      \opening_rh_A
      \opening_rh_B
      \opening_rh_A
      \opening_rh_B	\mark \default
    }
    \new Dynamics {
      s1\mf
    }
    \new Staff {
      \key e \major
      \time 4/4
      \clef bass
      \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
      \opening_lh
      \opening_lh
    }
  >>
}
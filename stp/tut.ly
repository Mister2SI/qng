\version "2.24"
\language "english"

rh_one = \relative c'' {
  r8 e[gs a~]a[gs~]4 |
  r8 e[gs a~]a[gs~]4 |
  r8 e[gs a~]a[gs~]4 |
  r8 e[gs a~]a[gs~]4 |
  r8 e[gs a~]a[gs~]4 |
  r8 e[gs a~]a[gs~]4 |
  r8 cs,[ds e~]e[ds~]4 |
  r8 cs[ds e~]e[fs gs a] |
}

rh_two = \fixed c'' {
  a8[a' gs' gs~]gs[a~]4 |
  a8[a' gs' gs~]gs[a~]4 |
  a8[a' gs' gs~]gs[fs~]4 |
  a8[a' gs' gs~]gs[fs~]4 |
  e8[e' ds' ds~]ds[cs~]4 |
  e8[e' ds' ds~]ds[cs~]4 |
  ds4. cs ds4~ |
  ds4. e4 gs4. |
}



lh_one = \relative {
  a8[cs e gs a gs e cs] |
  a8[cs e gs a gs e cs] |
  fs,[cs' e gs a gs e cs] |
  fs,[cs' e gs a gs e cs] |
  e,[b' e gs a gs e b] |
  e,[b' e gs a gs e b] |
  cs,[gs' cs e gs e cs gs] |
  cs,[gs' cs e gs a b cs] |
}

lh_two = \fixed c {
  a,[a e' a'] a,[a cs' gs'] |
  a,[a e' a'] a,[a cs' gs'] |
  fs,[fs cs' gs'] fs,[fs a e'] |
  fs,[fs cs' gs'] fs,[fs a e'] |
  e,[e gs e'] e,[e a cs'] |
  e,[e gs e'] e,[e a cs'] |
  cs,[cs gs e'] cs,[cs gs cs'] |
  cs,[cs b ds'] cs,[cs e' gs'] |
}

<<
  \new PianoStaff \with { instrumentName = "Piano" \override StaffGrouper.staff-staff-spacing.padding = #4 } <<
    \new Staff {
      \key e \major
      \clef "treble"
      
      \rh_one
      r1 r1 r1 r1 r1 r1 r1 r1
      \clef "treble^8"
      \rh_two
    }
    \new Dynamics {
      s1\pp
    }
    \new Staff {
      \key e \major
      \clef "treble_8"
      
      \lh_one
      \clef bass
      \lh_two
      \lh_two
      \clef "treble_8"
      \lh_one
    }
  >>
>>
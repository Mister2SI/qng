\version "2.24"
\language "english"

\header {
  title = "Piano Demo"
  arranger = "Jonah Lotegeluaki"
  tagline = ##f
}

\layout {
  indent = 1.0\in
  short-indent = 0.5\in
}

\new PianoStaff \with { instrumentName = "Piano" } <<
  % RH
  \new Staff {
    \time 4/4
    \clef "bass^8"
    
    \fixed c' {
      c8[g,16 g~] g[g,8 c16~] c[g, c8] g g, |
      c8[g,16 g~] g[g,8 c16~] c[g, c8] g g,16 c |
      c8[g,16 g~] g[g,8 c16~] c[f,16 g, c] g8 g, |
      \acciaccatura cs8 <a, d f>[<g, c e>16 \acciaccatura cs8 <a, d f>16~]q[<a, c e>8
        \acciaccatura cs8 <a, d f>16~]q16[<g, c e>8 <f, a, d>16~]q[ef32 d c8] |
      % ========== m5 ==========
      c8[g,16 g~] g[g,8 c16~] c[g,8 g16~] g[g, c d32 ef] |
      e16[a, e b~] b[a,8 <a, e b>16~] q[ds8.] <a, b, ds b>16[e fs b,] |
      \clef treble
      \tuplet 3/2 { <b, e a b>4 <e gs> <b, e b>~ } q e'8 b' |
    }
    \fixed c'' {
      \ottava 1
      <d g b>8.[a16~] a8[<d g c'>~] q4 g'16[a' b' c''] |
      % ========== m9 ==========
      \tuplet 4/3 2. {<d' g' b'>4 <c' f' a'> <d g b> <c f a>} \ottava 0 <d, g, b,>8[<c, f, a,>]
    }
    \fixed c' {
      %m10
      \tuplet 3/2 2 {<g c' e'>4 <f c' d'> <f c' f'>} r4 \tuplet 3/2 8 {<f c'>16 d' e' f'[e' d']} |
      \tuplet 4/3 2. {<g c' e'>4 <f bf d'> <g' c'' e''> <f' bf' d''>} <f g c' e'>8[<f g b d'>]|
      \acciaccatura cs' <a d' f'>8[<g c' e'>] \acciaccatura cs' <a d' f'>8[<g c' e'>]
        \acciaccatura cs' <a d' f'>8[<a c' e'>16 <fs a d'>~] q[<a c'>8 <f c'>16] |
      % ========== m13 ==========
    }
  }
  \new Dynamics {
    s1\p
  }
  % LH
  \new Staff {
    \time 4/4
    \clef bass
    
    \fixed c {
      <c c,>4 c c8. c16~c8 c16 b, |
      <bf,, bf,>4 bf, bf,8. bf,,16~bf,,8 bf,16 f, |
      <a, a>4 a a8. a16~a4 |
      \ottava -1
      <d,, d,>4 <e,, e,> <f,, f,> <g,, g,>
      %m5
      <c,, c,> c,8[c,] c,[c,] c,[c,] |
      <fs,, fs,>4 fs, <b,, b,> q |
      \ottava 0
      \tuplet 3/2 2 {<e, e>2 e4~} e2 |
      \clef treble
      \tuplet 3/2 2 {<f' g' b'>2 <f' a' c''>4~}q8 f r4 |
      % ========== m9 ==========
      \tuplet 2/3 2. {<f'' g'' b''>4 f'4} \clef bass f,,8[f,] |
      \ottava 0
      \tuplet 3/2 2  {<bf,, bf,>2 q4} r8 bf,, r4 |
      \tuplet 4/3 2. {<bf, bf>4 q <f bf c' d'>2} bf8. a,16 |
      <d, d>8.[b,16] <e, e>8.[c16] <f, f>4 <fs, fs> |
      % ========== m13 ==========
      <g, g>4 r <g,, g,>2 |
      
    }
  }
>>
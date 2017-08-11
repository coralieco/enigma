class ConnexionTable

  TABLE =
    {
      'a': 'c',
      'b': 'b',
      'c': 'a',
      'd': 'f',
      'e': 'e',
      'f': 'd',

      'g': 'i',
      'h': 'h',
      'i': 'g',
      'j': 'l',
      'k': 'k',
      'l': 'j',

      'm': 'o',
      'n': 'n',
      'o': 'm',
      'p': 'r',
      'q': 'q',
      'r': 'p',

      's': 'v',
      't': 'u',
      'u': 't',
      'v': 's',
      'w': 'z',
      'x': 'y',
      'y': 'x',
      'z': 'w'
    }
  # on tape une lettre
  # STEP1: elle passe dans le table des connexions
  # STEP2: elle passe successivement dans trois rotors
  # STEP3: elle passe dans le réflecteur
  # NB: Après chaque lettre tapée, le premier rotor tourne d'un cran. Quand il est revenu à sa position initiale, le deuxième rotor se met à tourner.

end
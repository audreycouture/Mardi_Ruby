def chiffre_de_cesar(mot, chiffre)
  result = ""
  c = 0
  m = mot.length - 1
  mot.downcase!
  for c in (0...m)

    case
    when mot[c] != " " && ascii = mot[c].ord + chiffre < 122 # && mot[c].include('a'...'z') == true
      then ascii = mot[c].ord + chiffre
      result += ascii.chr

    when mot[c] != " " && ascii = mot[c].ord + chiffre > 122
      then ascii = mot[c].ord + (chiffre - 26)
    result += ascii.chr

  else
    result += " "
  end
end
    puts result.capitalize!

end

chiffre_de_cesar("What a string!", 5)

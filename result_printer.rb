class ResultPrinter

  def print_status(game)
    clear
  puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
  # Выводим текущее количество ошибок и все «промахи»
  puts "Ошибки: #{game.bad_letters.join(', ')}"
  # Выводим саму виселицу, состояние которой определяется количеством ошибок
  print_viselitsa(game.errors)

  if game.status == -1
    # Если статус игры -1 (проигрыш) — выводим загаданное слово и говорим, что
    # пользователь проиграл.
    puts "\nВы проиграли :(\n"
    puts "Загаданное слово было: " + game.letters.join("")
    puts
  elsif game.status == 1
    # Если статус игры 1 (выигрыш) — поздравляем пользователя с победой.
    puts "Поздравляем, вы выиграли!\n\n"
  else
    # Если ни то ни другое (статус 0 — игра продолжается), просто выводим
    # текущее количество оставшихся попыток.
    puts "У вас осталось ошибок: " + (7 - game.errors).to_s
  end
end

def get_word_for_print(letters, good_letters)
    result = ""

    for item in letters do
      if good_letters.include?(item)
        result += item + " "
      else
        result  += "_ "
      end
    end

    return result
  end

def print_viselitsa(errors)
  # Оператор case, аналогичен набору if с несколькими ветвями elsif
  case errors
    when 0
      puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 1
      puts "
        _______
        |/
        |     ( )
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      "
    when 2
      puts "
        _______
        |/
        |     ( )
        |      |
        |
        |
        |
        |
        |
      __|________
      |         |
      "
    when 3
      puts "
        _______
        |/
        |     ( )
        |      |_
        |        \\
        |
        |
        |
        |
      __|________
      |         |
      "
    when 4
      puts "
        _______
        |/
        |     ( )
        |     _|_
        |    /   \\
        |
        |
        |
        |
      __|________
      |         |
      "
    when 5
      puts "
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |
        |
        |
      __|________
      |         |
      '"
    when 6
      puts "
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      "
    when 7
      puts "
        _______
        |/     |
        |     (_)
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      "
    end
  end

  def clear
    system("clear") || system("cls")
  end
end

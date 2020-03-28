require_relative "game"
require_relative "result_prenter"

printer = ResultPrinter.new
# Объявим локальную переменную slovo и запишем в неё значение параметра запуска
# программы из командной строки.
slovo = ARGV[0]
# Создаем объект класса Game, в конструктор которому нужно передать загаданное
# слово.
game = Game.new(slovo)
# Основной цикл программы, в котором развивается игра выходим из цикла, когда
# объект game (класса Game) сообщит нам, c помощью метода status о том, что игра
# закончена (status будет равен 1/-1).
while game.status == 0
 # Выводим статус игры с помощью метода print_status класса ResultPrinter,
 # которому на вход надо передать объект класса Game, у которого будет взята
 # вся необходимая информация для вывода состояния на экран.

 printer.print_status(game)
 # Просим угадать следующую букву, вызывая у объекта класса Game метод
  # ask_next_letter.
  game.ask_next_letter
end
# В конце вызываем метод print_status у объекта класса ResultPrinter ещё раз,
# чтобы вывести игроку результаты игры.
printer.print_status(game)

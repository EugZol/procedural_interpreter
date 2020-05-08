## Интерпретатор учебного процедурного языка

Учебный процедурный язык — для иллюстрации паттернов и инструментов разработки языков программирования. Используется парсер-генератор [Racc](https://github.com/ruby/racc).

## Документация Racc

Официальная на английском языке: https://raw.githubusercontent.com/ruby/racc/master/rdoc/en/grammar.en.rdoc

Неофициальная на русском: https://eugenezolotarev.ru/programming/creating-language/p-03-racc.html

## Работа с проектом

Перед началом работы запустить `bundle install`.

Запуск тестов: `rspec`.

Компиляция парсера (`rb`-класса) из `y`-файла: `rake`.

Запуск примеров:

```
ruby main.rb examples/check_if_adult.txt
ruby main.rb examples/calculator.txt
ruby main.rb examples/factorial.txt
```

## Документация языка

https://eugenezolotarev.ru/programming/creating-language/l-04-model-language.html

@all
Feature: добавление товара в таблицу товаров
# не перевёл на русский, не изменил старые тесты, на основе старых тестов
  # написал сценарий, вместо * используется Given, ибо если ставить * и создавать метод
  # из сценария, он не создастся. Создаётся только если прописывать полноценное слово(например, Given)


@Test
    Scenario: Добавление тестовых товаров в таблицу товаров и проверка правильности их ввода
        Given Я нахожусь на странице "http://localhost:8080/food"
        Given Нажимается кнопка Добавить
        Given Вводится тестовое значение в поле Наименование "Danie 1443", в поле Тип "FRUIT", в поле Экзотический "true"
        Given Поле Наименование содержит значение "Danie 1443", Поле Тип содержит значение "FRUIT", Поле Экзотический содержит значение "true"
        Given Нажимается кнопка Сохранить
        Given В таблице поле Наименование равно значению "Danie 1443", поле Тип равно значению "FRUIT", поле Экзотический равно значению "true"

    Given Нажимается кнопка Добавить
        Given Вводится тестовое значение в поле Наименование "", в поле Тип "VEGETABLE", в поле Экзотический "false"
        Given Поле Наименование содержит значение "", Поле Тип содержит значение "VEGETABLE", Поле Экзотический содержит значение "true"
        Given Нажимается кнопка Сохранить
        Given В таблице поле Наименование равно значению "", поле Тип равно значению "VEGETABLE", поле Экзотический равно значению "false"
        Given Сайт закрывается



@Test
    Scenario: Добавление тестовых товаров и проверка правильности их ввода через SQL
        Given Я авторизируюсь на стенде через SQL
        Given Я ввожу тестовые данные и отправляю их на сервер
        Given Я сравниваю тестовые данные с содержащимися в базе, и в случае успеха, удаляю их
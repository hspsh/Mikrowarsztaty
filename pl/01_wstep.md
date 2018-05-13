# Wstęp

## Co to ten Micro:bit?

No powiedzcie czym jest micro:bit?

Jest to zestaw uruchomieniowy zawierający w sobie mikrokontroler (wiecie co to jest?) oraz całą masę przydatnych dodatków i ułatwiaczy stworzony z myślą o edukacji.

Powstał jako pomoc naukowa dla brytyjskich nastolatków - docelowo każde dziecko w angli ma dostać taki "komputerek", a wszystko po to, aby ułatwić oraz uprzyjmenić naukę programowania.

## Hakerskie spojrzenie na Micro:bit

Jednak spojrzenie takie, jak powyżej nam nie wystarczy. Spójrzcie na swoje
Micro:bity, co tam widzicie? Część elementów jestpodpisana, więc zacznijmy
od nich:

* gnizdo usb - służy do zasilania, komunikacji z micro:bitem oraz wgrywania nowych programów.
* przycisk reset - gdy nie wiesz co się dzieje - ten ziomek Ci pomorze
* "battery" złącze baterii - nasz micro:bit może być zasilany bateryjnie, więc można go wykorzystywać w zdalnie sterowanych zabawkach, jako dodatek do ubrań i do czego tylko dusza zapragnie
* "ble antenna" - czyli antena do komunikacji bezprzewodowej - oznacza to, że microbity mogą się ze sobą komunikować, można więc wykorzystać je do automatyki domowej, zdalnego sterowania czy do tworzenia gier wieloosobowych.
* "processor" - czyli główny mózg, który wykonuje nasze programy i wszystkie obliczenia. To w nim mieści się elektronika odpowiedzialna z łączność bezprzewodową, pamięć, na której zapisujemy nasze programy oraz wiele innych ciekawych rzeczy.
* "compass, accelerometer" - czyli urządzenia odpowiedzialne za odpowiednio - wyczuwanie ruchu/przyśpieszeń oraz ich kierunków, kompas, no chyba wiesz co to jest, no nie?
* "pins" - zestaw pinów używanych do sterowania zewnętrznymi układami - procesor wykorzystuje je do wysyłania sygnałów oraz odbierania informacji z zewnątrz.
* Przyciski - dwa przyciski, A i B służące do interakcji z naszymy dziełami.
* Macierz led - czyli 25 diud led tworzących miniaturowy ekran, na którym możemy wyświetlać obrazki, animacje, teksty itd. albo poprostu nim mrugać.

### Funkcje "ukryte"
* czujnik światła - jeśli wbudowane w płytkę diody led mogą być wykorzystane do sprawdzenia jak jasno jest w otoczeniu microbit [więcej ](http://microbit.org/guide/features/) .
* Czujnik temperatury - nasz główny procesor ma wbudowany termometr. Służy on co prawda do mierzenia temperatury procesora, ale w prostych projektach można przyjąć że temperatura procesora jest taka jak temperatura powietrza  [więcej ](http://microbit.org/guide/features/) .

## Co to jest programowanie?

Programowanie to umiejętność tłumaczenia komputerom co i jak mają zrobić. Często można to porównać do tłumaczenia małemu dziecku jak posprzątać pokój - musisz mu wytłumaczyć co to jest pokój, co w tym pokoju jest, gdzie każda z tych rzeczy powinna się znajdować i na koniec powiedzieć "rozumiesz? to wykonaj".

Podobnie jest z komputerami - najpierw tworzymy program, który informuje komputer co i jak ma zrobić, a na końcu każemy mu ten program wykonać.

Uwaga! Komputer zawsze wykona to co mu każesz. Nawet jeśli twój rozkaz jest głupi.

## Do czego służy programowanie?

Programowanie to umiejętność zwalania pracy na komputery i roboty. Wszystko co da się zapisać w formie algorytmu, zestawu instrukcji do wykonania, może zostać przeżucone na komputer. Dla przykładu - pierwsze komputery były "zabawkami" fizyków - służyły im do obliczeń i symulacji. W dzisiejszych czasach niemal każde urządzenie elekttryczne ma w sobie jakiś procesor i jakoś program, a nawet jeśli nie ma, to zaraz ktoś wpadnie na pomysł żeby to urządzenie "uinteligętnić" tworząc np. smart czajnik, albo smart wyciskarę do soków.

W praktyce układy elektroniczne i zawarte w nich oprogramowanie ułatwiają obsługę skomplikowanych urządzeń, dbają aby klimatyzacja działała poprawnie, wyciskają dodatkowe konie mechaniczne z naszych silników, jako zautomatyzowane defibliratory zewnętrzne ratują życie, monitorują stan sportowców w czasie treningu, automatyzują nasze domy, służą jako stylowe dodatki do ubrań, dodają rzeźbą życia itd. itd.

A najważniejsze jest to, że może służyć do zabawy (hakerzy mają własne metody na zabawę).

## Czym jest python?

Python to język programowania wysokiego poziomu stworzony z myślą o czytelności i łatwości tworzenia nowych programów. Na tych warsztatach użyjemy jego specjalnej wersji na mikrokontrolery nazwanej, dość odkrywczo, micropytho. Z naszego punktu widzenia nie ma różnicy między micropython, a python.

## Dlaczego python?

Bo jest uważany za jeden z najłatwiejszych w nauce języków programowania. Spójrzcie poniżej, czy potraficie rozkodować, co robi ten program?

```python
def heater_control(heater):
  if temperature < MIN_TEMPERATURE:
    heater.enable()
  elif temperature >= MAX_TEMPERATURE and heater.is_enabled():
    heater.disable()

heater = Heater()
while True:
  Heater.heater_control()
  sleep(1)
```

Język ten jest bardzo popularny wśród naukowców oraz w edukacji. Ostatnio zdobywa też popularność wśród programistów (bo są leniwi). Jest wykorzystywany do tworzenia sztucznych inteligencji, aplikacji internetowych, narzędzi programistycznych, skryptów do administracji systemu itd.

Ciekawostka: W polsce można zdawać maturę z informatyki z wykorzystaniem języka python.

# Ćwiczenia wprowadzające

Aby zrozumieć czym są języki programowania przeprowadzimy krótkie ćwiczenie, w którym ja będę udawać robota, a wy programistów, którzy chcą aby ten robot podniósł przedmiot z pobliskiego stołu. Zrobimy to dwukrotnie - raz udając, że piszemy w języku programowania niskiego poziomu, a drugi raz weźmiemy na warsztat wyimaginowany język programowania wysokiego poziomu.

## Ćwiczenie 1: zaprogramujcie mnie w języku programowania niskiego poziomu

Dostępne polecenia:

 * wysuń lewą nogę do przodu z prędkością `X`
 * wysuń prawą nogę do przodu z prędkością `X`
 * przesuń ciężar na prawą nogę z prędkością `X`
 * przesuń ciężar na lewą nogę z prędkością `X`
 * obróć się o `X` stopni
 * sprawdź warunek `X`. Jeśli tak, wykonaj czynność `Y`, w przeciwnym wypadku wykonaj `Z`
 * zmierz odległość do przedmiotu `X`
 * czy `X` jest mniejsze od `Y`
 * wyciągnij chwytak
 * przesuń chwytak w lewo/prawo/do przodu/do tyłu
 * zmierz odległość chwytaka od obiektu `X`
 * chwyć
 
## Ćwiczenie 2: zaprogramujcie mnie w języku programowania wysokiego poziomu

 * zrób krok do przodu
 * wyszukaj przedmiotu `X`
 * obróć się o `X` stopni
 * zrób krok do przodu
 * zmierz odległość do obiektu `X`
 * sprawdź warunek `X`. Jeśli tak, wykonaj czynność `Y`, w przeciwnym wypadku wykonaj `Z`
 * zmierz odległość do przedmiotu `X`
 * czy `X` jest mniejsze od `Y`
 * chwyć przedmiot `X`

## A co jeśli nie spodoba mi się programowanie w pythonie?

Jeśli chodzi o programowanie micro:bit, to masz dwie główne alternatywy:

1. Niskopoziomowe programowanie w c++ z wykorzystaniem bibliotek arduino - rozwiązanie dobre, jeśli chcesz wycisnąć z micro:bita wszystko co możliwe [ więcej ] (http://help.blynk.cc/how-to-connect-different-hardware-with-blynk/arduino/bbc-microbit-arduino-ide)
2. Programowanie graficzne - niektóre osoby, szczególnie dusze bardziej artystyczne preferują graficzny edytor scratch, który umożliwa dosyć szybkie tworzenie programów składających się z gotowych puzli. Jeśli Twoim celem jest stworzenie ciekawej zabawki, albo dodanie bajerów do stroju, to rozwiązanie może być dla Ciebie [ więcej ](http://microbit.org/code/)


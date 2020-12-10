// klasa monitorow
// atrybuty obiektow nie beda bezposrednio dostepne
// synchronized - tylko jeden watek na raz bedzie wykonywal metody obiektu
// dodatkowo - zaden inny watek nei bedzie w tym samym czasie modyfikowal wartosci atrybutow


public class Counter {
    private int c = 0;
    public synchronized void inc() {
        c++;
    }
    public synchronized void dec() {
        c--;
    }
    public synchronized int val() {
        return c;
    }
}
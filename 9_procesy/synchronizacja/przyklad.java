import java.util.Random;

public class Sync extends Thread {
    static Object sekcja = new Object();
    static int n = 0;
    Random gen = new Random();

    public void run() {
        int r;

        for (int i = 1; i <= 12; i++) {
            synchronized (sekcja) {
                // Opóźnienie, w trakcie którego zmienia się wartość n
                r = gen.nextInt(100000);
                for (int j = 1; j <= r; j++) { n = n + i * j;}
                for (int j = 1; j <= r; j++) { n = n - i * j;}

                n = n+1;
                System.out.println(n);
            }
        }
    }

    public static void main(String args[])
    {
        new Sync().start();
        new Sync().start();
    }
}

// dostepne operacje
// notify() - watek ktory najdluzej czeka budzi sie
// notifyALl() - budzi wszystkie czekajace watki
// jesli zaden watek nie czeka na przebudzenie, to te dwie operacje nie przynosza zadnych skutkow
// wait() - watek zostaje zawieszony i umieszczony w tej kolejce

// nalezy stosowac while (...) wait(); zamiast if(...)wait();

// pakiet java.util.concurrent
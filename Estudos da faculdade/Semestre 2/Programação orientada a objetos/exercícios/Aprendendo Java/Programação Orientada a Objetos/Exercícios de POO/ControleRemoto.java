public class ControleRemoto{

    int getVolume(Televisao tv){

        return tv.getVolume();

    }

    double getCanal(Televisao tv){

        return tv.getCanal();

    }
    
    void aumentaVolume(Televisao tv){

        tv.setVolume(tv.getVolume() + 1);

    }

    void diminuiVolume(Televisao tv){

        tv.setVolume(tv.getVolume() - 1);

    }

    void trocaCanal(Televisao tv, double canal){

        tv.setCanal(canal);

    }

}
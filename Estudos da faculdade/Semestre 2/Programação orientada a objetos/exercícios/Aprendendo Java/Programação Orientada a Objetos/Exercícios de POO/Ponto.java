class Ponto {

    private double X;
    private double Y;

    public Ponto(double x, double y){

        this.X = x;
        this.Y = y;

    }

    public void setX(double x){

        this.X = x;

    }

    public void setY(double y){

        this.Y = y;

    }

    public double getX(){

        return this.X;

    }

    public double getY(){

        return this.Y;

    }

    public double calcDistancia(Ponto p){

        double d;
        d = Math.sqrt(Math.pow(p.getX() - this.X, 2) + Math.pow(p.getY() - this.Y, 2));

        return d;

    }

}
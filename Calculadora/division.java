public class Division extends Operacion{   
    double div = 0;
       
    public Division(double n1, double n2) {
        super(n1, n2, '/');
        this.div = n1 / n2;
        this.setRes(this.div);
    }    
}

package com.example.ContainerTerminal.Daos;


public class PriceDao {
 
    private int type;
    private int weight;
    private int date;
    private int total;

    public int getType() {
        return type;
    }

    @Override
    public String toString() {
        return "PriceDao{" + "type=" + type + ", weight=" + weight + ", date=" + date + ", total=" + total + '}';
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    



    
}

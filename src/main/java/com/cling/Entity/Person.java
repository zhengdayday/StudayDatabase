package com.cling.Entity;

public class Person {
    String name;
    double salary;
    String sex;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Person() {

    }

    public Person(String name, double salary, String sex) {
        this.name = name;
        this.salary = salary;
        this.sex = sex;
    }
}

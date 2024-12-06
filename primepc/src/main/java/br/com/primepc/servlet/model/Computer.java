package br.com.primepc.servlet.model;

public class Computer {

    private String name;
    private String id;
    private String cpu;
    private String gpu;
    private String ram;
    private String tipo;
    private String uso;
    private String desempenho;

    public Computer(String name, String cpu, String gpu, String ram, String tipo, String uso, String desempenho) {
        this.name = name;
        this.cpu = cpu;
        this.gpu = gpu;
        this.ram = ram;
        this.tipo = tipo;
        this.uso = uso;
        this.desempenho = desempenho;
    }




    public Computer(String id ,String name, String cpu, String gpu, String ram, String tipo, String uso, String desempenho) {

        this.id = id;
        this.name = name;
        this.cpu = cpu;
        this.gpu = gpu;
        this.ram = ram;
        this.tipo = tipo;
        this.uso = uso;
        this.desempenho = desempenho;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getName() {
        return name;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getUso() {
        return uso;
    }

    public void setUso(String uso) {
        this.uso = uso;
    }

    public String getDesempenho() {
        return desempenho;
    }

    public void setDesempenho(String desempenho) {
        this.desempenho = desempenho;
    }
}
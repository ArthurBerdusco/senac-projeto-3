

package br.com.primepc.servlet.model;

public class Usuario {

    private String username;

    private boolean isAdmin;


    public Usuario() {

    }

    public Usuario(String username, boolean isAdmin) {

        this.username = username;

        this.isAdmin = isAdmin;
    }

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {

        this.username = username;
    }

    public void setAdmin(boolean admin) {

        isAdmin = admin;
    }


    public boolean isAdmin() {

        return isAdmin;
    }
}
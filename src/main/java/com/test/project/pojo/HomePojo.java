package com.test.project.pojo;


import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity(name="Admin") //pq la clase tiene otro nombre diferente del de la tabla , tengo q poner aqui el nombre de la tabla, sino no haria falta poner name ="Admin"
@Table(name="Admin") //nombre de la tabla, siempre es necesario ponerlo
public class HomePojo {
	@Id
	@GeneratedValue
	private int adminnum;
	private String nombre;
	private String cargo;
	private Timestamp fechaCreacion;
	
	public HomePojo() {
		
	}
	
	
	public int getAdminnum() {
		return adminnum;
	}
	public void setAdminnum(int adminnum) {
		this.adminnum = adminnum;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public Timestamp getFechaCreacion() {
		return fechaCreacion;
	}
	public void setFechaCreacion(Timestamp fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
}

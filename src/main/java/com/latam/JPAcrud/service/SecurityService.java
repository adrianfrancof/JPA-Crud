package com.latam.JPAcrud.service;

import com.latam.JPAcrud.modelo.Usuario;

public interface SecurityService {
	
	public boolean isLoggedIn();
	public void setUsuarioConectado(Usuario usuario);
	public Usuario getUsuarioConectado();
}

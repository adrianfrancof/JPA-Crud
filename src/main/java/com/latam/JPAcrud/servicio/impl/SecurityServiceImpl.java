package com.latam.JPAcrud.servicio.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import com.latam.JPAcrud.JpaCrudApplication;
import com.latam.JPAcrud.modelo.Usuario;
import com.latam.JPAcrud.service.SecurityService;

@SessionScope
@Service
public class SecurityServiceImpl implements SecurityService {
	private static final Logger log = LoggerFactory.getLogger(JpaCrudApplication.class);
	Usuario usuarioConectado = null;

	@Override
	public boolean isLoggedIn() {
		log.info("Consultando por usuario autenticado");
		return null != this.usuarioConectado;
	}

	@Override
	public Usuario getUsuarioConectado() {
		log.info("Devolviendo al usuario conectado");
		return usuarioConectado;
	}

	@Override
	public void setUsuarioConectado(Usuario usuario) {
		log.info("Estableciendo usuario conectado");
		this.usuarioConectado = usuario;
	}
}

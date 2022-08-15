package com.latam.JPAcrud.servicio.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.latam.JPAcrud.JpaCrudApplication;
import com.latam.JPAcrud.dao.UsuarioRepository;
import com.latam.JPAcrud.modelo.Usuario;
import com.latam.JPAcrud.service.UsuarioService;
import com.latam.JPAcrud.vo.NumberVO;
import com.latam.JPAcrud.vo.UsuarioVO;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	private static final Logger log = LoggerFactory.getLogger(JpaCrudApplication.class);
	
	@Autowired
	UsuarioRepository dao;
	
	com.latam.JPAcrud.vo.UsuarioVO respuesta;
	
	@Override
	@Transactional(readOnly = true)
	public UsuarioVO getAllUsuarios() {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "102");
		try {
			respuesta.setUsuarios((List<Usuario>) dao.findAll());
			respuesta.setMensaje(String.format("Se ha/n encontrado %d registro/s", respuesta.getUsuarios().size()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			log.trace("Usuario Service: Error en getAllUsuarios", e);
		}
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public UsuarioVO findByNombreAndClave(String nombre, String clave) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "101");
		try {
			List<Usuario> usuarios = dao.findByNombreAndClave(nombre, clave);
			if (usuarios.size() > 0) {
				respuesta.setUsuarios(usuarios);
				respuesta.setMensaje("Usuario encontrado correctamente.");
				respuesta.setCodigo("0");
			} else {
				respuesta.setMensaje("Usuario no encontrado.");
			}
		} catch (Exception e) {
			log.trace("Usuario Service: Error en findByNombreAndClave", e);
		}
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public UsuarioVO login(String nombre, String clave) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Credenciales incorrectas", "103");
		if (nombre.length() == 0 || clave.length() == 0)
			return respuesta;
		respuesta = findByNombreAndClave(nombre, clave);
		if (respuesta.getCodigo().equals("0")) {
			respuesta.setMensaje(String.format("Bienvenido %s", respuesta.getUsuarios().get(0).getNombre()));
		}
		return respuesta;
	}

	@Transactional
	public UsuarioVO add(Usuario usuario) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "104");
		try {
			dao.save(usuario);
			respuesta.setMensaje(String.format("Se ha guardado correctamente al usuario %s", usuario.getNombre()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			log.trace("Usuario Service: Error en add", e);
		}
		return respuesta;
	}

	@Transactional
	public UsuarioVO update(Usuario usuario) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "105");
		try {
			dao.save(usuario);
			respuesta.setMensaje(String.format("Se ha actualizado correctamente al usuario %s", usuario.getNombre()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			log.trace("Usuario Service: Error en update", e);
		}
		return respuesta;
	}

	@Override
	@Transactional
	public UsuarioVO delete(Usuario usuario) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "106");
		try {
			dao.delete(usuario);
			respuesta.setMensaje("Se ha eliminado correctamente al usuario");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			log.trace("Usuario Service: Error en delete", e);
		}
		return respuesta;
	}

	@Override
	@Transactional(readOnly = true)
	public UsuarioVO findById(Integer id) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "107");
		try {
			Usuario usuario = dao.findById(id).get();
			respuesta.getUsuarios().add(usuario);
			respuesta.setMensaje("Usuario encontrado correctamente.");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			log.trace("Usuario Service: Error en findByNombreAndClave", e);
		}
		return respuesta;
	}
	
	
	//Segunda Parte
	@Override
	@Transactional(readOnly = true)
	public UsuarioVO getPage(Integer pagina, Integer cantidad) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "108");
		try {
			Pageable pageable = PageRequest.of(pagina, cantidad);
			Page<Usuario> responsePage = dao.findAll(pageable);
			respuesta.setUsuarios(responsePage.getContent());
			respuesta.setMensaje(String.format("Se ha/n encontrado %d registro/s", respuesta.getUsuarios().size()));
			respuesta.setCodigo("0");
		} catch (Exception e) {
			log.trace("Usuario Service: Error en getPage", e);
		}
		return respuesta;
	}
	
	@Override
	@Transactional(readOnly = true)
	public NumberVO getPageCount(long registrosPorPagina) {
		NumberVO respuesta = new NumberVO(0, "Ha ocurrido un error", "109");
		try {
			long registros = dao.count();
			if (registrosPorPagina == 0 && registros == 0) {
				respuesta.setValor(1);
			} else {
				respuesta.setValor((registros / registrosPorPagina) + (registros % registrosPorPagina == 0 ? 0 : 1));
			}
			respuesta.setCodigo("201");
			respuesta.setMensaje(String.format("Hay %d paginas", respuesta.getValor()));
		} catch (Exception e) {
			log.trace("Usuario Service: Error en getPageCount", e);
		}
		return respuesta;
	}
	
	@Override
	@Transactional(readOnly = true)
	public UsuarioVO findByNombreContainingIgnoreCase(String nombre) {
		respuesta = new UsuarioVO(new ArrayList<Usuario>(), "Ha ocurrido un error", "101");
		try {
			List<Usuario> usuarios = dao.findByNombreContainingIgnoreCase(nombre);
			if (usuarios.size() > 0) {
				respuesta.setUsuarios(usuarios);
				respuesta.setMensaje("Usuario encontrado correctamente.");
				respuesta.setCodigo("0");
			} else {
				respuesta.setMensaje("Usuario no encontrado.");
			}
		} catch (Exception e) {
			log.trace("Usuario Service: Error en findByNombreAndClave", e);
		}
		return respuesta;
	}
}

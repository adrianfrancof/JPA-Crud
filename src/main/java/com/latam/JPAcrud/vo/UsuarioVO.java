package com.latam.JPAcrud.vo;

import java.util.List;

import com.latam.JPAcrud.modelo.Usuario;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper=true)
public class UsuarioVO extends GenericVO {
	List<Usuario> usuarios;
	
	public UsuarioVO(List<Usuario> usuarios, String mensaje, String codigo) {
		super(mensaje,codigo);
		this.usuarios = usuarios;
	}
}

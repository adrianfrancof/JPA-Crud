package com.latam.JPAcrud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper=true)

public class NumberVO extends GenericVO{
	
	public long valor;
	
	public NumberVO(long valor, String mensaje, String codigo) {
		super(mensaje,codigo);
		this.valor = valor;
	}
	
}

package com.latam.JPAcrud.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity //especifica que la clase es una entidad correspondiente a una tabla de la base de datos
@Data //Equivalent to @Getter @Setter @RequiredArgsConstructor @ToString @EqualsAndHashCode.
@NoArgsConstructor //crea mediante lombok un constructor sin argumentos
@AllArgsConstructor //crea un constructor con parametros, todos los argumentos
@SequenceGenerator(name = "SQ_USUARIO", initialValue=1, allocationSize=1,sequenceName="SQ_USUARIO")//NO COLOCAR EN MYSQL
public class Usuario {
	
	@Id// indica cual atributo es el id columna en la base de datos
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SQ_USUARIO") //ORACLE
	//	@GeneratedValue(strategy=GenerationType.IDENTITY) MYSQL
	private Integer idUsuario;
	private String nombre;
	private String clave;
	private Integer rut;
	private Character dv;
	
	//LOMBOK permite la declaracion e implementaci[on de los constructores, getters y setters mediante los atributos
	//constructor con parametros @AllArgsConstructor
	//constructor vacio @NoArgsConstructor
	//getters y setters @Getter @Setter
}

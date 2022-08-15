package com.latam.JPAcrud.dao;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.latam.JPAcrud.modelo.Usuario;

public interface UsuarioRepository extends CrudRepository <Usuario, Integer>, PagingAndSortingRepository<Usuario, Integer> {
	
	//findAll()
	//findById(Integer id)
	//findByNombre(String nombre)
	//delete(Integer id)
	//save(Usuario usuario)
	//findByRut()
	
	//JPQL
	@Query("FROM Usuario WHERE nombre=?1 and clave=?2")
	public List<Usuario> findByNombreAndClave(String nombre, String clave);
	//NativeQuery
	@Query(value = "SELECT * FROM Usuario U WHERE LOWER(U.nombre) LIKE %?1%",nativeQuery = true)
	public List<Usuario> findByNombre(String nombre);
	//forma declarativa para obtener automaticamente
	public List<Usuario> findByNombreContainingIgnoreCase(String searchTerm);
}

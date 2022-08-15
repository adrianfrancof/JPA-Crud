package com.latam.JPAcrud;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.latam.JPAcrud.dao.UsuarioRepository;
import com.latam.JPAcrud.modelo.Usuario;


@SpringBootApplication
public class JpaCrudApplication {
	
	private static final Logger log = LoggerFactory.getLogger(JpaCrudApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(JpaCrudApplication.class, args);
	}
	
	//metodo demo para insertar 2 usuarios al momento de la inicializacion del programa
//	@Bean
//	public CommandLineRunner demo(UsuarioRepository repo) {
//		return (args) ->{
//			//agregamos dos usuarios
//			repo.save(new Usuario (null, "usuario 1", "clave 1", 12345, 'k'));
//			repo.save(new Usuario(null, "usuario 2", "clave 2", 54321, '9'));
//			
//			//leemos todos los usuarios
//			log.info("Lista de usuarios");
//			
//			for (Usuario usuario : repo.findAll()) {
//				log.info(usuario.toString());
//				
//			}
//		};
//	}
}

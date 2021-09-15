package cl.awakelab.evaluacionModulo5.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.awakelab.evaluacionModulo5.entity.Chequeo;



@Repository
public interface ChequeoRepository extends JpaRepository<Chequeo, Integer>{

}

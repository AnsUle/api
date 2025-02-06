package sprintboot.api.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import sprintboot.api.model.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Integer> {
}

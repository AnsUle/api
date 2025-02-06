package sprintboot.api.service;

import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sprintboot.api.model.Person;
import sprintboot.api.repository.PersonRepository;

import java.util.Optional;

@Data
@Service
public class PersonService {
    @Autowired
    private PersonRepository personRepository;

    public Optional<Person> getPerson(int id) {
        return personRepository.findById(id);
    }

    public Iterable<Person> getPersons() {
        return personRepository.findAll();
    }
    public void deletePerson(int id) {
        personRepository.deleteById(id);
    }
    public Person savePerson(Person person) {
        Person savedPerson = personRepository.save(person);
        return savedPerson;
    }
}

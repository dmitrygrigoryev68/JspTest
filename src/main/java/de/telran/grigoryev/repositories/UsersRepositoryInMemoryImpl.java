package de.telran.grigoryev.repositories;

import de.telran.grigoryev.models.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UsersRepositoryInMemoryImpl implements UserRepository {

    private List<User> users;
    public UsersRepositoryInMemoryImpl(){

        this.users = new ArrayList<>();
        User user = new User("Dmitry","123", LocalDate.parse("1994-02-02"));
        User user1 = new User("Vasiliy","123", LocalDate.parse("1984-02-02"));
        User user2 = new User("Petr","123", LocalDate.parse("1974-02-02"));
        User user3 = new User("Adolf","123", LocalDate.parse("1964-02-02"));

        users.add(user);
        users.add(user1);
        users.add(user2);
        users.add(user3);

    }


    @Override
    public List<User> findAll() {
        return this.users;
    }
}

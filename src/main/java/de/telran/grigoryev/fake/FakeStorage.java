package de.telran.grigoryev.fake;

import de.telran.grigoryev.models.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class FakeStorage {
    private static final FakeStorage storage;
    static {
        storage = new FakeStorage();
    }
    public List<User> users;
    private FakeStorage(){
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
    public static FakeStorage storage(){
        return storage;
    }
    public List<User> users(){
        return users;
    }
}

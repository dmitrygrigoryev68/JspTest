package de.telran.grigoryev.repositories;

import de.telran.grigoryev.models.User;


import java.util.List;

public interface UserRepository{
    List<User> findAll();
}
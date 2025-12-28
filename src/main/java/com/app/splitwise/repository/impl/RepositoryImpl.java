package com.app.splitwise.repository.impl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class RepositoryImpl implements SplitwiseRepository {

    private final JdbcTemplate jdbcTemplate;

    public RepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}

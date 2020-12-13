package com.example.service.impl;

import com.example.mapper.MovieMapper;
import com.example.pojo.Movie;
import com.example.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MovieMapper movieMapper;

    @Override
    public List<Movie> queryMoviePage(Integer startRows) {
        return movieMapper.queryMoviePage(startRows);
    }

    @Override
    public List<Movie> selectMoviePageById(int movieId, Integer startRows) {
        return movieMapper.selectMoviePageById(movieId, startRows);
    }

    @Override
    public Integer deleteMovieById(int movieId) {
        return movieMapper.deleteMovieById(movieId);
    }

    @Override
    public Integer insertMovie(Movie movie) {
        return movieMapper.insertMovie(movie);
    }

    @Override
    public Integer updateMovieById(Movie movie) {
        return movieMapper.updateMovieById(movie);
    }
}

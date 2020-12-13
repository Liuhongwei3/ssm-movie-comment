package com.example.controller;

import com.example.pojo.Movie;
import com.example.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author 28731
 */

@Controller
@CrossOrigin
@RequestMapping("movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @RequestMapping("/queryMoviePage")
    @ResponseBody
    public List<Movie> queryMoviePage(Integer page) {
        int pageNow = page == null ? 1 : page;
        int pageSize = 5;
        int startRows = pageSize * (pageNow - 1);
        return movieService.queryMoviePage(startRows);
    }

    @RequestMapping("/selectMoviePageById")
    @ResponseBody
    public List<Movie> selectMoviePageById(int movieId, Integer page) {
        int pageNow = page == null ? 1 : page;
        int pageSize = 5;
        int startRows = pageSize * (pageNow - 1);
        return movieService.selectMoviePageById(movieId, startRows);
    }

    @RequestMapping("/updateMovieById")
    @ResponseBody
    public Integer updateMovieById(@RequestBody Movie movie) {
        System.out.println("---------------" + movie.getMovieName());
        return movieService.updateMovieById(movie);
    }

    @RequestMapping("/insertMovie")
    @ResponseBody
    public Integer insertMovie(@RequestBody Movie movie) {
        return movieService.insertMovie(movie);
    }

    @RequestMapping("/deleteMovieById")
    @ResponseBody
    public Integer deleteMovieById(int movieId) {
        return movieService.deleteMovieById(movieId);
    }
}

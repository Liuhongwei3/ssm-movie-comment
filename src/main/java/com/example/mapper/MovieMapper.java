package com.example.mapper;

import com.example.pojo.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 28731
 */
public interface MovieMapper {
    /**
     * 分页查询 User
     *
     * @param startRows 起始页
     * @return List<Movie>
     */
    List<Movie> queryMoviePage(Integer startRows);

    /**
     * 分页查询 Movie 带条件
     *
     * @param movieId
     * @param startRows
     * @return
     */
    List<Movie> selectMoviePageById(@Param("movieId") int movieId, @Param("startRows") Integer startRows);

    /**
     * delete movie
     *
     * @param movieId
     * @return
     */
    Integer deleteMovieById(int movieId);

    /**
     * @param movie
     * @return
     */
    Integer insertMovie(Movie movie);

    /**
     * update movie
     *
     * @param movie
     * @return
     */
    Integer updateMovieById(Movie movie);
}

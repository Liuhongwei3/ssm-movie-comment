package com.example.service;

import com.example.pojo.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 28731
 */
public interface MovieService {
    /**
     * 分页查询 Movie
     * @param startRows 起始页
     * @return List<Movie>
     */
    List<Movie> queryMoviePage(Integer startRows);

    /**
     * 分页查询 Movie 带条件
     * @param movieId
     * @param startRows
     * @return
     */
    List<Movie> selectMoviePageById(@Param("movieId")int movieId, @Param("startRows")Integer startRows);

}

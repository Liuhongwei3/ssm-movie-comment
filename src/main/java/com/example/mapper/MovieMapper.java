package com.example.mapper;

import com.example.pojo.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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
     * @param movieName
     * @param startRows
     * @return
     */
    List<Movie> selectMoviePageById(@Param("movieId") int movieId, @Param("startRows") Integer startRows);
}

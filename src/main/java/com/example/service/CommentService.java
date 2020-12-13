package com.example.service;

import com.example.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 28731
 */
public interface CommentService {
    /**
     * 分页查询 Movie
     *
     * @return List<Comment>
     */
    List<Comment> queryCommentPage();

    /**
     * 分页查询 Movie 带条件
     *
     * @param commentVId
     * @param startRows
     * @return
     */
    List<Comment> selectCommentPageByVId(@Param("commentVId") int commentVId, @Param("startRows") Integer startRows);

    /**
     * 分页查询 Movie 带条件
     *
     * @param commentUName
     * @param startRows
     * @return
     */
    List<Comment> selectCommentPageByUName(@Param("commentUName") String commentUName, @Param("startRows") Integer startRows);

    /**
     * add comment
     *
     * @param commentVId
     * @param commentUName
     * @param commentTime
     * @param commentContent
     * @return
     */
    Integer createComment(@Param("commentVId") int commentVId, @Param("commentUName") String commentUName, @Param("commentTime") String commentTime, @Param("commentContent") String commentContent);

    /**
     * delete comment by id
     *
     * @param commentId
     * @return
     */
    Integer deleteCommentById(@Param("commentId") int commentId);
}

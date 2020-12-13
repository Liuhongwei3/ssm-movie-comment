package com.example.service.impl;

import com.example.mapper.CommentMapper;
import com.example.pojo.Comment;
import com.example.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 28731
 */
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> queryCommentPage() {
        return commentMapper.queryCommentPage();
    }

    @Override
    public List<Comment> selectCommentPageByVId(int commentVId, Integer startRows) {
        return commentMapper.selectCommentPageByVId(commentVId, startRows);
    }

    @Override
    public List<Comment> selectCommentPageByUName(String commentUName, Integer startRows) {
        return commentMapper.selectCommentPageByUName(commentUName, startRows);
    }

    @Override
    public Integer createComment(int commentVId, String commentUName, String commentTime, String commentContent) {
        return commentMapper.createComment(commentVId, commentUName, commentTime, commentContent);
    }

    @Override
    public Integer deleteCommentById(int commentId) {
        return commentMapper.deleteCommentById(commentId);
    }
}

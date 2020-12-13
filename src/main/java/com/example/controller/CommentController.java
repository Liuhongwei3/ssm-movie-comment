package com.example.controller;

import com.example.pojo.Comment;
import com.example.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author 28731
 */

@Controller
@CrossOrigin
@RequestMapping("comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @RequestMapping("/queryCommentPage")
    @ResponseBody
    public List<Comment> queryCommentPage() {
//        int pageNow = page == null ? 1 : page;
//        int pageSize = 5;
//        int startRows = pageSize * (pageNow - 1);
        return commentService.queryCommentPage();
    }

    @RequestMapping("/selectCommentPageByVId")
    @ResponseBody
    public List<Comment> selectCommentPageByVId(int commentVId, Integer page) {
        int pageNow = page == null ? 1 : page;
        int pageSize = 5;
        int startRows = pageSize * (pageNow - 1);
        return commentService.selectCommentPageByVId(commentVId, startRows);
    }

    @RequestMapping("/selectCommentPageByUName")
    @ResponseBody
    public List<Comment> selectCommentPageByUName(String commentUName, Integer page) {
        int pageNow = page == null ? 1 : page;
        int pageSize = 5;
        int startRows = pageSize * (pageNow - 1);
        return commentService.selectCommentPageByUName(commentUName, startRows);
    }

    @RequestMapping("/createComment")
    @ResponseBody
    public Integer createComment(@RequestBody Comment comment) {
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateStr = format.format(date);

        return commentService.createComment(comment.getCommentVId(), comment.getCommentUName(), dateStr, comment.getCommentContent());
    }

    @RequestMapping("/deleteCommentById")
    @ResponseBody
    public Integer deleteCommentById(int commentId) {
        return commentService.deleteCommentById(commentId);
    }
}
package com.example.pojo;

/**
 * @author 28731
 */
public class Comment {
    private int commentId;
    private int commentVId;
    private String commentUName;
    private String commentContent;

    public String getCommentUName() {
        return commentUName;
    }

    public void setCommentUName(String commentUName) {
        this.commentUName = commentUName;
    }

    private String commentTime;

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getCommentVId() {
        return commentVId;
    }

    public void setCommentVId(int commentVId) {
        this.commentVId = commentVId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }
}

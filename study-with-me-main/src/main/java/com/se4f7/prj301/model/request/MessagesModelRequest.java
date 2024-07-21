package com.se4f7.prj301.model.request;

import com.se4f7.prj301.enums.PostsStatusEnum;

public class MessagesModelRequest {

    private String subject;
    private String message;
    private PostsStatusEnum status;
    private String email;

    public MessagesModelRequest() {
        super();
    }

    public MessagesModelRequest(String subject, String message, PostsStatusEnum status, String email) {
        super();
        this.subject = subject;
        this.message = message;
        this.status = status;
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public PostsStatusEnum getStatus() {
        return status;
    }

    public void setStatus(PostsStatusEnum status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

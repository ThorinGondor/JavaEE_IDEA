package org.entity.object;

public class Comment {
    private String username;
    private String content;
    private String address;
    public Comment(){
    }
    public  Comment(String username, String content, String address){
        this.username = username;
        this.content = content;
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public String getUsername() {
        return username;
    }

    public String getContent() {
        return content;
    }
}

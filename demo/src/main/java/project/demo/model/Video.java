package project.demo.model;

import java.util.Arrays;

public class Video {
    private int id;
    private String url;
    private String image;
    private VideoFile video_files[];
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
    public VideoFile[] getVideo_files() {
        return video_files;
    }
    public void setVideo_files(VideoFile[] video_files) {
        this.video_files = video_files;
    }

    @Override
    public String toString() {
        return "Video [id=" + id + ", image=" + image + ", url=" + url + ", video_files=" + Arrays.toString(video_files)
                + "]";
    }
}

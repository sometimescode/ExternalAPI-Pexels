package project.demo.model;

public class VideoFile {
    private int id;
    private String quality;
    private String file_type;
    private int width;
    private int height;
    private String link;
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getQuality() {
        return quality;
    }
    public void setQuality(String quality) {
        this.quality = quality;
    }
    public String getFile_type() {
        return file_type;
    }
    public void setFile_type(String file_type) {
        this.file_type = file_type;
    }
    public int getWidth() {
        return width;
    }
    public void setWidth(int width) {
        this.width = width;
    }
    public int getHeight() {
        return height;
    }
    public void setHeight(int height) {
        this.height = height;
    }
    public String getLink() {
        return link;
    }
    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "VideoFile [file_type=" + file_type + ", height=" + height + ", id=" + id + ", link=" + link
                + ", quality=" + quality + ", width=" + width + "]";
    }
}

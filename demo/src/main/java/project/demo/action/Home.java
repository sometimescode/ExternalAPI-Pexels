package project.demo.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;
import java.util.stream.Collectors;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.opensymphony.xwork2.ActionSupport;

import project.demo.model.Video;
import project.demo.model.VideosSearchResponse;

public class Home extends ActionSupport{
    private VideosSearchResponse videoSearchResponse;
    private String videoLink;
    private String error;
    private String placeholder;

    public String execute() throws Exception {
        Random rand = new Random();

        String[] placeholders = {"nature", "tigers", "people", "group of people working", "oceans", "pears"};
        placeholder = placeholders[rand.nextInt(placeholders.length)];

        searchAPI();

        if(videoSearchResponse.getTotal_results() > 0) {
            Video videos[] = videoSearchResponse.getVideos();
            Video selectedVideo = videos[rand.nextInt(videos.length)];
            videoLink = selectedVideo.getVideo_files()[0].getLink();
            
        }

        return SUCCESS;
    }

    private void searchAPI() throws Exception {
        try {
            URL url = new URL("https://api.pexels.com/videos/popular?min_width=1280&min_height=720");      
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "563492ad6f9170000100000153899aa6e1494be5a16c0c67c06637c0");
    
            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }
    
            BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
            String output;
            ObjectMapper mapper = new ObjectMapper();
            mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
            output =  br.lines().collect(Collectors.joining());
            videoSearchResponse = mapper.readValue(output, VideosSearchResponse.class);

            conn.disconnect();

        } catch (Exception e) {
            e.printStackTrace();
            error = e.toString();
        }
    }

    public VideosSearchResponse getVideoSearchResponse() {
        return videoSearchResponse;
    }

    public void setVideoSearchResponse(VideosSearchResponse videoSearchResponse) {
        this.videoSearchResponse = videoSearchResponse;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getPlaceholder() {
        return placeholder;
    }

    public void setPlaceholder(String placeholder) {
        this.placeholder = placeholder;
    }
}

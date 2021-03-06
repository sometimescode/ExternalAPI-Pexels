package project.demo.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.opensymphony.xwork2.ActionSupport;

import project.demo.model.Photo;

public class PhotoDetails extends ActionSupport{
    private Photo photoResponse;
    private String urlQuery;
    private String error;
    private String orientation = "original";
    private String [] orientationOptions = {"original", "portrait", "landscape"};
    private int photoId;
    // private String imgSrc; this together with togglePhotoSource can be used if actually fetching resized values (something called DPR is modified as well as the width and height)

    public String execute() throws Exception {
        System.out.println("PHOTO ID: " + photoId);
        if(photoId != -1) {
            try {
     
                URL url = new URL("https://api.pexels.com/v1/photos/" + photoId);        
    
                urlQuery = url.toString();
    
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setRequestProperty("Authorization", "563492ad6f9170000100000153899aa6e1494be5a16c0c67c06637c0");
     
                if (conn.getResponseCode() != 200) {
                    throw new RuntimeException("Failed : HTTP error code : "
                            + conn.getResponseCode());
                }
     
                BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
                String output;
                while ((output = br.readLine()) != null) {
                    ObjectMapper mapper = new ObjectMapper();
                    photoResponse = mapper.readValue(output, Photo.class);
                }
                conn.disconnect();
            } catch (Exception e) {
                e.printStackTrace();
                error = e.toString();
            }
        } else {
            error = "Invalid photo id value.";
        }
        return SUCCESS;
    }

    // public String togglePhotoSource() {
    //     System.out.println("WOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
    //     switch(orientation) {
    //         case "landscape":
    //             return photoResponse.getSrc().getLandscape();
    //         case "portrait":
    //             return photoResponse.getSrc().getPortrait();
    //         default:
    //             return photoResponse.getSrc().getOriginal();
    //     }
    // }

    public Photo getPhotoResponse() {
        return photoResponse;
    }

    public void setPhotoResponse(Photo photoResponse) {
        this.photoResponse = photoResponse;
    }

    public String getUrlQuery() {
        return urlQuery;
    }

    public void setUrlQuery(String urlQuery) {
        this.urlQuery = urlQuery;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getOrientation() {
        return orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public List<String> getOrientationOptions() {
        return Arrays.asList(orientationOptions);
    }

    public void setOrientationOptions(String[] orientationOptions) {
        this.orientationOptions = orientationOptions;
    }

    public int getPhotoId() {
        return photoId;
    }

    public void setPhotoId(int photoId) {
        this.photoId = photoId;
    }
}

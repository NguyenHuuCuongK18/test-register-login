package controller.login;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.scope.ScopeBuilder;
import com.restfb.types.User;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

import org.json.JSONObject;

import model.FacebookPojo;

public class FacebookUtils {

    private static final String CLIENT_ID = "441683745121561";
    private static final String CLIENT_SECRET = "e754b6c91df0fc48b04b4bf692330ba4";
    private static final String REDIRECT_URI = "http://localhost:9999/testlogin/login-facebook";

    public static String getToken(String code) throws IOException {
        String url = String.format("https://graph.facebook.com/v10.0/oauth/access_token?"
                + "client_id=%s&redirect_uri=%s&client_secret=%s&code=%s", CLIENT_ID, REDIRECT_URI, CLIENT_SECRET, code);

        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        connection.setRequestMethod("GET");

        try (InputStream responseStream = connection.getInputStream(); Scanner scanner = new Scanner(responseStream)) {
            String responseBody = scanner.useDelimiter("\\A").next();
            JSONObject json = new JSONObject(responseBody);
            return json.getString("access_token");
        } catch (IOException e) {
            // Log error
            e.printStackTrace();
            throw e;
        } finally {
            connection.disconnect();
        }
    }

    public static FacebookPojo getUserInfo(String accessToken) {
        FacebookClient facebookClient = new DefaultFacebookClient(accessToken, Version.LATEST);
        User user = facebookClient.fetchObject("me", User.class, com.restfb.Parameter.with("fields", "id,name,email,picture,gender,locale"));

        FacebookPojo fbUser = new FacebookPojo();
        fbUser.setId(user.getId());
        fbUser.setName(user.getName());
        fbUser.setEmail(user.getEmail());
        fbUser.setPicture(user.getPicture().getUrl());
        fbUser.setGender(user.getGender());
        fbUser.setLocale(user.getLocale());

        return fbUser;
    }
}

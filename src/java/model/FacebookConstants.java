package model;

public class FacebookConstants {

    public static final String FACEBOOK_APP_ID = "441683745121561";
    public static final String FACEBOOK_APP_SECRET = "e754b6c91df0fc48b04b4bf692330ba4";
    public static final String FACEBOOK_REDIRECT_URI = "http://localhost:9999/testlogin/loginFB";
    public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";
    public static final String FACEBOOK_LINK_GET_USER_INFO = "https://graph.facebook.com/me?fields=id,name,email,picture,gender,locale";
}

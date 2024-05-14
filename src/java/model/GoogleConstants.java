package model;

/**
 * Holds the constants for Google OAuth2 integration.
 * Ensure these values are kept secure and not exposed in public repositories.
 */
public class GoogleConstants {

    public static final String GOOGLE_CLIENT_ID = "970448063430-cphnphglnec7b9s13mh56ajpoc9rhebq.apps.googleusercontent.com";
    public static final String GOOGLE_CLIENT_SECRET = "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";
    public static final String GOOGLE_REDIRECT_URI = "http://localhost:9999/testlogin/loginGG";
    public static final String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static final String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=";
    public static final String GOOGLE_GRANT_TYPE = "authorization_code";
}

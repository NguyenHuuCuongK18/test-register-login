<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/logins/login-4/assets/css/login-4.css">
    </head>
    <body>
        <section class="bg-light p-3 p-md-4 p-xl-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6 col-xxl-5">
                        <div class="card border border-light-subtle rounded-4">
                            <div class="card-body p-3 p-md-4 p-xl-5">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="mb-5">
                                            <div class="text-center mb-4">
                                                <a href="#!">
                                                    <img src="./assets/img/bsb-logo.svg" alt="BootstrapBrain Logo" width="175" height="57">
                                                </a>
                                            </div>
                                            <h4 class="text-center">Welcome back, you've been missed!</h4>
                                        </div>
                                    </div>
                                </div>
<<<<<<< HEAD
                                <form action="login">
=======
                                <form action="#!">
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d
                                    <div class="row gy-3 overflow-hidden">
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                                                <label for="email" class="form-label">Email</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                                                <label for="password" class="form-label">Password</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="remember_me" id="remember_me">
                                                <label class="form-check-label text-secondary" for="remember_me">
                                                    Keep me logged in
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-grid">
                                                <button class="btn bsb-btn-xl btn-primary" type="submit">Log in now</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="row">
                                    <div class="col-12">
                                        <hr class="mt-5 mb-4 border-secondary-subtle">
                                        <div class="d-flex gap-2 gap-md-4 flex-column flex-md-row justify-content-md-end">
<<<<<<< HEAD
                                            <a href="signup.jsp" class="link-secondary text-decoration-none">Create new account</a>
=======
                                            <a href="#!" class="link-secondary text-decoration-none">Create new account</a>
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d
                                            <a href="#!" class="link-secondary text-decoration-none">Forgot password</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <p class="mt-5 mb-5">Or continue with</p>
<<<<<<< HEAD
                                        <div class="d-flex gap-1 gap-sm-3 justify-content-center">
                                            <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20https://www.googleapis.com/auth/userinfo.profile&redirect_uri=http://localhost:9999/testlogin/loginGG&response_type=code&client_id=970448063430-cphnphglnec7b9s13mh56ajpoc9rhebq.apps.googleusercontent.com&approval_prompt=force" class="btn btn-lg btn-outline-danger p-3 lh-1">
=======
                                        <div class="d-flex gap-2 gap-sm-3 justify-content-center">
                                            <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20https://www.googleapis.com/auth/userinfo.profile&redirect_uri=http://localhost:9999/testlogin/login-google&response_type=code&client_id=970448063430-cphnphglnec7b9s13mh56ajpoc9rhebq.apps.googleusercontent.com&approval_prompt=force" class="btn btn-lg btn-outline-danger p-3 lh-1">
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                                </svg>
                                            </a>
<<<<<<< HEAD
                                            <!--                                        <a href="https://www.facebook.com/dialog/oauth?client_id=441683745121561&redirect_uri=http://localhost:9999/testlogin/loginFB&scope=email,public_profile" class="btn btn-lg btn-outline-primary p-3 lh-1">
                                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                                                            <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                                                                                        </svg>
                                                                                    </a>-->
=======
                                            <a href="#!" class="btn btn-lg btn-outline-primary p-3 lh-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                                </svg>
                                            </a>
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>

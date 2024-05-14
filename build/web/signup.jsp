<%-- 
    Document   : signup
    Created on : May 14, 2024, 7:55:20 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-7/assets/css/registration-7.css">
    </head>
    <body>
        <!-- Registration 7 - Bootstrap Brain Component -->
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
                                            <h2 class="h4 text-center">Registration</h2>
                                            <h3 class="fs-6 fw-normal text-secondary text-center m-0">Enter your details to register</h3>
                                        </div>
                                    </div>
                                </div>
                                <form action="signup" enctype="multipart/form-data">
                                    <form action="signup" method="post" enctype="multipart/form-data">
                                        <div class="row gy-3 overflow-hidden">
                                            <!-- Full Name field -->
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="text" class="form-control" name="fullName" id="fullName" placeholder="Full Name" required>
                                                    <label for="fullName" class="form-label">Full Name</label>
                                                </div>
                                            </div>

                                            <!-- Code field -->
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="text" class="form-control" name="code" id="code" placeholder="User Code" required>
                                                    <label for="code" class="form-label">User Code</label>
                                                </div>
                                            </div>

                                            <!-- Email field -->
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                                                    <label for="email" class="form-label">Email</label>
                                                </div>
                                            </div>

                                            <!-- Password field -->
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" required>
                                                    <label for="password" class="form-label">Password</label>
                                                </div>
                                            </div>

                                            <!-- Hidden input for role -->
                                            <input type="hidden" name="role" value="false"> <!-- Default role is 'false' (assuming this means a regular user) -->

                                            <!-- Hidden input for default avatar -->
                                            <input type="hidden" name="avatar" value="/assets/img/default_avt.jpg"> <!-- Default avatar path -->

                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <button class="btn bsb-btn-xl btn-primary" type="submit">Sign up</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>

                                    <div class="row">
                                        <div class="col-12">
                                            <hr class="mt-5 mb-4 border-secondary-subtle">
                                            <p class="m-0 text-secondary text-center">Already have an account? <a href="login.jsp" class="link-primary text-decoration-none">Sign in</a></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <p class="mt-5 mb-5">Or continue with</p>
                                            <div class="d-flex gap-1 gap-sm-3 justify-content-center">
                                                <a href="#!" class="btn btn-lg btn-outline-danger p-3 lh-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                    <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                                    </svg>
                                                </a>
                                                <!-- Other social media login buttons can be added here -->
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

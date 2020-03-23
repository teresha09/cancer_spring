<#include "base.ftlh"/>
<#macro head>
    <title>Registration</title>
</#macro>
<#macro content>
    <div class="login-register-section section">
        <div class="container">
            <div class="row"  style="margin-left: 400px; ;margin-top: 30px">

                <div class="col-md-6 col-sm-6">
                    <div class="customer-login-register register-pt-0">
                        <div class="form-register-title" style="text-align: center">
                            <h2>Register</h2>
                        </div>
                        <div class="register-form">
                            <form action="/signUp" method="post">
                                <div class="form-fild">
                                    <p><label>Name <span class="required">*</span></label></p>
                                    <input name="name" type="text">
                                </div>
                                <div class="form-fild">
                                    <p><label>Email address <span class="required">*</span></label></p>
                                    <input name="email" type="text">
                                </div>
                                <div class="form-fild">
                                    <p><label>Password <span class="required">*</span></label></p>
                                    <input name="password" value="" type="password">
                                </div>
                                <div class="register-submit">
                                    <button type="submit" class="btn">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</#macro>
<@main/>
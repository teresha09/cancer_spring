<#include "base.ftlh"/>
<#macro head>
    <title>Registration</title>
</#macro>
<#macro content>
    <script>
        function sendFile() {
            // данные для отправки
            let formData = new FormData();
            // забрал файл из input
            let files = ($('#file'))[0]['files'];
            // добавляю файл в formData
            [].forEach.call(files, function (file, i, files) {
                formData.append("file", file);
            });

            $.ajax({
                type: "POST",
                url: "/files",
                data: formData,
                processData: false,
                contentType: false
            })
                .done(function (response) {
                    let fileUrl = 'http://localhost/files/' + response;
                    $('#photo').attr('value','' + fileUrl);
                })
                .fail(function () {
                    alert('Error')
                });
        }
    </script>
    <div class="login-register-section section">
        <div class="container">
            <div class="row"  style="margin-left: 400px; ;margin-top: 30px">

                <div class="col-md-6 col-sm-6">
                    <div class="customer-login-register register-pt-0">
                        <div class="form-register-title" style="text-align: center">
                            <h2>Register</h2>
                        </div>
                        <div class="register-form">
                            <form action="/signUp" method="post" enctype="multipart/form-data">
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
                                <div class="form-fild">
                                    <label for="photo">Photo <span class="required">*</span></label>
                                    <p><input type="file" id="file" name="photo" placeholder="Name..."/></p>
                                    <input type="button" onclick="sendFile()" class="btn btn-primary mb-2" value="Ok"/>
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
<#include "base.ftlh"/>
<#macro head>
    <title>Login</title>
</#macro>
<#macro content>
    <div class="row align-items-center" style="margin-left: 400px; margin-top: 30px">
        <ul>
            <li><font size="5">My Account </font></li>
            <li>
                <div class="card" style="width: 50rem; height: 40rem; margin-top: 20px;">
                    <div class="card-header" >
                        <div class="header-menu-area text-center">
                            <nav class="main-menu">
                                Редактировать
                            </nav>
                        </div>
                    </div>
                    <div class="row">

                    </div>
                    <div class="card-body" >
                        <div class="row">
                            <form action="/change_profile" class= col-xl-12 method="post">
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Name</label>
                                    <input name="name" type="text" class="form-control" id="exampleInputPassword1" placeholder="Name">
                                </div>
                                <button type="submit" class="btn btn-primary" style="background-color: #003">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
        </ul>

    </div>
</#macro>
<@main/>
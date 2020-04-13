<#import "spring.ftl" as spring />
<#include "base.ftlh"/>
<#macro head>
    <title>Profile</title>
</#macro>
<#macro content>
    <div class="row align-items-center" style="margin-left: 400px; margin-top: 30px">
        <ul>
            <li><font size="5"><@spring.message 'profile.page.account'/> </font></li>
            <li>
                <div class="card" style="width: 50rem; height: 30rem; margin-top: 20px;">
                    <div class="card-header" >
                        <div class="header-menu-area text-center">
                            <nav class="main-menu">
                                <ul>
                                    <li><a href="/logout">Logout</a></li>
                                    <li class="ml-auto">
                                        <div class="card-footer" style="background: 0px">
                                            <button type="submit" class="btn" style="background-color: #003"><a href="/posts/add">Добавить пост</a></button>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="row">

                    </div>
                    <div class="card-body" >
                        <div class="row">
                            <form class="col-xl-8">
                                <div class="form-group">
                                    <p><b><@spring.message 'profile.page.email'/></b></p>
                                    <p>${user.email}</p>
                                </div>
                                <div class="form-group">
                                    <p><b><@spring.message 'profile.page.name'/></b></p>
                                    <p>${user.name} </p>
                                </div>
                                <button type="submit" class="btn btn-primary" style="background-color: #003"><a href="/change_profile">Редактировать</a></button>
                            </form>
                            <div class="col-sm-4">
                                <div class="card" style="width: 15rem; height: 15rem; margin-top: 10px;">
                                    <div class="card-body">
                                        <img src="${user.photo}"  class="card-img-left" >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</#macro>
<@main/>

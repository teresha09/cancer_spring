<#include "base.ftlh"/>
<#macro head>
    <title>Add Post</title>
</#macro>
<#macro content>
    <div class="row align-items-center" style="margin-left: 400px; margin-top: 30px">
        <div class="card" style="width: 60rem;">
            <form action="/posts/add" class="md-form" method="post" enctype="multipart/form-data">
                <div class="card-body">
                    <h5 class="card-title"><input name="tittle" value="" type="text" placeholder="Заголовок статьи" style="width: 100%"></h5>
                    <p class="card-text"><textarea name="text"  type="text" style="width: 100%; height: 100%"></textarea></p>
                </div>
                <div class="card-body row align-items-center">
                    <div class="login-submit mr-auto">
                        <button type="submit" class="btn">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</#macro>
<@main/>
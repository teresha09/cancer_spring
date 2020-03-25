<#include "base.ftlh"/>
<#macro head>
    <title>Посты</title>
</#macro>
<#macro content>
    <div class="row align-items-center" style="margin-left: 400px; margin-top: 30px">
        <#list posts as pos>
                    <div class="card">
                        <a href="/post?id=${pos.id}">
                            <div class="card-body">
                                <h5 class="card-title">${pos.tittle}</h5>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">${pos.text}</small>
                            </div>
                        </a>
                    </div>
        </#list>
    </div>
</#macro>
<@main/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Users</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script type="application/javascript">
        function f() {
            if ($("#query").val().length >= 1) {
                $.ajax({
                    url: "/users/search",
                    data: {"query": $("#query").val()},
                    dataType: "json",
                    success: function (msg) {
                        if (msg.objects.length > 0) {
                            $("#res").html("");
                            for (var i = 0; i < msg.objects.length; i++) {
                                $("#res").append("<li>" + msg.objects[i].name + "</li>");
                                console.log("AYE")
                            }
                        } else {
                            $("#res").html("No results..");
                        }
                    }
                })
            }
            else {
                $("#res").html("");
            }
        }
    </script>
</head>
<body>
<div>
    <table>
        <tr>
            <th>Имя</th>
            <th>email</th>
        </tr>
        <#list users as user>
            <tr>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td><a href="/users/${user.id}">Посмотреть</a></td>
            </tr>
        </#list>
    </table>
</div>
<tr></tr>
<h1>Поиск</h1>
<p><input id="query" oninput="f()"/></p>
<div id="res"></div>
</body>
</html>
<%-- 
    Document   : login
    Created on : 21 oct 2021, 19:43:35
    Author     : Sarah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
// Validación de entrada desde el menú principal
if (request.getParameter("menu") != null){
%>

<div class="columns is-mobile">
<div class="column is-three-fifths is-offset-one-fifth">
<div class="box">
<br>
<figure class="image is-128x128">
<img src="images/Email.png">
</figure>
<br>
<div class="field">
<p class="control has-icons-left has-icons-right">
<label class="label">e-mail</label>
<input class="input" type="email" placeholder="Email">
<span class="icon is-small is-left">
<i class="fas fa-envelope"></i>
</span>
<span class="icon is-small is-right">
<i class="fas fa-check"></i>
</span>
</p>
</div>
<div class="field">
<p class="control has-icons-left">
<label class="label">Password</label>
<input class="input" type="password" placeholder="Password">
<span class="icon is-small is-left">
<i class="fas fa-lock"></i>
</span>
</p>
</div>
<div class="field">
<p class="control">
<button class="button is-success">
Login
</button>
</p>
</div>
</div>
</div>
</div>
<% }else {
// Cargando la Página de errores
String redirectURL = "index.jsp?menu=401";
response.sendRedirect(redirectURL);
}%>
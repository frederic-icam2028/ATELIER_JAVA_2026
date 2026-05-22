<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <div class="page-box">
    <div class="google-logo">
      <span class="letter-g">G</span><span class="letter-o1">o</span><span class="letter-o2">o</span><span class="letter-g2">g</span><span class="letter-l">l</span><span class="letter-e">e</span>
    </div>
    <h1 class="content-title">Exercices sur les conditions</h1>
    <form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" name="valeur1"></p>
    <p>Saisir la valeur B : <input type="text" name="valeur2"></p>
    <p>Saisir la valeur C : <input type="text" name="valeur3"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%
String valeur1 = request.getParameter("valeur1");
String valeur2 = request.getParameter("valeur2");
String valeur3 = request.getParameter("valeur3");
boolean submitted = valeur1 != null || valeur2 != null || valeur3 != null;
if (submitted) {
    if (valeur1 != null && valeur2 != null && valeur3 != null &&
        !valeur1.trim().isEmpty() && !valeur2.trim().isEmpty() && !valeur3.trim().isEmpty()) {
        try {
            int a = Integer.parseInt(valeur1.trim());
            int b = Integer.parseInt(valeur2.trim());
            int c = Integer.parseInt(valeur3.trim());
            int min = Math.min(a, b);
            int max = Math.max(a, b);
%>
<h2>Résultats <span class="help-icon" data-help="Compare A et B pour déterminer l'ordre, puis vérifie si C est compris entre min(A,B) et max(A,B). Enfin, teste si A est pair ou impair.">?</span></h2>
<p>A = <%= a %>, B = <%= b %>, C = <%= c %></p>
<p>
<% if (c >= min && c <= max) { %>
    Oui, C est compris entre A et B.
<% } else { %>
    Non, C n'est pas compris entre A et B.
<% } %>
</p>
<p>
<% if (a % 2 == 0) { %>
    A (<%= a %>) est pair.
<% } else { %>
    A (<%= a %>) est impair.
<% } %>
</p>
<%        } catch (NumberFormatException e) {
%>
<p style="color:red;">Erreur : veuillez saisir trois nombres entiers valides.</p>
<%        }
    } else {
%>
<p style="color:red;">Veuillez remplir les trois champs avec des nombres entiers.</p>
<%    }
}
%>

<p><a href="index.html">Retour au sommaire</a></p>
  </div>
  <div class="footer">Page inspirée du style Google</div>
</div>
<script src="script.js"></script>
</body>
</html>

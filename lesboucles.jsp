<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <div class="page-box">
    <div class="google-logo">
      <span class="letter-g">G</span><span class="letter-o1">o</span><span class="letter-o2">o</span><span class="letter-g2">g</span><span class="letter-l">l</span><span class="letter-e">e</span>
    </div>
    <h1 class="content-title">Exercices sur les boucles</h1>
    <form action="#" method="post">
      <p>Saisir le nombre d'étoiles : <input type="text" name="valeur"></p>
      <p><input type="submit" value="Afficher"></p>
    </form>

<% 
String valeur = request.getParameter("valeur");
if (valeur != null && !valeur.trim().isEmpty()) {
    try {
        int n = Integer.parseInt(valeur.trim());
        if (n > 0) {
%>
<h2>1) Ligne d'étoiles <span class="help-icon" data-help="Affiche une ligne contenant n étoiles en utilisant une boucle for.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 0; i < n; i++) { out.print("*"); } %>
</pre>

<h2>2) Carré d'étoiles <span class="help-icon" data-help="Utilise une boucle imbriquée pour afficher n lignes de n étoiles, formant un carré.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>3) Triangle rectangle gauche <span class="help-icon" data-help="Affiche une pyramide croissante d'étoiles en augmentant la longueur de la ligne à chaque itération.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>4) Triangle rectangle inversé <span class="help-icon" data-help="Affiche un triangle décroissant en réduisant le nombre d'étoiles à chaque ligne.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = n; i >= 1; i--) {
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>5) Triangle rectangle droit <span class="help-icon" data-help="Ajoute des espaces en début de ligne et affiche ensuite des étoiles pour aligner le triangle à droite.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>6) Triangle isocèle <span class="help-icon" data-help="Affiche un triangle centré en ajoutant des espaces avant et en utilisant un nombre impair d'étoiles.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= 2 * i - 1; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>7) Losange <span class="help-icon" data-help="Affiche d'abord la partie haute du losange, puis la partie basse, en variant la largeur des lignes.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= 2 * i - 1; j++) { out.print("*"); }
       out.print("\n");
   }
   for (int i = n - 1; i >= 1; i--) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= 2 * i - 1; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>8) Table de multiplication <span class="help-icon" data-help="Boucle de 1 à n pour afficher la table de multiplication de la valeur saisie.">?</span></h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       out.print(n + " x " + i + " = " + (n * i));
       out.print("\n");
   }
%>
</pre>
<%      } else { %>
<p style="color:red;">Veuillez saisir un entier positif.</p>
<%      }
    } catch (NumberFormatException e) {
%>
<p style="color:red;">Valeur non valide : saisissez un entier.</p>
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

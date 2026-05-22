<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <div class="page-box">
    <div class="google-logo">
      <span class="letter-g">G</span><span class="letter-o1">o</span><span class="letter-o2">o</span><span class="letter-g2">g</span><span class="letter-l">l</span><span class="letter-e">e</span>
    </div>
    <h1 class="content-title">Exercices sur les tableaux</h1>
    <form action="#" method="post">
      <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" name="chaine"></p>
      <p><input type="submit" value="Afficher"></p>
    </form>

<%
String chaine = request.getParameter("chaine");
if (chaine != null) {
    String saisie = chaine.trim();
    if (!saisie.isEmpty()) {
        String[] tokens = saisie.split("\\s+");
        try {
            int[] valeurs = new int[tokens.length];
            for (int i = 0; i < tokens.length; i++) {
                valeurs[i] = Integer.parseInt(tokens[i]);
            }
            int carrePremiere = valeurs[0] * valeurs[0];
            int sommeDeuxPremieres = valeurs.length >= 2 ? valeurs[0] + valeurs[1] : valeurs[0];
            int sommeTotale = 0;
            int max = valeurs[0];
            int min = valeurs[0];
            int plusProcheZero = valeurs[0];
            for (int v : valeurs) {
                sommeTotale += v;
                if (v > max) { max = v; }
                if (v < min) { min = v; }
                if (Math.abs(v) < Math.abs(plusProcheZero) ||
                    (Math.abs(v) == Math.abs(plusProcheZero) && v > plusProcheZero)) {
                    plusProcheZero = v;
                }
            }
%>
<h2>Résultats <span class="help-icon" data-help="Convertit la saisie en tableau de nombres, puis calcule carré, sommes, max, min et valeur la plus proche de zéro.">?</span></h2>
<p>Tableau saisi : <%= saisie %></p>
<p>Nombre de valeurs : <%= valeurs.length %></p>
<p>Valeurs : 
<% for (int i = 0; i < valeurs.length; i++) {
       out.print(valeurs[i]);
       if (i < valeurs.length - 1) out.print(" ");
   } %>
</p>
<p>Carré de la première valeur : <%= carrePremiere %></p>
<p>Somme des deux premières valeurs : <%= sommeDeuxPremieres %></p>
<p>Somme de toutes les valeurs : <%= sommeTotale %></p>
<p>Valeur maximale : <%= max %></p>
<p>Valeur minimale : <%= min %></p>
<p>Valeur la plus proche de 0 : <%= plusProcheZero %></p>
<h3>Règle de l'égalité proche de 0</h3>
<p>En cas d'égalité entre un positif et un négatif de même distance, le positif est choisi.</p>
<%        } catch (NumberFormatException e) {
%>
<p style="color:red;">Erreur : veuillez saisir uniquement des nombres entiers séparés par des espaces.</p>
<%        }
    } else {
%>
<p style="color:red;">Veuillez saisir au moins une valeur.</p>
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

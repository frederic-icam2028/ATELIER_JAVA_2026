<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <div class="page-box">
    <div class="google-logo">
      <span class="letter-g">G</span><span class="letter-o1">o</span><span class="letter-o2">o</span><span class="letter-g2">g</span><span class="letter-l">l</span><span class="letter-e">e</span>
    </div>
    <h1 class="content-title">Exercices sur les chaînes de caractères</h1>
    <form action="#" method="post">
      <p>Saisir une chaîne (texte avec 6 caractères minimum) : <input type="text" name="chaine"></p>
      <p><input type="submit" value="Afficher"></p>
    </form>

<%
String chaine = request.getParameter("chaine");
if (chaine != null) {
    String texte = chaine.trim();
    if (!texte.isEmpty()) {
        int longueur = texte.length();
        int positionE = texte.indexOf('e');
        int positionEmaj = texte.indexOf('E');
        if (positionE == -1 || (positionEmaj != -1 && positionEmaj < positionE)) {
            positionE = positionEmaj;
        }
        int countE = 0;
        int countVoyelles = 0;
        int countConsonnes = 0;
        StringBuilder vertical = new StringBuilder();
        StringBuilder wordsLines = new StringBuilder();
        StringBuilder uneLettreSurDeux = new StringBuilder();
        StringBuilder reverse = new StringBuilder();
        String voyelles = "aeiouyAEIOUY";
        String[] mots = texte.split("\\s+");
        for (int i = 0; i < texte.length(); i++) {
            char c = texte.charAt(i);
            if (c == 'e' || c == 'E') {
                countE++;
            }
            if (Character.isLetter(c)) {
                if (voyelles.indexOf(c) != -1) {
                    countVoyelles++;
                } else {
                    countConsonnes++;
                }
            }
            vertical.append(c).append("<br/>");
            if (i % 2 == 0) {
                uneLettreSurDeux.append(c);
            }
            reverse.insert(0, c);
        }
        for (int i = 0; i < mots.length; i++) {
            wordsLines.append(mots[i]);
            if (i < mots.length - 1) {
                wordsLines.append("<br/>");
            }
        }
%>
<h2>Résultats <span class="help-icon" data-help="Calcule la longueur, extrait des sous-chaînes, recherche 'e', affiche verticalement, découpe sur espaces, montre une lettre sur deux, inverse la chaîne et compte voyelles/consonnes.">?</span></h2>
<p>Longueur : <%= longueur %> caractères</p>
<% if (longueur >= 3) { %>
<p>3° caractère : <%= texte.charAt(2) %></p>
<% } else { %>
<p style="color:red;">La chaîne contient moins de 3 caractères.</p>
<% } %>
<% if (longueur >= 6) { %>
<p>Sous-chaîne (positions 3 à 6) : <%= texte.substring(2, 6) %></p>
<% } else { %>
<p style="color:red;">La chaîne contient moins de 6 caractères pour extraire une sous-chaîne.</p>
<% } %>
<p>Première occurrence de 'e' : <%= positionE >= 0 ? (positionE + 1) : -1 %></p>
<p>Nombre de 'e' dans la chaîne : <%= countE %></p>
<h3>Affichage vertical</h3>
<div style="background:#f4f4f4;padding:8px;"><%= vertical.toString() %></div>
<h3>Retour à la ligne sur espace</h3>
<div style="background:#f4f4f4;padding:8px;"><%= wordsLines.toString() %></div>
<h3>Une lettre sur deux</h3>
<p><%= uneLettreSurDeux.toString() %></p>
<h3>Phrase en verlant</h3>
<p><%= reverse.toString() %></p>
<h3>Consonnes et voyelles</h3>
<p>Voyelles : <%= countVoyelles %> | Consonnes : <%= countConsonnes %></p>
<%    } else { %>
<p style="color:red;">Veuillez saisir une chaîne non vide.</p>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<%int cpt2 = Integer.parseInt(valeur); %>
<%int cpt3 = Integer.parseInt(valeur); %>
    <p>
        <% for (int i2 = 1; i2 <= cpt2;i2++) { %>
            <% for (int i3 = 1; i3 <= cpt3; i3++) { %>
               <%= "*" %>
            <% } %>
            </br>
        <% } %>
    </p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<%int cpt4 = Integer.parseInt(valeur); %>
<%int cpt5 = Integer.parseInt(valeur); %>
    <p>
        <% for (int i4 = 1; i4 <= cpt4;i4++) { %>
            <% for (int i5 = 1; i5 <= i4; i5++) { %>
               <%= "*" %>
            <% } %>
            </br>
        <% } %>
    </p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<%int cpt6 = Integer.parseInt(valeur); %>
<%int cpt7 = Integer.parseInt(valeur); %>
    <p>
        <% for (int i6 = cpt6 ; i6 >= 1 ;i6--) { %>
            <% for (int i7 = 1; i7 <= i6 ; i7++) { %>
               <%= "*" %>
            <% } %>
            </br>
        <% } %>
    </p>

<h2>Exercice 4 : Triangle rectangle 2</h2>

<% int cpt8 = Integer.parseInt(valeur); %>

<% for (int i8 = 1; i8 <= cpt8; i8++) { %>

    <% for (int i9 = cpt8; i9 > i8; i9--) { %>&nbsp;<% } %>

    <% for (int i10 = 1; i10 <= i8; i10++) { %>*<% } %>

    <br>

<% } %>

</p>

<h2>Exercice 5 : Triangle isocele</h2>

<% int cpt10 = Integer.parseInt(valeur); %>

<p>
<% for (int i = 1; i <= cpt10; i++) { %><% for (int j = 1; j <= cpt10 - i; j++) { %> <% } %><% for (int k = 1; k <= i; k++) { %>*<% } %>
<% } %>
</p>


<h2>Exercice 6 : Le losange</h2>

<% int cpt11 = Integer.parseInt(valeur); %>

<pre>
<% for (int i = 1; i <= cpt11; i++) { %>
<% for (int j = 1; j <= cpt11 - i; j++) { %> <% } %><% for (int k = 1; k <= i; k++) { %>*<% } %>
<% } %>
<% for (int i = cpt11 - 1; i >= 1; i--) { %>
<% for (int j = 1; j <= cpt11 - i; j++) { %> <% } %><% for (int k = 1; k <= i; k++) { %>*<% } %>
<% } %>
</pre>


<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créer une table de multiplication</p>

<% int cpt12 = Integer.parseInt(valeur); %>

<p>
<% for (int i = 1; i <= cpt12; i++) { %>
    <%= cpt12 %> x <%= i %> = <%= cpt12 * i %>
    <br>
<% } %>
</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

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

<% String valeur = request.getParameter("valeur"); %>
<% if (valeur != null && !valeur.trim().isEmpty()) {
    try {
        int n = Integer.parseInt(valeur.trim());
        if (n > 0) {
%>
<h2>1) Ligne d'étoiles</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 0; i < n; i++) { out.print("*"); } %>
</pre>

<h2>2) Carré d'étoiles</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>3) Triangle rectangle gauche</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>4) Triangle rectangle inversé</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = n; i >= 1; i--) {
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>5) Triangle rectangle droit</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>6) Triangle isocèle</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= 2 * i - 1; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>7) Losange</h2>
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

<h2>8) Table de multiplication</h2>
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
} %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>>>>>>>> f7127e8 (Corrige les boissons de lesboucles.jsp pour les exercices de boucles)

<h2>2) Carré d'étoiles</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>3) Triangle rectangle gauche</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>4) Triangle rectangle inversé</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = n; i >= 1; i--) {
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>5) Triangle rectangle droit</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= i; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>6) Triangle isocèle</h2>
<pre style="background:#f4f4f4;padding:8px;">
<% for (int i = 1; i <= n; i++) {
       for (int j = 1; j <= n - i; j++) { out.print(" "); }
       for (int j = 1; j <= 2 * i - 1; j++) { out.print("*"); }
       out.print("\n");
   }
%>
</pre>

<h2>7) Losange</h2>
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

<h2>8) Table de multiplication</h2>
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
} %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

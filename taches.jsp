<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Taches</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <div class="page-box">
    <div class="google-logo">
      <span class="letter-g">G</span><span class="letter-o1">o</span><span class="letter-o2">o</span><span class="letter-g2">g</span><span class="letter-l">l</span><span class="letter-e">e</span>
    </div>
    <h1 class="content-title">Saisir une tâche</h1>
    <form action="#" method="post">
      <p>Saisir le nom d'une tâche : <input type="text" name="valeur"></p>
      <p><input type="submit" value="Enregistrer"></p>
    </form>

<%! 
    class MyClass {
        String nameTache;

        public MyClass(String name) {
            nameTache = name;
        }
    }
%>

<%
    String valeur = request.getParameter("valeur");

    if (valeur != null && !valeur.isEmpty()) {
        MyClass tache = new MyClass(valeur);
%>
        <p>Nom de la tâche : <%= tache.nameTache %></p>
<%
    }
%>

    </div>
    <div class="footer">Page inspirée du style Google</div>
</div>
</body>
</html>

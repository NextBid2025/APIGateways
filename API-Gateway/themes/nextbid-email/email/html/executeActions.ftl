<#-- Archivo: themes/nextbid-email/email/html/executeActions.ftl -->
<html>
  <body>
    <p>Hola ${user.firstName!user.username!''},</p>
    <p>Por favor realiza la(s) siguiente(s) acción(es) en tu cuenta usando este enlace:</p>
    <p><a href="${link}">${link}</a></p>
    <p>Gracias,<br/>El equipo de soporte</p>
  </body>
</html>
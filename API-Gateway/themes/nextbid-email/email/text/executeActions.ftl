<#import "emailLayout.ftl" as layout>
<@layout.emailLayout body="
  <h2>Acciones requeridas en tu cuenta</h2>
  <p>Estimado/a ${userName!\"usuario\"},</p>
  <p>Por favor realiza las siguientes acciones en tu cuenta usando el siguiente enlace:</p>
  <p><a href='${link!\"#\"}'>${link!\"[enlace no disponible]\"}</a></p>
  <p>Si no solicitaste este correo, ignóralo.</p>
  <p>Gracias,<br/>El equipo de soporte</p>
"/>
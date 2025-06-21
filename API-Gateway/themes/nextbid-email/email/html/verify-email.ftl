<html>
  <body style="font-family: Arial, sans-serif; background: #f4f4f4;">
    <div style="max-width: 600px; margin: auto; background: #fff; border-radius: 8px; border: 1px solid #e0e0e0;">
      <div style="background: #0A2463; color: #fff; padding: 24px 16px; border-radius: 8px 8px 0 0;">
        <h2>¡Bienvenido a nextbid, ${user.firstName}!</h2>
      </div>
      <div style="padding: 24px 16px;">
        <p>Hola <b>${user.firstName} ${user.lastName}</b>,</p>
        <p>Por favor, confirma tu correo electrónico haciendo clic en el siguiente enlace:</p>
        <p><a href="${link}" style="background: #0A2463; color: #fff; padding: 12px 24px; border-radius: 4px; text-decoration: none;">Verificar correo</a></p>
        <p>¡Gracias por unirte a nextbid!</p>
      </div>
    </div>
  </body>
</html>
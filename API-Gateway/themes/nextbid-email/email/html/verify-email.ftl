<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Verificación de correo - NextBid</title>
</head>
<body style="margin:0; padding:0; font-family: Arial, sans-serif; background-color: #f4f6fb;">
    <table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color: #f4f6fb;">
        <tr>
            <td align="center" style="padding: 40px 0;">
                <table width="600" cellpadding="0" cellspacing="0" border="0" style="background-color: #fff; border-radius: 12px; box-shadow: 0 4px 24px rgba(10,36,99,0.08); border: 1px solid #e0e4ef;">
                    <tr>
                        <td style="padding: 32px 0 16px 0; text-align: center;">
                            <img src="https://www.example.com/logo.png" alt="NextBid Logo" style="width: 120px; height: auto;">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 0 40px 32px 40px; font-size: 16px; color: #222;">
                            <h1 style="font-size: 28px; color: #0A2463; margin: 0 0 16px 0; font-weight: bold;">
                                Hola ${user.firstName!user.username!''},
                            </h1>
                            <p style="margin: 0 0 24px 0; color: #333;">
                                ¡Bienvenido a NextBid! Por favor, verifica tu correo electrónico haciendo clic en el siguiente botón:
                            </p>
                            <p style="text-align: center; margin: 0 0 24px 0;">
                                <a href="${link}" style="background-color: #0A2463; color: #fff; text-decoration: none; display: inline-block; padding: 14px 36px; border-radius: 6px; font-size: 18px; font-weight: bold; letter-spacing: 1px;">
                                    Verificar correo
                                </a>
                            </p>
                            <p style="margin: 0 0 16px 0; color: #555; font-size: 14px;">
                                Si no solicitaste esta verificación, puedes ignorar este correo.
                            </p>
                            <p style="margin: 0; color: #0A2463; font-weight: bold;">
                                ¡Gracias por confiar en NextBid!<br>
                                El equipo de NextBid
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 20px; text-align: center; font-size: 12px; color: #888;">
                            <p style="margin: 0;">&copy; 2024 NextBid. Todos los derechos reservados.</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
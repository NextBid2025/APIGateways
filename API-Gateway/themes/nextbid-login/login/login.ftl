<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Iniciar sesión - NextBid</title>
  <link rel="stylesheet" href="/themes/nextbid-login/resources/css/login.css">
  <style>
    body {
      background: linear-gradient(135deg, #0A2463 0%, #3E92CC 100%);
      font-family: 'Segoe UI', Arial, sans-serif;
      min-height: 100vh;
      margin: 0;
    }
    .login-container {
      max-width: 400px;
      margin: 60px auto;
      background: #fff;
      border-radius: 18px;
      box-shadow: 0 8px 32px rgba(10,36,99,0.18);
      padding: 48px 36px 32px 36px;
      border: none;
      position: relative;
      overflow: hidden;
    }
    .logo {
      display: block;
      margin: 0 auto 28px auto;
      width: 110px;
      filter: drop-shadow(0 2px 8px rgba(62,146,204,0.12));
    }
    h1 {
      color: #0A2463;
      font-size: 32px;
      margin-bottom: 18px;
      text-align: center;
      letter-spacing: 1px;
      font-weight: 700;
    }
    .form-group { margin-bottom: 22px; }
    label {
      color: #222;
      font-weight: 600;
      display: block;
      margin-bottom: 8px;
      letter-spacing: 0.5px;
    }
    .input-wrapper {
      position: relative;
      width: 100%;
      margin: 0 auto;
      display: flex;
      align-items: center;
      background: #f4f6fb;
      border-radius: 8px;
      border: 1.5px solid #e0e4ef;
      transition: border-color 0.2s;
    }
    .input-wrapper:focus-within {
      border-color: #3E92CC;
    }
    input[type="text"], input[type="password"] {
      width: 100%;
      padding: 14px 44px 14px 14px;
      border: none;
      border-radius: 8px;
      font-size: 17px;
      background: transparent;
      outline: none;
      color: #222;
      font-weight: 500;
      transition: background 0.2s;
    }
    input[type="text"]:focus, input[type="password"]:focus {
      background: #eaf1fa;
    }
    .toggle-password-btn {
      position: absolute;
      right: 10px;
      top: 50%;
      transform: translateY(-50%);
      background: transparent;
      border: none;
      cursor: pointer;
      padding: 0;
      height: 28px;
      width: 28px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #3E92CC;
    }
    .btn-login {
      width: 100%;
      background: linear-gradient(90deg, #0A2463 60%, #3E92CC 100%);
      color: #fff;
      border: none;
      padding: 15px;
      border-radius: 8px;
      font-size: 19px;
      font-weight: bold;
      cursor: pointer;
      margin-top: 8px;
      box-shadow: 0 2px 8px rgba(62,146,204,0.10);
      transition: background 0.2s, box-shadow 0.2s;
    }
    .btn-login:hover {
      background: linear-gradient(90deg, #3E92CC 0%, #0A2463 100%);
      box-shadow: 0 4px 16px rgba(62,146,204,0.18);
    }
    .kc-feedback-text {
      color: #d32f2f;
      margin-bottom: 14px;
      text-align: center;
      font-weight: 500;
      letter-spacing: 0.5px;
    }
    .footer {
      text-align: center;
      color: #888;
      font-size: 13px;
      margin-top: 32px;
      letter-spacing: 0.5px;
    }
    .forgot-link {
      text-align: center;
      margin-top: 18px;
    }
    .forgot-link a {
      color: #3E92CC;
      text-decoration: none;
      font-size: 15px;
      font-weight: 500;
      transition: color 0.2s;
    }
    .forgot-link a:hover {
      color: #0A2463;
      text-decoration: underline;
    }
    /* Animación de entrada */
    .login-container {
      animation: fadeInUp 0.8s cubic-bezier(.23,1.01,.32,1) both;
    }
    @keyframes fadeInUp {
      from { opacity: 0; transform: translate3d(0, 40px, 0);}
      to { opacity: 1; transform: none;}
    }
  </style>
</head>
<body>
  <div class="login-container">
    
    <h1>Iniciar sesión</h1>
    <#if message?has_content>
      <div class="kc-feedback-text">${message.summary}</div>
    </#if>
    <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
      <div class="form-group">
        <label for="username">Usuario</label>
        <div class="input-wrapper">
          <input tabindex="1" id="username" name="username" type="text" autofocus autocomplete="username" value="${login.username!''}">
        </div>
      </div>
      <div class="form-group">
        <label for="password">Contraseña</label>
        <div class="input-wrapper">
          <input tabindex="2" id="password" name="password" type="password" autocomplete="current-password">
          <button type="button" id="togglePassword" tabindex="-1" class="toggle-password-btn" aria-label="Mostrar/Ocultar contraseña">
            <svg id="eyeIcon" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3E92CC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <ellipse cx="12" cy="12" rx="8" ry="5"></ellipse>
              <circle cx="12" cy="12" r="2"></circle>
            </svg>
          </button>
        </div>
      </div>
      <button class="btn-login" name="login" type="submit" tabindex="3">Entrar</button>
    </form>
    <div class="forgot-link">
      <a href="${url.loginResetCredentialsUrl}">
        ¿Olvidaste tu contraseña?
      </a>
    </div>
    <div class="footer">&copy; 2025 NextBid</div>
  </div>
  <script>
    const passwordInput = document.getElementById('password');
    const togglePassword = document.getElementById('togglePassword');
    const eyeIcon = document.getElementById('eyeIcon');
    let visible = false;
    togglePassword.addEventListener('click', function() {
      visible = !visible;
      passwordInput.type = visible ? 'text' : 'password';
      eyeIcon.innerHTML = visible
        ? '<ellipse cx="12" cy="12" rx="8" ry="5"></ellipse><circle cx="12" cy="12" r="2"></circle><line x1="4" y1="19" x2="20" y2="5" stroke="#3E92CC" stroke-width="2"></line>'
        : '<ellipse cx="12" cy="12" rx="8" ry="5"></ellipse><circle cx="12" cy="12" r="2"></circle>';
    });
  </script>
</body>
</html>

<#macro emailLayout body>
<html>
  <body style="font-family: Arial, sans-serif; background: #f4f4f4;">
    <div style="max-width: 600px; margin: auto; background: #fff; border-radius: 8px; border: 1px solid #e0e0e0;">
      <div style="background: #0A2463; color: #fff; padding: 24px 16px; border-radius: 8px 8px 0 0; text-align: center;">
        <img src="https://example.com/images/nextbid-logo.png" alt="nextbid" style="max-width: 120px; margin-bottom: 12px;" />
      </div>
      <div style="padding: 24px 16px;">
        ${body}
      </div>
      <footer style="background: #0A2463; color: #fff; text-align: center; padding: 16px; border-radius: 0 0 8px 8px;">
        <p>Av. Principal 123, Caracas, Venezuela</p>
        <p><a href="mailto:soporte@nextbid.com" style="color: #fff; text-decoration: underline;">soporte@nextbid.com</a></p>
      </footer>
    </div>
  </body>
</html>
</#macro>
namespace Gateway.API.Controller;

using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("[controller]")]
public class ProductosController : ControllerBase
{
    [HttpGet("health")]
    public IActionResult Health() => Ok("Healthy");
}
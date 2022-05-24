using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Travel.Data;
using Travel.Helpers;
using Travel.Models;
using Travel.Models.custom;
using Travel.Serialize;

namespace Travel.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        public IConfiguration _configuration;
        private readonly TravelContext _context;
        private readonly AppSettings _appSettings;
        public LoginController(IConfiguration configuration, TravelContext context, IOptions<AppSettings> appSettings)
        {
            _context = context;
            _configuration = configuration;
            _appSettings = appSettings.Value;
        }

        [HttpPost]
        public async Task<IActionResult> login(NguoiDung nd)
        {
            var f_password = GetMD5(nd.MatKhau);
            var user = _context.NguoiDungs.FirstOrDefault(u => u.Email == nd.Email && u.MatKhau == f_password && u.TrangThai != 0);
            if (user != null)
            {
                // generate token that is valid for 1 days
                var tokenHandler = new JwtSecurityTokenHandler();
                var key = Encoding.ASCII.GetBytes(_appSettings.Secret);
                var claims = new Claim[]
                {
                    new Claim(ClaimTypes.Name, user.HoTen),
                    new Claim(ClaimTypes.Email, user.Email),
                    new Claim("id", user.Id.ToString())
                };
                var tokenDescriptor = new SecurityTokenDescriptor
                {
                    Subject = new ClaimsIdentity(claims),
                    Expires = DateTime.UtcNow.AddDays(1),
                    SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
                };
                var token = tokenHandler.CreateToken(tokenDescriptor);

                var result = new login_serialize();
                result.Id = user.Id.ToString();
                result.HoTen = user.HoTen;
                result.Sdt = user.Sdt;
                result.Email = user.Email;
                result.Avt = user.Avt;
                result.token = tokenHandler.WriteToken(token);
                return Ok(result);
            }
            else
            {
                return BadRequest("Invalid credentials");
            }

        }
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
    }
}

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Travel.Data;
using Travel.Models.custom;
using Travel.Models;

namespace Travel.Controllers
{
    [Authorize]
    [Authorize(Roles = "Business")]
    [Route("api/[controller]")]
    [ApiController]
    public class ToursController : Controller
    {
        public IConfiguration _configuration;
        private readonly TravelContext _context;
        public ToursController(IConfiguration configuration, TravelContext context)
        {
            _context = context;
            _configuration = configuration;
        }
        [HttpPost]
        [Route("create")]
        [ActionName("createTour")]
        public async Task<IActionResult> createTour([FromBody] TourCreate tourCreate)
        {
            using var transaction = _context.Database.BeginTransaction();
            try
            {
                var tour = new Tour();
                tour.CongTyId = tourCreate.rTour.CongtyId;
                tour.TheLoaiId = tourCreate.rTour.TheLoaiId;
                tour.TenTour = tourCreate.rTour.TenTour;
                tour.CanChuanBi = "";
                tour.DiemNoiBat = "";
                tour.TrangThai = 1;
                foreach (string x in tourCreate.rTour.CanChuanBi)
                {
                    tour.CanChuanBi += (" - " + x);
                }
                foreach (string x in tourCreate.rTour.DiemNoiBat)
                {
                    tour.DiemNoiBat += (" - " + x);
                }
                _context.Tours.Add(tour);
                _context.SaveChanges();
                int a = tour.Id;
                int idtour = tour.Id;

                //Insert dia diem   
                
                foreach (var dd in tourCreate.rDiaDiem)
                {
                    var diadiem = new DiaDiem();
                    diadiem.TourId = idtour;
                    diadiem.Ten = dd.Ten;
                    diadiem.TrangThai = 1;
                    _context.Add(diadiem);
                    _context.SaveChanges();
                }

                //insert thoi gian
                
                foreach (var tt in tourCreate.rThoiGians)
                {
                    var thoigian = new ThoiGian();
                    DateTime ngaydi = DateTime.ParseExact(tt.NgayDi, "dd/MM/yyyyTHH:mm",
                                System.Globalization.CultureInfo.InvariantCulture);
                    DateTime ngayve = DateTime.ParseExact(tt.NgayVe, "dd/MM/yyyyTHH:mm",
                                System.Globalization.CultureInfo.InvariantCulture);
                    thoigian.TourId = idtour;
                    thoigian.NgayDi = ngaydi;
                    thoigian.NgayVe = ngayve;
                    thoigian.SoLuongMax = tt.SoLuongToiDa;
                    thoigian.GiaDefaut = tt.GiaMacDinh;
                    thoigian.TrangThai = 1;
                    _context.Add(thoigian);
                    _context.SaveChanges();
                }

                //insert lich trinh
                var lichtrinh = new LichTrinh();
                lichtrinh.TourId = idtour;
                lichtrinh.Sang = tourCreate.rLichTrinh.Sang;
                lichtrinh.Trua = tourCreate.rLichTrinh.Trua;
                lichtrinh.Chieu = tourCreate.rLichTrinh.Chieu;
                lichtrinh.TrangThai = 1;
                _context.Add(lichtrinh);
                _context.SaveChanges();

                //insert chi tiet dich vu
                var chitietdichvu = new ChiTietDichVu();
                chitietdichvu.TourId = idtour;
                chitietdichvu.CoTrongVe = tourCreate.rChiTietDichVu.CoTrongVe;
                chitietdichvu.KhongTrongVe = tourCreate.rChiTietDichVu.KhongTrongVe;
                chitietdichvu.CheDoTreEm = tourCreate.rChiTietDichVu.KhongTrongVe;
                chitietdichvu.TrangThai = 1;
                _context.Add(chitietdichvu);
                _context.SaveChanges();

                //insert ghi chu
                
                foreach (var gc in tourCreate.rGhiChus)
                {
                    var ghichu = new GhiChu();
                    ghichu.TourId = idtour;
                    ghichu.TieuDe = gc.TieuDe;
                    ghichu.NoiDung = gc.NoiDung;
                    ghichu.TrangThai = 1;
                    _context.Add(ghichu);
                    _context.SaveChanges();
                }

                //insert anh tour
                
                foreach (var at in tourCreate.rAnhTour)
                {
                    var anhtour = new AnhTour();
                    var index = at.Anh.IndexOf(',');
                    var base64stringWithoutSignature = at.Anh.Substring(index + 1);

                    index = at.Anh.IndexOf(';');
                    var base64signature = at.Anh.Substring(0, index);
                    index = base64signature.IndexOf("/");
                    var extension = base64signature.Substring(index + 1);
                    byte[] bytes = Convert.FromBase64String(base64stringWithoutSignature);
                    DateTime now = DateTime.Now;
                    var filename = idtour + "_" + now.ToString("yyMMddhhmmss") + "." + extension;
                    await System.IO.File.WriteAllBytesAsync("wwwroot/Anh_tour/" + filename, bytes);
                    anhtour.TourId = idtour;
                    anhtour.Anh = filename;
                    anhtour.TrangThai = 1;
                    _context.Add(anhtour);
                    _context.SaveChanges();
                }



                // Commit transaction if all commands succeed, transaction will auto-rollback
                // when disposed if either commands fails
                transaction.Commit();
                return Ok("Create tour success");
            }
            catch (Exception)
            {
                // TODO: Handle failure
                return BadRequest("Create tour fail");
            }

        }

    }
}

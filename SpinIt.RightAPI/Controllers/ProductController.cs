using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
//using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using Spinit.Data.Models;
using Spinit.Data.Models.User;
using Spinit.Data.Services.Infrastructure;
using System;
using System.Collections.Generic;
//using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;

namespace SpinIt.RightAPI.Controllers
{

    [Route("api/[controller]/[action]")]  //      api/Product
    [ApiController]
    //[Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class ProductController: ControllerBase
    {   
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IProduct _product;

        public ProductController(UserManager<ApplicationUser> user, IProduct product)
        {
            _userManager = user;
            _product = product;
        }
        // Get All Products
        [HttpGet(Name = "GetAllProducts")]
        public ActionResult<IEnumerable<string>> GetAllProducts()
        {
            var data = JsonConvert.SerializeObject(_product.GetAll().ToList(), Formatting.None,
                        new JsonSerializerSettings()
                        {
                            ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                        });
            return Ok(data);
        }

        //Add Product
        [HttpPost(Name = "InsertProduct")]
        public ActionResult<IEnumerable<string>> InsertProduct(Product  product)
        {
            _product.Insert(product);
            _product.Save();
            return Ok("Product Successfully Added");
            
        }

        
        //Delete Product
        [HttpPost(Name = "DeleteProduct")]
        public ActionResult<IEnumerable<string>> DeleteProduct(int Id)
        {

            try
            {
                var DataList = _product.GetAll().Where(x => x.Id == Id).ToList();
                foreach (var item in DataList)
                {
                    _product.Delete(item.Id);
                    _product.Save();
                    return Ok("ProductCategory Succeessfully Deleted");
                }
                return Ok();
            }
            catch (Exception)
            {
                return Ok();
            }

        }

        //Update Product
        [HttpPost(Name = "UpdateProduct")]
        public ActionResult<IEnumerable<string>> UpdateProduct(Product product)
        {
            try
            {   
               _product.Update(product);
                _product.Save();
                return Ok("Record Successfully Updated");
            }
            catch (Exception)
            {
                return Ok();
            }
        }

    }
}

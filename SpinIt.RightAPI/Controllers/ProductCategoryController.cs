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

    [Route("api/[controller]/[action]")] //      api/ProductCategory
    [ApiController]
    //[Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class ProductCategoryController: ControllerBase
    {   
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IProductCategory _productCategory;

        public ProductCategoryController(UserManager<ApplicationUser> user, IProductCategory productCategory)
        {
            _userManager = user;
            _productCategory = productCategory;
        }

        //Get All ProductCategory
        [HttpGet("GetAllProductCategories")]
        public ActionResult<IEnumerable<string>> GetAllProductCategories()
        {
            var data = JsonConvert.SerializeObject(_productCategory.GetAll().ToList(), Formatting.None,
                        new JsonSerializerSettings()
                        {
                            ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                        });
            return Ok(data);
        }

        //Add ProductCategory
        [HttpPost(Name = "InsertProductCategory")]
        public ActionResult<IEnumerable<string>> InsertProductCategory(ProductCategory product)
        {
            _productCategory.Insert(product);
            _productCategory.Save();
            return Ok("Product Successfully Added");
            
        }


        //Delete ProductCategory
        [HttpPost(Name = "DeleteProductCategory")]
        public ActionResult<IEnumerable<string>> DeleteProductCategory(int Id)
        {

            try
            {
                var DataList = _productCategory.GetAll().Where(x => x.Id == Id).ToList();
                foreach (var item in DataList)
                {
                    _productCategory.Delete(item.Id);
                    _productCategory.Save();
                    return Ok("ProductCategory Succeessfully Deleted");
                }
                return Ok();
            }
            catch (Exception)
            {
                return Ok();
            }

        }

        //Update ProductCategory
        [HttpPost(Name = "UpdateProductCategory")]
        public ActionResult<IEnumerable<string>> UpdateProductCategory(ProductCategory product)
        {
            try
            {   
               _productCategory.Update(product);
                _productCategory.Save();
                return Ok("Record Successfully Updated");
            }
            catch (Exception)
            {
                return Ok();
            }
        }

    }
}

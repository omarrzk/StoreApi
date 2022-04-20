using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
//using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using Spinit.Data.Models;
using Spinit.Data.Models.DTOs.Responses;
using Spinit.Data.Models.User;
using Spinit.Data.Services.Infrastructure;
using System;
using System.Collections.Generic;
using System.Data;
//using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpinIt.RightAPI.Controllers
{

    [Route("api/[controller]/[action]")]  //      api/order
    [ApiController]
    //[Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class OrderController: ControllerBase
    {   
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IPurchaseOrder _order;
        private readonly IOrderDetail _orderDetail;
        public OrderController(UserManager<ApplicationUser> user, IPurchaseOrder order,IOrderDetail orderDetail)
        {
            _userManager = user;
            _order = order;
            _orderDetail = orderDetail;
        }
        // Get All Orders
        [HttpGet(Name = "GetAllOrders")]
        public ActionResult<IEnumerable<string>> GetAllOrders()
        {
            var data = JsonConvert.SerializeObject(_order.GetAll().ToList(), Formatting.None,
                        new JsonSerializerSettings()
                        {
                            ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                        });
            return Ok(data);
        }

        [AllowAnonymous]        
        [HttpGet(Name = "GetAllOrdersWithDetails")]
        public async Task<IActionResult> GetAllOrdersWithDetails(string DepartmentId, string SemesterId)
        {
            if (ModelState.IsValid)
            {   
                SqlParameter[] param = {
                                            new SqlParameter("@isActive",DepartmentId)
                                       };
                string spName = "sp_GetAllOrdersWithDetails";
                DataTable dt = Utility.ExcuteProc(spName, param);

                if (dt.Rows.Count <= 0)

                {
                    return BadRequest(new RegistrationResponse()
                    {
                        Errors = new List<string>() {
                                "Record does not found!"
                            },
                        Success = false
                    });
                }

                return Ok(dt);
            }

            return BadRequest(new RegistrationResponse()
            {
                Errors = new List<string>() {
                        "Invalid payload"
                    },
                Success = false
            });

        }

        //Add Order
        [HttpPost(Name = "InsertOrder")]
        public ActionResult<IEnumerable<string>> InsertOrder(OrderModel orderModel)
        {
            PurchaseOrder order = new PurchaseOrder
            {
                OrderDate = orderModel.OrderDate,
                InvoiceNumber = orderModel.InvoiceNumber,
                UserID = orderModel.UserID,
                GrossTotal = orderModel.GrossTotal,
                OrderTotal = orderModel.OrderTotal,
                PaymentStatus = orderModel.PaymentStatus,
                status = orderModel.status,
                IsActive = orderModel.IsActive

            };
            order.OrderDetails = orderModel.OrderDetail.Select(detail=>new OrderDetail
            {
               ProductId=detail.ProductId,
                Quantity=detail.Quantity,
                UserId=detail.UserId,
                Remarks=detail.Remarks,
                Amount=detail.Amount,
                IsActive=detail.IsActive,
                Status=detail.Status,
                TransactionDate=detail.TransactionDate
            }).ToList();

            _order.Insert(order);
            _order.Save();
            return Ok("Order Successfully Added");
            
        }

        //Delete Order
        [HttpPost(Name = "DeleteOrder")]
        public ActionResult<IEnumerable<string>> DeleteOrder(int Id)
        {

            try
            {
                var DataList = _order.GetAll().Where(x => x.PurchaseOrderID == Id).ToList();
                foreach (var item in DataList)
                {
                    var orderdetail = _orderDetail.GetAll().Where(x => x.OrdersPurchaseOrderID == item.PurchaseOrderID).ToList();
                    foreach (var itemDetail in orderdetail)
                    {
                        _orderDetail.Delete(itemDetail.OrderDetailID);
                        _orderDetail.Save();
                    }
                    _order.Delete(item.PurchaseOrderID);
                    _order.Save();
                    return Ok("Order Succeessfully Deleted");
                }
                return Ok();
            }
            catch (Exception)
            {
                return Ok();
            }

        }

        //Update Order
        [HttpPost(Name = "UpdateOrder")]
        public ActionResult<IEnumerable<string>> UpdateOrder(OrderModel orderModel)
        {
            try
            {
                PurchaseOrder order = null;
                //update invoice
                if (orderModel.PurchaseOrderID > 0)
                {
                    order = _order.GetByID(orderModel.PurchaseOrderID);
                    
                    #region Update Order
                    //needs to update discount on backend
                    order.OrderDate = orderModel.OrderDate;
                    order.InvoiceNumber = orderModel.InvoiceNumber;
                    order.UserID = orderModel.UserID;
                    order.GrossTotal = orderModel.GrossTotal;
                    order.OrderTotal = orderModel.OrderTotal;
                    order.PaymentStatus = orderModel.PaymentStatus;
                    order.status = orderModel.status;
                    order.IsActive = orderModel.IsActive;

                    //invoice.Reference = model.Invoice.Reference;
                    var currentDetails = orderModel.OrderDetail.Select(x => x.ProductId).ToList();
                    
                    var existingList = _orderDetail.GetAll().Where(x => x.OrdersPurchaseOrderID == order.PurchaseOrderID && x.IsActive == true).ToList();
                    var Removed = existingList.Where(x => !currentDetails.Contains(x.ProductId));
                    foreach (var remove in Removed)
                    {
                        remove.IsActive = false;
                        _orderDetail.Update(remove);
                    }

                    var newDetails = orderModel.OrderDetail.Where(x => !existingList.Select(p => p.ProductId).Contains(x.ProductId));

                    foreach (var det in newDetails)
                    {
                        order.OrderDetails.Add(new OrderDetail
                        {
                            ProductId = det.ProductId,
                            Quantity = det.Quantity,
                            UserId = det.UserId,
                            Remarks = det.Remarks,
                            Amount = det.Amount,
                            IsActive = true,
                            Status = det.Status,
                            TransactionDate = det.TransactionDate
                        });
                    }
                    _order.Update(order);
                    _order.Save();
                    return Ok("Record Successfully Updated");
                    #endregion
                }
                return Ok("Record Could Not Updated");
            }
            catch (Exception)
            {
                return Ok();
            }
        }

    }
}

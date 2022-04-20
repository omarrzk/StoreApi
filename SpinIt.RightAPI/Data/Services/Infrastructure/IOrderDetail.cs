using Spinit.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace Spinit.Data.Services.Infrastructure
{
     public interface IOrderDetail
    {
        IEnumerable<OrderDetail> GetAll();

        //IEnumerable<OrderDetail> GetInvoiceDetails(Expression<Func<OrderDetail, bool>> where, bool noTracking = false);

        OrderDetail GetByID(int id);


        void Insert(OrderDetail OL);

        void Delete(int id);

        void Update(OrderDetail OL);

        void Save();

        int Count();
    }
}

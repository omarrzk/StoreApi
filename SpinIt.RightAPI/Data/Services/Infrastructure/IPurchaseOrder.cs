using Spinit.Data.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Spinit.Data.Services.Infrastructure
{
    public interface IPurchaseOrder
    {
        IEnumerable<PurchaseOrder> GetAll();

        PurchaseOrder GetByID(int id);

        void Insert(PurchaseOrder PO);

        void Delete(int id);

        void Update(PurchaseOrder PO);

        void Save();

        int Count();
    }
}

using Spinit.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Spinit.Data.Services.Infrastructure
{
    public interface IProductCategory
    {
        IEnumerable<ProductCategory> GetAll();

        ProductCategory GetByID(int id);

        void Insert(ProductCategory OL);

        void Delete(int id);

        void Update(ProductCategory OL);

        void Save();

        int Count();
    }
}

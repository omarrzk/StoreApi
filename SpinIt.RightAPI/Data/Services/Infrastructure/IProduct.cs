using Spinit.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Spinit.Data.Services.Infrastructure
{
    public interface IProduct
    {
        IEnumerable<Product> GetAll();

        Product GetByID(int id);

        void Insert(Product P);

        void Delete(int id);

        void Update(Product P);

        void Save();

        int Count();
    }
}

﻿using Spinit.Data.Helper;
using Spinit.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Spinit.Data.Services.Infrastructure
{
    public interface IUserService
    {
        ApplicationUser Authenticate(string username, string password);
        IEnumerable<ApplicationUser> GetAll();
        ApplicationUser GetById(int id);
        ApplicationUser Create(ApplicationUser user, string password);
        void Update(ApplicationUser user, string password = null);
        void Delete(int id);
    }

    public class UserService //: IUserService
    {
        private ApplicationDbContext _context;

        public UserService(ApplicationDbContext context)
        {
            _context = context;
        }

        //public ApplicationUser Authenticate(string username, string password)
        //{
        //    if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
        //        return null;

        //    var user = _context.User.SingleOrDefault(x => x.UserName == username);

        //    // check if username exists
        //    if (user == null)
        //        return null;

        //    // check if password is correct
        //    if (!VerifyPasswordHash(password, user.PasswordHash, user.PasswordSalt))
        //        return null;

        //    // authentication successful
        //    return user;
        //}

        public IEnumerable<ApplicationUser> GetAll()
        {
            return _context.User;
        }

        public ApplicationUser GetById(int id)
        {
            return _context.User.Find(id);
        }

        public ApplicationUser Create(ApplicationUser user, string password)
        {
            // validation
            if (string.IsNullOrWhiteSpace(password))
                throw new AppException("Password is required");

            if (_context.User.Any(x => x.UserName == user.UserName))
                throw new AppException("Username \"" + user.UserName + "\" is already taken");

            byte[] passwordHash, passwordSalt;
            CreatePasswordHash(password, out passwordHash, out passwordSalt);

            //user.PasswordHash = passwordHash;
            user.PasswordSalt = passwordSalt;

            _context.User.Add(user);
            _context.SaveChanges();

            return user;
        }

        public void Update(ApplicationUser userParam, string password = null)
        {
            var user = _context.User.Find(userParam.Id);

            if (user == null)
                throw new AppException("User not found");

            // update username if it has changed
            if (!string.IsNullOrWhiteSpace(userParam.UserName) && userParam.UserName != user.UserName)
            {
                // throw error if the new username is already taken
                if (_context.User.Any(x => x.UserName == userParam.UserName))
                    throw new AppException("Username " + userParam.UserName + " is already taken");

                user.UserName = userParam.UserName;
            }

            // update user properties if provided
            if (!string.IsNullOrWhiteSpace(userParam.FirstNames))
                user.FirstNames = userParam.FirstNames;

            if (!string.IsNullOrWhiteSpace(userParam.LastName))
                user.LastName = userParam.LastName;

            // update password if provided
            if (!string.IsNullOrWhiteSpace(password))
            {
                byte[] passwordHash, passwordSalt;
                CreatePasswordHash(password, out passwordHash, out passwordSalt);

                //user.PasswordHash = passwordHash;
                user.PasswordSalt = passwordSalt;
            }

            _context.User.Update(user);
            _context.SaveChanges();
        }

        public void Delete(int id)
        {
            var user = _context.User.Find(id);
            if (user != null)
            {
                _context.User.Remove(user);
                _context.SaveChanges();
            }
        }

        // private helper methods

        private static void CreatePasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            if (password == null) throw new ArgumentNullException("password");
            if (string.IsNullOrWhiteSpace(password)) throw new ArgumentException("Value cannot be empty or whitespace only string.", "password");

            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }
        }

        private static bool VerifyPasswordHash(string password, byte[] storedHash, byte[] storedSalt)
        {
            if (password == null) throw new ArgumentNullException("password");
            if (string.IsNullOrWhiteSpace(password)) throw new ArgumentException("Value cannot be empty or whitespace only string.", "password");
            if (storedHash.Length != 64) throw new ArgumentException("Invalid length of password hash (64 bytes expected).", "passwordHash");
            if (storedSalt.Length != 128) throw new ArgumentException("Invalid length of password salt (128 bytes expected).", "passwordHash");

            using (var hmac = new System.Security.Cryptography.HMACSHA512(storedSalt))
            {
                var computedHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                for (int i = 0; i < computedHash.Length; i++)
                {
                    if (computedHash[i] != storedHash[i]) return false;
                }
            }

            return true;
        }
    }
}

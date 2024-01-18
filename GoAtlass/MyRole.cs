//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.Security;

//namespace GoAtlass
//{
//    public class MyRole : RoleProvider
//    {
//        public override string ApplicationName { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

//        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
//        {
//            throw new NotImplementedException();
//        }

//        public override void CreateRole(string roleName)
//        {
//            throw new NotImplementedException();
//        }

//        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
//        {
//            throw new NotImplementedException();
//        }

//        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
//        {
//            throw new NotImplementedException();
//        }

//        public override string[] GetAllRoles()
//        {
//            throw new NotImplementedException();
//        }

//        public override string[] GetRolesForUser(string emailUs)
//        {
//            //throw new NotImplementedException();
//            string strcn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
//            string TypeUs = "DefaultPage";
//            using (SqlConnection con = new SqlConnection(strcn))
//            {
//                SqlCommand cmd = new SqlCommand();
//                cmd.Connection = con;
//                cmd.CommandText = "select TypeUs from utilisateur where emailUs=@emailUs ";
//                cmd.Parameters.AddWithValue("@emailUs", emailUs);



//                con.Open();
//                SqlDataReader dr = cmd.ExecuteReader();

//                if (dr.Read())
//                {
//                    TypeUs = dr["TypeUs"].ToString();

//                }
//            }
//            return new string[] { TypeUs };
//        }
//        public override string[] GetUsersInRole(string roleName)
//        {
//            throw new NotImplementedException();
//        }

//        public override bool IsUserInRole(string username, string roleName)
//        {
//            throw new NotImplementedException();
//        }

//        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
//        {
//            throw new NotImplementedException();
//        }

//        public override bool RoleExists(string roleName)
//        {
//            throw new NotImplementedException();
//        }
//    }
//}
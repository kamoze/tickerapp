<html>

   <head>
      <title>Form Example</title>
   <script type="text/javascript"></script></head>

   <body>
      <center>
      <form  method = "post">
         <input type = "hidden" name = "_token" value = "<?php echo csrf_token() ?>">
      
         <table>
            <tr>
               <td>Name</td>
               <td><input type = "text" name = "name" /></td>
            </tr>
            <tr>
               <td>Email</td>
               <td><input type = "Email" name = "Email" /></td>
            </tr>
            <tr>
               <td>Username</td>
               <td><input type = "text" name = "username" /></td>
            </tr>
            <tr>
               <td>Password</td>
               <td><input type = "text" name = "password" /></td>
            </tr>
            <tr>
               <td> Confirm Password</td>
               <td><input type = "text" name = "Confirm password" /></td>
            </tr>
            <tr>
               <td>Adreess</td>
               <td><input type = "text" name = "Adreess" /></td>
            </tr>
            <tr>
               <td colspan = "2" align = "center">
                  <input type = "submit" value = "Register" />
               </td>
            </tr>
         </table>
      
      </form>
   </center>
   </body>
</html>
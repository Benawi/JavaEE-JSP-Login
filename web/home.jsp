
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home</title>
    </head>
    <body>

        <form action="servlet/Register" method="post">

            <fieldset>
                <p id="msg">
                    <% String msg = (String) request.getAttribute("msg");%>
                    <%= msg != null ? msg : ""%><br>
                </p>
                <legend>Register </legend>

                <table>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="userName"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="Password" name="userPass"></td>

                    </tr>
                </table>
            </fieldset>

            <fieldset>
                <legend>Sex</legend>

                <table>
                    <tr>
                        <td>Sex

                            <input type="radio" name="Sex" value="M" checked="checked">Male
                            <input type="radio" name="Sex" value="F">Female</td>
                    </tr>
                </table>
            </fieldset>
            <fieldset>
                <legend>ADDRESS</legend>

                <table>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="userEmail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Invalid email address"></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td>
                            <select name="userCountry">
                                <option>Ethiopia</option>
                                <option>Kenya</option>
                                <option>other</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br>
            <input type="submit" value="Submit"> <input type="reset"
                                                        value="Reset">
        </form>
    </body>
</html>
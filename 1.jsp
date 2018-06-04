package com.gof.test.bean;  
  
import java.util.*;  
import java.io.*;  
  
public class ShoppingCart implements Serializable {  
    Map<String, Integer> items = new HashMap<String, Integer>();  
    int numberOfItems = 0;  
      
    public synchronized void add(String itemNames){  
        if (items.containsKey(itemNames)){  
            Integer itemCount = (Integer)items.get(itemNames);  
            items.put(itemNames, new Integer(itemCount + 1));  
        }else{  
            items.put(itemNames, new Integer(1));  
        }  
          
        numberOfItems++;  
    }  
      
    public synchronized int getNumberOfItems(){  
        return numberOfItems;  
    }  
      
    public synchronized Map<String, Integer> getItems(){  
        return items;  
    }  
}

package com.gof.test.servlet;  
  
import java.io.PrintWriter;  
import java.util.*;  
  
import java.io.IOException;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import com.gof.test.bean.ShoppingCart;  
  
public class ShoppingServlet extends HttpServlet {  
      
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException{  
        String[] itemNames={"糖果", "收音机", "练习簿"};  
          
        // get the session object  
        HttpSession session = req.getSession(true);  
        // get the ShoppingCart object from the session  
        ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");  
        // if these is cart object, then create it and save it into session  
        if (cart == null){  
            cart = new ShoppingCart();  
            session.setAttribute("cart", cart);  
        }  
          
        resp.setContentType("text/html;charset=utf-8");  
        PrintWriter out = resp.getWriter();  
          
        String[] itemsSelected;  
        String itemIndex;  
        String itemName;  
          
        itemsSelected = req.getParameterValues("item");  
        if (itemsSelected != null){  
            for (int i = 0; i < itemsSelected.length; i++){  
                itemIndex = itemsSelected[i];  
                itemName = itemNames[Integer.parseInt(itemIndex)];  
                // add into the ShoppingCart  
                cart.add(itemName);  
            }  
        }  
          
        // print the info in ShoppingCart  
        out.println("<html>");  
        out.println("<head>");  
        out.println("<title>The content in Shopping Cart</title>");  
        out.println("</head>");  
        out.println("<body>");  
          
        out.println("Session ID: " + session.getId() + "<br/>");  
        out.println("<center><h1>You owns: " + cart.getNumberOfItems() + "items: </h1></center>");  
        Map<String,Integer> items = cart.getItems();  
        Iterator<Map.Entry<String, Integer>> it = items.entrySet().iterator();  
        while (it.hasNext()){  
            Map.Entry entry = it.next();  
              
            out.println(entry.getKey() + ": " + entry.getValue() + "<br/>");  
        }  
        out.println("<br><a href='shopping.html'> Go on shopping!</a></br>");  
          
          
        out.println("</body>");  
        out.println("</html>");  
    }  
      
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException{  
        doGet(req, resp);  
    }  
} 

<!-- Shopping Cart -->  
    <servlet>  
     <servlet-name>shopping</servlet-name>  
     <servlet-class>com.gof.test.servlet.ShoppingServlet</servlet-class>  
   </servlet>  
   <servlet-mapping>  
      <servlet-name>shopping</servlet-name>  
      <url-pattern>/shopping</url-pattern>  
   </servlet-mapping>

   <!DOCTYPE html>  
<html>  
<head>  
<meta charset="utf-8">  
<title>Shopping</title>  
</head>  
<body>  
  
   <h1>Shopping Mall</h1>  
      
    <form action="shopping" method="post">  
        Select items:  
        <p>  
            <input type="checkbox" name="item" value="0"/>  
            第一种：糖果  
        </p>  
        <p>  
            <input type="checkbox" name="item" value="1"/>  
            第一种：收音机  
        </p>  
        <p>  
            <input type="checkbox" name="item" value="2"/>  
            第一种：练习簿  
        </p>  
        <hr/>  
        <input type="submit" name="submit" value="加入购物车"/>  
    </form>  
      
      
</body>  
</html> 


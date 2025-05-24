package com.add1;

// CartServlet.java
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        try (Connection connection = DBUtil.getConnection()) {
            if ("add".equals(action)) {
                addItemToCart(connection, productName, productPrice, quantity);
            } else if ("remove".equals(action)) {
                removeItemFromCart(connection, productName);
            } else if ("clear".equals(action)) {
                clearCart(connection);
            }
            response.sendRedirect("cart.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void addItemToCart(Connection connection, String productName, double productPrice, int quantity) throws SQLException {
        String query = "SELECT * FROM cart_db WHERE product_name = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, productName);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int newQuantity = resultSet.getInt("quantity") + quantity;
                query = "UPDATE cart_db SET quantity = ? WHERE product_name = ?";
                try (PreparedStatement updateStatement = connection.prepareStatement(query)) {
                    updateStatement.setInt(1, newQuantity);
                    updateStatement.setString(2, productName);
                    updateStatement.executeUpdate();
                }
            } else {
                query = "INSERT INTO cart_db (product_name, product_price, quantity) VALUES (?, ?, ?)";
                try (PreparedStatement insertStatement = connection.prepareStatement(query)) {
                    insertStatement.setString(1, productName);
                    insertStatement.setDouble(2, productPrice);
                    insertStatement.setInt(3, quantity);
                    insertStatement.executeUpdate();
                }
            }
        }
    }

    private void removeItemFromCart(Connection connection, String productName) throws SQLException {
        String query = "DELETE FROM cart_db WHERE product_name = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, productName);
            statement.executeUpdate();
        }
    }

    private void clearCart(Connection connection) throws SQLException {
        String query = "DELETE FROM cart_db";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.executeUpdate();
        }
    }
}

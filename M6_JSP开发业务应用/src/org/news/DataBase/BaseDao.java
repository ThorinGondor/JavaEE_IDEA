package org.news.DataBase;

import java.sql.*;

public class BaseDao {
    private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/TopicDB?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    private static String user = "root";
    private static String pwd = "8686886wscq";
    
    Connection conn = null;
    
    public Connection getConnection()
    {
    	if(conn==null)
    	{
    		try{
    			Class.forName(driver);
    			conn = DriverManager.getConnection(url,user,pwd);
    			System.out.println("连接数据库成功！");
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	return conn;
    }
    
    public void closeAll(Connection conn, Statement stmt,ResultSet RS)
    {
    	if(RS!=null){
    		try{
    			RS.close();
    		}catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	if(stmt!=null){
    		try {
				stmt.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
    	}
    	if(conn!=null){
    		try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	}
    }
    
    public void executeAdd(String sql,Object... param){
    	PreparedStatement PS = null;
    	conn = getConnection();
    	System.out.println("add连接成功！");
    	try {
			PS = conn.prepareStatement(sql);
			if(param!=null){
				for(int i = 0;i<param.length;i++){
					PS.setObject(i+1, param[i]);
				}
			}
			PS.executeUpdate();
			System.out.println("添加数据库成功！");
		} catch (SQLException e) {
			System.out.println("添加数据库失败！");
			e.printStackTrace();
		}
    }
    
    public int executeUpdate(String preparedSql, Object... param){
    	PreparedStatement ps = null;
    	int num = 0;
    	conn = getConnection();
    	System.out.println("update连接成功！");
    	try {
			ps = conn.prepareStatement(preparedSql);
			if(param!=null){
				for(int i = 0;i<param.length;i++){
					ps.setObject(i+1, param[i]);
				}
			}
			num = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll(conn,ps,null);
		}
    	return num;
    }
    
    public ResultSet executeQuery(String sql,Object...params) throws SQLException
    {
    	conn = this.getConnection();
        System.out.println("query连接成功！");
        ResultSet RS = null;
        PreparedStatement PS  = null;
        PS = conn.prepareStatement(sql);
        for(int i = 0;i<params.length;i++){
        	PS.setObject(i+1, params[i]);
        }
        RS = PS.executeQuery();
    	return RS;
    }
    
    public int executeCount(String sql) throws SQLException{
    	int num = -1;
    	conn = this.getConnection();
    	System.out.println("executeCount连接成功！");
    	Statement stmt = conn.createStatement();
    	ResultSet RS = stmt.executeQuery(sql);
    	RS.next();
    	num = RS.getInt(1);
    	return num;
    }
}

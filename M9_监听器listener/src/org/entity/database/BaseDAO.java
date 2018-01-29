package org.entity.database;

import java.sql.*;

public class BaseDAO {
    private Connection conn;
    public BaseDAO(Connection conn){
    	this.conn = conn;
    }
    /* * 对 数据库 增删改 操作 * */
    public int executeUpdate(String sql, Object...params) throws SQLException{
    	int result = -1;
    	PreparedStatement PS = conn.prepareStatement(sql);
    	for(int i = 0;i<params.length;i++){
    		PS.setObject(i+1, params[i]);
    	}
    	result = PS.executeUpdate();
    	DataBaseUtil.closeAll(null, PS, null);
    	return result;
    }

	/* * 对 数据库 访问、获取 操作 * */
    public ResultSet executeQuery(String sql, Object...params) throws SQLException{
    	ResultSet RS = null;
    	PreparedStatement PS  = null;
        PS = conn.prepareStatement(sql);
        for(int i = 0;i<params.length;i++){
        	PS.setObject(i+1, params[i]);
        }
        RS = PS.executeQuery();
    	return RS;
    }
}

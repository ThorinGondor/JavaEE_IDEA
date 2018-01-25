package org.topics.util.DatabaseUtil;

import java.sql.*;

public class BaseDAO {
    private Connection conn;
    public BaseDAO(Connection conn){
    	this.conn = conn;
    }
    /**增删改
     * @throws SQLException **/
    public int executeUpdate(String sql, Object...params) throws SQLException{
    	int result = 0;
    	PreparedStatement PS = null;
    	PS = conn.prepareStatement(sql);
    	for(int i = 0;i<params.length;i++){
    		PS.setObject(i+1, params[i]);
    	}
    	result = PS.executeUpdate();
    	DataBaseUtil.closeAll(null, PS, null);
    	return result;
    }
    /**查询操作
     * @throws SQLException **/
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

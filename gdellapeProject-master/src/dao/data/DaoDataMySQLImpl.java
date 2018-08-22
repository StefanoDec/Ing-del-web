package dao.data;
import dao.exception.DaoException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;


public class DaoDataMySQLImpl {
	
	private DataSource datasource;
	protected Connection connection;

	public void DaoDataMySQLImpl() throws DaoException
	{
		this.datasource= null;
		this.connection= null;

	}

	public void init() throws DaoException
	{
		try {

			//InitialContext ctx = new InitialContext();
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:comp/env");
			this.datasource = (DataSource) envContext.lookup("jdbc/webdb2");
			//conn = ds.getConnection();
			//this.datasource = (DataSource) ctx.lookup("java:comp/env/jdbc/webdb2");

			this.connection = this.datasource.getConnection();


		} catch (SQLException e) {
			throw new DaoException("Error: db connection failed", e);
		}catch (Exception ex)
		{
			throw new DaoException("Error:InitialContext",ex);
		}

	}

	

		public void destroy() throws DaoException {
		try {
            if (connection != null) {
                connection.close();
                connection = null;
            }
        } catch (SQLException e) {
            throw new DaoException("Error: shutdown failed connection", e);
        }
		
	}
	

	public void close() throws Exception {
		destroy();
	}

	
}
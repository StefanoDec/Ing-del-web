package dao.data;
import dao.exception.DaoException;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;


public class DaoDataMySQLImpl {
	
	private DataSource datasource;
	protected Connection connection;

	public void DaoDataMySQLImpl() throws DaoException
	{

	}

	public void init() throws DaoException
	{
		try {

//			InitialContext ctx = new InitialContext();
//
//			this.datasource = (DataSource) ctx.lookup("java:comp/env/jdbc/webdb2");

			connection = this.datasource.getConnection();

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
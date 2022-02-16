package dao;

import java.sql.SQLException;

import model.OnibusDescricao;
import model.ViagemDescricao;

public interface IViagemDao {

	ViagemDescricao getViagemDescricao(int codigo) throws ClassNotFoundException, SQLException;
	OnibusDescricao getOnibusDescricao(int codigo) throws SQLException, ClassNotFoundException;
}

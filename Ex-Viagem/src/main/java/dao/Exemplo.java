package dao;

import java.sql.SQLException;

import model.OnibusDescricao;
import persistence.GenericDao;

public class Exemplo {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		ViagemDao dao = new ViagemDao(new GenericDao());

		System.out.println(dao.getViagemDescricao(101));
		System.out.println(dao.getOnibusDescricao(101));
	}

}

package dao;

import java.io.Console;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.OnibusDescricao;
import model.ViagemDescricao;
import persistence.GenericDao;

public class ViagemDao implements IViagemDao {

	private GenericDao gDao;

	public ViagemDao(GenericDao gDao) {
		this.gDao = gDao;
	}

	@Override
	public ViagemDescricao getViagemDescricao(int codigo) throws ClassNotFoundException, SQLException {
		Connection connection = gDao.getConnection();
		String sql = "SELECT * FROM v_descricao_viagem WHERE codigo = ?";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, codigo);
		ps.execute();
		ResultSet rs = ps.getResultSet();
		ViagemDescricao vd = new ViagemDescricao();

		if (rs.next()) {
			vd.setCodigo(rs.getInt("codigo"));
			vd.setPlaca(rs.getString("placa"));
			vd.setHoraChegada(rs.getString("hora_chegada"));
			vd.setHoraSaida(rs.getString("hora_saida"));
			vd.setPartida(rs.getString("partida"));
			vd.setDestino(rs.getString("destino"));
		}
		return vd;
	}

	@Override
	public OnibusDescricao getOnibusDescricao(int codigo) throws SQLException, ClassNotFoundException {
		Connection connection = gDao.getConnection();
		String sql = "SELECT * FROM v_descricao_onibus WHERE codigo = ?";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, codigo);
		ps.execute();
		ResultSet rs = ps.getResultSet();
		OnibusDescricao od = new OnibusDescricao() ;

		if (rs.next()) {
			od.setCodigo(rs.getInt("codigo"));
			od.setPlaca(rs.getString("placa"));
			od.setAno(rs.getInt("ano"));
			od.setMarca(rs.getString("marca"));
			od.setNome(rs.getString("nome"));
			od.setDescricao(rs.getString("descricao"));
			
		}
		return od;
	}

}

package dao;

import model.OnibusDescricao;
import model.ViagemDescricao;

public interface IViagemDao {

	ViagemDescricao getViagemDescricao(int codigo);
	OnibusDescricao getOnibusDescricao(int codigo);
}

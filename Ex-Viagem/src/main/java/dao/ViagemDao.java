package dao;

import model.OnibusDescricao;
import model.ViagemDescricao;
import persistence.GenericDao;

public class ViagemDao implements IViagemDao{
	
	
	private GenericDao gDao;
	
	public ViagemDao(GenericDao gDao) {
		this.gDao = gDao;
	}

	@Override
	public ViagemDescricao getViagemDescricao(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OnibusDescricao getOnibusDescricao(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

}

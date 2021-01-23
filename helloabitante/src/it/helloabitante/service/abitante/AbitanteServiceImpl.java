package it.helloabitante.service.abitante;

import java.util.List;

import it.helloabitante.dao.abitante.AbitanteDAO;
import it.helloabitante.model.Abitante;

public class AbitanteServiceImpl implements AbitanteService {

	private AbitanteDAO abitanteDAO;

	public void setAbitanteDAO(AbitanteDAO abitanteDAO) {
		this.abitanteDAO = abitanteDAO;
	}
	@Override
	public List<Abitante> list() {
		return abitanteDAO.list();
	}

	@Override
	public List<Abitante> cercaPerNomeECognome(String nome, String cognome) {
		// abitanteDAO.setConnection(MyConnection.getConnection());
		return abitanteDAO.findByNomeAndCognome(nome, cognome);
	}

	@Override
	public Abitante get(Long idInput) {
		try {

			return abitanteDAO.get(idInput);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} 
		
	}

	@Override
	public int update(Abitante abitanteInput) {
		try {

			return abitanteDAO.update(abitanteInput);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	public int insert(Abitante abitanteInput) {
		try {

			return abitanteDAO.insert(abitanteInput);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	public int delete(Abitante abitanteInput) {
		try {

			return abitanteDAO.delete(abitanteInput);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}

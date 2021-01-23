package it.helloabitante.service.abitante;

import java.util.List;

import it.helloabitante.dao.abitante.AbitanteDAO;
import it.helloabitante.model.Abitante;

public interface AbitanteService {
	public void setAbitanteDAO(AbitanteDAO abitanteDAO);
	
	public List<Abitante> list();

	public List<Abitante> cercaPerNomeECognome(String nome, String cognome);
	
	public Abitante get(Long idInput);
	
	public int update(Abitante abitanteInput);
	
	public int insert(Abitante abitanteInput);
	
	public int delete(Abitante abitanteInput);
}

package it.helloabitante.dao;

import java.sql.Connection;
import java.util.List;

public interface IBaseDAO<T> {
	
	public List<T> list();

	public T get(Long id);

	public int update(T input);

	public int insert(T input);

	public int delete(T input);

	// questo mi serve per la injection della connection
	public void setConnection(Connection connection);

}

package atroshonok.dao;

import java.util.List;

import atroshonok.dao.exception.ErrorAddingDAOException;
import atroshonok.dao.exception.ErrorUpdatingDAOException;



public interface IEntityDAO<T> {
	
	T getById(long id);

	List<T> getAll();

	void addNew(T entity) throws ErrorAddingDAOException;

	void update(T entity) throws ErrorUpdatingDAOException;

	void deleteById(long id);

	void delete(T entity);

}

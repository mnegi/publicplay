package models.dao;

import models.Reputation;
import play.utils.dao.DAOListener;

public class ReputationDAOListener implements DAOListener<Long, Reputation> {

	private ReputationDAO reputationDAO;

	public ReputationDAOListener(ReputationDAO reputationDAO) {
		this.reputationDAO = reputationDAO;
	}

	@Override
	public void afterCreate(Long key, Reputation rep) {
		if (rep != null) {
			String ownerKey = rep.getOwnerKey();
			String reputationValueKey = rep.getReputationValueKey();
			reputationDAO.cleanUserCache(ownerKey);
			reputationDAO.cleanReputationValueCache(reputationValueKey);
		}
	}

	@Override
	public void afterRemove(Long key, Reputation rep) {
		if (rep != null) {
			String ownerKey = rep.getOwnerKey();
			String reputationValueKey = rep.getReputationValueKey();
			reputationDAO.cleanUserCache(ownerKey);
			reputationDAO.cleanReputationValueCache(reputationValueKey);
		}
	}

	@Override
	public void afterUpdate(Reputation rep) {
		if (rep != null) {
			String ownerKey = rep.getOwnerKey();
			String reputationValueKey = rep.getReputationValueKey();
			reputationDAO.cleanUserCache(ownerKey);
			reputationDAO.cleanReputationValueCache(reputationValueKey);
		}
	}

	@Override
	public void beforeCreate(Reputation rep) {
	}

	@Override
	public void beforeRemove(Long key) {
	}

	@Override
	public void beforeUpdate(Reputation rep) {
	}

}

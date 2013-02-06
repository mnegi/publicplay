package models.dao;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.Callable;

import models.Post;
import models.PostRating;
import models.PostRatingPK;
import models.User;
import play.db.ebean.Model.Finder;
import play.utils.cache.InterimCache;
import play.utils.dao.CachedDAO;

public class PostRatingDAO extends CachedDAO<PostRatingPK, PostRating> {

	public static InterimCache<Set<Long>> votedPostKeyCache = new InterimCache<Set<Long>>("VotedPostKeyCache", 600);//10 mins;

	public PostRatingDAO() {
		super(PostRatingPK.class, PostRating.class);
	}

	public Finder<PostRatingPK, PostRating> find = new Finder<PostRatingPK, PostRating>(
			PostRatingPK.class, PostRating.class);

	public PostRating get(User user, Post post) {
		PostRating rating = find.where().eq("user_key", user.getKey())
				.eq("post_key", post.getKey()).findUnique();
		return rating;
	}

	public List<PostRating> get(User user) {
		List<PostRating> ratings = find.where().eq("user_key", user.getKey())
				.findList();
		return ratings;
	}

	public PostRating get(String userKey, Long postKey) {
		PostRatingPK key = new PostRatingPK(userKey, postKey);
		return find.byId(key);
	}

	public Set<Long> getUpVotedPostKeys(final User u) {
		String key = u.getKey();
		final Set<Long> set = votedPostKeyCache.get(".+" + key, new Callable<Set<Long>>() {
			public Set<Long> call() throws Exception {
				Set<Long> s = new TreeSet<Long>();
				final List<PostRating> prList = get(u);
				for (PostRating pr : prList) {
					if (pr.getValue() > 0) s.add(pr.getKey().postKey);
				}
				return s;
			}
		});
		return set;
	}
	
	public Set<Long> getDownVotedPostKeys(final User u) {
		String key = u.getKey();
		final Set<Long> set = votedPostKeyCache.get(".-" + key, new Callable<Set<Long>>() {
			public Set<Long> call() throws Exception {
				Set<Long> s = new TreeSet<Long>();
				final List<PostRating> prList = get(u);
				for (PostRating pr : prList) {
					if (pr.getValue() < 0) s.add(pr.getKey().postKey);
				}
				return s;
			}
		});
		return set;
	}
	
	public void resetVotedPostKeyCache(User u) {
		String key = u.getKey();
		votedPostKeyCache.set(".+" + key, null);
		votedPostKeyCache.set(".-" + key, null);
	}
	
}
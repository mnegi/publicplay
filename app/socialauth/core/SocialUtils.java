package socialauth.core;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import play.mvc.Http.Context;
import play.mvc.Http.Request;
import play.mvc.Http.Session;
import plugins.SocialUserPlugin;
import controllers.crud.SocialController;

public class SocialUtils {

	public static SocialUser currentUser(Context ctx) {
		final Session session = ctx.session();
		if (session != null) {
			final String userKey = session.get(SocialController.USER_KEY);
			if (!emptyOrNull(userKey)) {
				final SocialUserPlugin userService = SocialUserPlugin
						.getInstance();
				final SocialUser user = userService.find(userKey);
				return user;
			}
		}
		return null;
	}

	public static String getUserKeyFromSession(Context ctx) {
		final Session session = ctx.session();
		if (session != null) {
			final String userKey = session.get(SocialController.USER_KEY);
			if (!emptyOrNull(userKey))
				return userKey;
		}
		return null;
	}

	public static boolean emptyOrNull(String string) {
		return string == null || string.trim().equals("") || "null".equals(string);
	}

	public static Map<String, String> parameters(Request request) {
		Map<String, String> params = new HashMap<String, String>();
		Map<String, String[]> queryString = request.queryString();
		Set<String> keySet = queryString.keySet();
		for (String key : keySet) {
			String[] strings = queryString.get(key);
			for (String value : strings) {
				if (value != null)
					params.put(key, value);
			}
		}
		return params;
	}


}

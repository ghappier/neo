package com.lizq.neo.consumer.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.lizq.neo.commons.json.JsonResult;
import com.lizq.neo.commons.model.User;

@Service
public class UserService {

	@Autowired
	private RestTemplate template;
	
	@SuppressWarnings("unchecked")
	public JsonResult<List<User>> list() {
		return template.getForObject("http://user-service/", JsonResult.class);
	}
	
	@SuppressWarnings("unchecked")
	public JsonResult<User> get(int id) {
		return template.getForObject("http://user-service/{id}", JsonResult.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public JsonResult<User> add(User user) {
		return template.postForObject("http://user-service/", user, JsonResult.class);
	}
	
	public JsonResult<User> modify(User user) {
		try {
			template.put("http://user-service/", user, JsonResult.class);
		} catch (RestClientException e) {
			return new JsonResult<User>().fail().msg(e.getLocalizedMessage()).data(user);
		}
		return new JsonResult<User>().data(user);
	}
	
	public JsonResult<User> delete(int id) {
		try {
			template.delete("http://user-service/{id}", id);
		} catch (RestClientException e) {
			return new JsonResult<User>().fail().msg(e.getLocalizedMessage());
		}
		return new JsonResult<User>();
	}
}

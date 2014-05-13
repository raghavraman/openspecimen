
package com.krishagni.catissueplus.core.administrative.events;

import com.krishagni.catissueplus.core.common.events.EventStatus;
import com.krishagni.catissueplus.core.common.events.ResponseEvent;

public class PasswordForgottenEvent extends ResponseEvent {
	
	private static final String SUCCESS = "succcess";
	private UserDetails userDetails;

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public static PasswordForgottenEvent ok() {
		PasswordForgottenEvent event = new PasswordForgottenEvent();
		event.setStatus(EventStatus.OK);
		event.setMessage(SUCCESS);
		return event;
	}

	public static PasswordForgottenEvent invalidRequest(String message) {
		PasswordForgottenEvent resp = new PasswordForgottenEvent();
		resp.setStatus(EventStatus.BAD_REQUEST);
		resp.setMessage(message);
		return resp;
	}

	public static PasswordForgottenEvent serverError(Throwable... t) {
		Throwable t1 = t != null && t.length > 0 ? t[0] : null;
		PasswordForgottenEvent resp = new PasswordForgottenEvent();
		resp.setStatus(EventStatus.INTERNAL_SERVER_ERROR);
		resp.setException(t1);
		resp.setMessage(t1 != null ? t1.getMessage() : null);
		return resp;
	}

	public static PasswordForgottenEvent notFound() {
		PasswordForgottenEvent resp = new PasswordForgottenEvent();
		resp.setStatus(EventStatus.NOT_FOUND);
		return resp;
	}

}

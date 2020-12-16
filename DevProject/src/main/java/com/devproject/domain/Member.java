package com.devproject.domain;

import lombok.Builder;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@ToString
@Data
//exclude 파라미터로 지정된 userName은 필드값으로 나오지 않는다.
public class Member {

	private String userId;
	private String password;
	private String userName;
	

}

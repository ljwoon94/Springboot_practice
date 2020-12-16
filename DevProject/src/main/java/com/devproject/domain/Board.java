package com.devproject.domain;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
//인자가 없는 기본 생성자를 생성한다.
@RequiredArgsConstructor
//NonNull이 적용된 필드값이나 final로 선언된 필드값만 인자로 받는 생성자를 생성한다.
@Getter
@Setter
@EqualsAndHashCode(of="boardNO")
//자바의 equals() 메서드와 hashCode() 메서드를 생성
@ToString
@Data
//@ToString, @EqualsAndHashCode, @RequiredArgsConstructor ,@Getter, @Setter기능을 다 합친것이다.
//NoArgsConstructor를 적용하지 않아도 기본적으로 인자가 없는 생성자를 제공한다.
//생성자를 직접 정의하지 않아도 기본적으로 인자가 없는 생성자를 제공한다.
public class Board {
	@NonNull
	//NonNull이 적용된 필드값을 인바로 받는 생성자를 생성한다. 
	private int boardNo;
	
	private String title;
	private String content;
	private String writer;
	private Date regDate;
}

-- user_mybatis_study localhost, % 계정 추가
drop user if exists 'user_mybatis_study'@'localhost';

grant all privileges
	on mybatis_study.*
	to 'user_mybatis_study'@'localhost' identified by 'rootroot';

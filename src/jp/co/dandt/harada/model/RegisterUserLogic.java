/*****************************************************************************
 * 
 * UserテーブルDBに接続するまでのロジッククラス
 * 
 * 
 *****************************************************************************/

package jp.co.dandt.harada.model;

import java.sql.SQLException;

import jp.co.dandt.harada.dao.M_UserDAO;

public class RegisterUserLogic {

	// 登録できた状態か取得するメソッド
	public boolean isRegisterUser (User registerUser) {

		M_UserDAO dao = new M_UserDAO();
		return dao.canRegisterUser(registerUser);
	}
	
	// ログインIDが確認できた状態か取得するメソッド
	public boolean isSameLoginId(String str_mail) throws ClassNotFoundException,SQLException {
		
		M_UserDAO dao = new M_UserDAO();
		return dao.isSameLoginId(str_mail);
		
	}
	
	// ユーザIDとパスワードがあるか確認し、Userテーブル情報を取得するメソッド
	public User requestUserData (RequestUser reguest_user) throws ClassNotFoundException, SQLException {

		M_UserDAO dao = new M_UserDAO();
		return dao.getUserData(reguest_user);
	}
	
}

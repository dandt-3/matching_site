/*****************************************************************************
 * 
 * 実際にDBのM_Userテーブルに接続を行うクラス
 * テーブル名:M_UserDAO
 * 
 *****************************************************************************/

package jp.co.dandt.harada.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jp.co.dandt.harada.model.RequestUser;
import jp.co.dandt.harada.model.User;

public class M_UserDAO {

	// DBに接続するために必要なドライバ等の設定
	private final String DRIVER_NAME = "com.mysql.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost/matching_site";
	private final String DB_USER = "root";
	private final String DB_PASS = "2929";

	// 会員登録処理
	// 登録できればture、できなければralseを返す
	public boolean canRegisterUser(User registerUser) {
		// Connection DBMSへの接続や切断を行うクラス
		Connection conn = null;
		try {	
			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS);

			// ※自動連番(USER_ID)は指定しなくてよい
			String str_sql = "INSERT INTO M_USER(LOGIN_ID,PASS,NAME1,NAME2,KANA1,KANA2,B_YEAR,B_MONTH,B_DAY,SEX,POST_CD,ADDRESS1,ADDRESS2,ADDRESS3,ADDRESS4,TEL,MAILSEND_FLG,ENTRY_YMD,MODIFIED_YMD,DEL_FLG) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";			

			PreparedStatement pStmt = conn.prepareStatement(str_sql);
			pStmt.setString(1, registerUser.getLogin_id());
			pStmt.setString(2, registerUser.getPass());
			pStmt.setString(3, registerUser.getName1());
			pStmt.setString(4, registerUser.getName2());
			pStmt.setString(5, registerUser.getKana1());
			pStmt.setString(6, registerUser.getKana2());
			pStmt.setInt(7, Integer.parseInt(registerUser.getB_year()));
			pStmt.setInt(8, Integer.parseInt(registerUser.getB_month()));
			pStmt.setInt(9, Integer.parseInt(registerUser.getB_day()));
			pStmt.setInt(10, Integer.parseInt(registerUser.getSex()));
			pStmt.setInt(11, Integer.parseInt(registerUser.getPost_cd()));
			pStmt.setString(12, registerUser.getAddress1());
			pStmt.setString(13, registerUser.getAddress2());
			pStmt.setString(14, registerUser.getAddress3());
			pStmt.setString(15, registerUser.getAddress4());
			pStmt.setString(16, registerUser.getTel());
			pStmt.setInt(17, Integer.parseInt(registerUser.getMailsend_flg()));
			pStmt.setString(18, registerUser.getEntry_ymd());
			pStmt.setString(19, registerUser.getModified_ymd());
			pStmt.setInt(20, registerUser.getDel_flg());

			// 実行
			int int_result = pStmt.executeUpdate();

			// 追加できなければ
			if (int_result != 1) {
				return false;
			}

		} catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return false;

			// DB切断
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return true;
	}

	// 同一ログインID(メールアドレス)をチェックするメソッド
	// 同じメールアドレスがある場合はtrue、なければfalse
	public boolean isSameLoginId(String str_mail) throws ClassNotFoundException,SQLException {

		Connection conn = null;

		try {	
			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS);

			String sql = "SELECT LOGIN_ID FROM M_USER WHERE LOGIN_ID=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, str_mail);

			ResultSet rs = pStmt.executeQuery();

			// 取得できれば
			if (rs.next()) {
				return true;
			} 

			// 必ずDBを切断
		} finally { 
			if (conn != null) {
				conn.close();
			}
		}
		return false;		
	}

	// リクエストされたユーザIDとパスワードを用いてレコードを検索し、ユーザ情報を取得する
	public User getUserData(RequestUser request_user) throws ClassNotFoundException,SQLException {

		// User変数にnullを入れ初期化。ローカル変数は初期化必要
		User user_data = null;
		Connection conn = null;

		try {

			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS);

			// SELECT文(検索)を送信(FROM テーブル名 WHERE 条件式)
			String sql = "SELECT * FROM M_USER WHERE LOGIN_ID=? AND PASS=? AND DEL_FLG=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setString(1, request_user.getLogin_id());
			pStmt.setString(2, request_user.getPass());
			pStmt.setString(3, "0"); // 削除フラグがオフのデータ

			// 結果を取得
			ResultSet rs = pStmt.executeQuery();

			// 取得した結果、一致したユーザが存在した場合 //
			if (rs.next()) { // 次の要素へ
				// 検索結果からデータを取得
				String str_login_id = rs.getString("LOGIN_ID");
				String str_pass = rs.getString("PASS");
				String str_name1 = rs.getString("NAME1");
				String str_name2 = rs.getString("NAME2");
				String str_kana1 = rs.getString("KANA1");
				String str_kana2 = rs.getString("KANA2");
				String str_b_year = rs.getString("B_YEAR");
				String str_b_month = rs.getString("B_MONTH");
				String str_b_day = rs.getString("B_DAY");
				String str_sex = rs.getString("SEX");
				String str_post_cd = rs.getString("POST_CD");
				String str_address1 = rs.getString("ADDRESS1");
				String str_address2 = rs.getString("ADDRESS2");
				String str_address3 = rs.getString("ADDRESS3");
				String str_address4 = rs.getString("ADDRESS4");
				String str_tel = rs.getString("TEL");
				String str_mailsend_flg = rs.getString("MAILSEND_FLG");
				String str_entry_ymd = rs.getString("ENTRY_YMD");
				String str_modified_ymd = rs.getString("MODIFIED_YMD");

				// 一致したユーザのデータを格納
				// ここでstaffがnullじゃなくなり、returnに飛ぶ。
				user_data = new User(str_login_id,str_pass,"",str_name1,str_name2,str_kana1,str_kana2,str_b_year,str_b_month,str_b_day,str_sex,str_post_cd,str_address1,str_address2,str_address3,str_address4,str_tel,str_mailsend_flg,str_entry_ymd,str_modified_ymd,0);
			}
			// 必ずDBを切断
		} finally { 
			if (conn != null) {
				conn.close();
			}
		}
		return user_data;		
		// 取得できなかった場合nullが戻る
	}	

}
package jp.co.dandt.harada.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.dandt.harada.model.RegisterUserLogic;
import jp.co.dandt.harada.model.RequestUser;
import jp.co.dandt.harada.model.User;


@WebServlet("/MyPage")
public class MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MyPage() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// サーブレットの処理をするメソッド
		control(request, response);
	}

	static void control(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 初期化
		String path = "/index.jsp";
		String error_msg = "";

		// JSPからのリクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String str_login_id = request.getParameter("login_id");
		String str_pass = request.getParameter("pass");

		//  ログインID、パスワードを保存するインスタンス
		RequestUser request_user = new RequestUser(str_login_id, str_pass);

		// DB接続ロジックの呼び出し
		RegisterUserLogic logic = new RegisterUserLogic();
		User user = null;
		
		try {
			user = logic.requestUserData(request_user);
			// DB接続時にエラーが発生した場合
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			error_msg = "DB接続時にエラーが発生しました。管理者に問い合わせてください。";
		}

		// 取得できれば
		if (user != null) {
			// 取得できた場合、セッションスコープに取得したユーザを保存
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			path = "/WEB-INF/jp.co.dandt.harada.jsp/myPage.jsp";

			// userが空でDBのエラーメッセージがなえれば
		} else if (error_msg == "") {
			error_msg = "ログインIDとパスワードが一致しません";
		}
		
		// エラーメッセージを代入
		request.setAttribute("error_msg", error_msg);

		// 各画面にフォワード
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		return;

	}

}

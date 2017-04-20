<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>マイページ</title>
<link href="common/css/base.css" rel="stylesheet" media="all">
<link href="common/css/mypage.css" rel="stylesheet" media="all">
</head>

<body>

	<!-- ヘッダー -->
	<header>
		<div class="inner clearfix">
			<h1 id="logo">
				<a href="#"><img src="スクリーンショット 2017-03-06 22.58.39.png"
					alt="ロゴ"></a>
			</h1>
			<ul id="header_link">
				<li><a href="#" target="_blank">▶︎企業様はこちら</a>&nbsp;&nbsp;|</li>
				<li><a href="#" target="_blank">▶︎学校様はこちら</a></li>
			</ul>
		</div>
		<!-- /.inner -->
	</header>

	<!-- グロバナビ -->
	<nav id="gnav">
		<ul class="inner">
			<li><a href="#">参加校紹介</a></li>
			<li><a href="#">検索</a></li>
			<li><a href="#">特集</a></li>
			<li><a href="#">イベント</a></li>
			<li><a href="#">就職支援</a></li>
			<li><a href="#">マイページ</a></li>
		</ul>
	</nav>


	<div id="top_contents">
		<div class="inner">
			<!-- ◯◯さんのマイページ -->
			<div class="h1Area">
				<div class="wrap930 clearfix">
					<h1>yukidiru_2929 さんのMyページ</h1>
					<p>
						<a
							href="http://help.kakaku.com/cgi-bin/mt/mt-search.cgi?IncludeBlogs=3&amp;tag=My%E3%83%9A%E3%83%BC%E3%82%B8&amp;limit=20"
							target="_blank">MyページFAQ</a>
					</p>
				</div>
				<!-- /.wrap930 -->
			</div>
		</div>
		<!-- /.inner -->
	</div>
	<!-- #.top_contents-->


	<!-- コンテンツ -->
	<div id="contents" class="clearfix">

		<section id="section_1">
			<!-- 通知 -->
			<div class="noticeBox">
				<ul>
					<li class="important"><p class="title">
							<a href="#">ログインパスワード管理についてのお願い</a>
						</p></li>
				</ul>
			</div>
			<!-- /.noticeBox -->


			<!-- メインエリア -->
			<div class="mainArea" id="newArrival">
				<div class="titArea">
					<h2>
						新着通知<span class="unread"></span>
					</h2>
					<p class="setHomeBtn">
						<img
							src="https://ssl.kakaku.com/images/mypage/2014/btn_sethome_02.gif"
							width="122" height="24" alt="ホーム設定済み">
					</p>
				</div>
				<!-- /.titArea -->
				<div class="tabArea">
					<div class="clearfix">
						<ul class="tabLink clearfix">
							<li class="current">新着情報</li>
							<li><a
								href="https://ssl.kakaku.com/auth/mypage/notice/noticelist.aspx?disp=community">コミュニティ</a></li>
							<li><a
								href="https://ssl.kakaku.com/auth/mypage/notice/noticelist.aspx?disp=news">新着ニュース</a></li>
							<li><a
								href="https://ssl.kakaku.com/auth/mypage/notice/noticelist.aspx?disp=info">お知らせ</a></li>
						</ul>
						<p class="settingBtn">
							<a href="https://ssl.kakaku.com/auth/mypage/notice/setting.aspx">通知設定変更</a>
						</p>
					</div>

					<!-- 再安価格タブ -->
					<div class="tabContents clearfix" id="cheapestTab">
						<div class="listArea">
							<div class="noneMessage">
								<p class="noconTxt">
									<strong>新着通知はありません。</strong> 通知設定より、自分好みの内容をカスタマイズできます。
								</p>
								<p class="noconBtn">
									<a
										href="https://ssl.kakaku.com/auth/mypage/notice/setting.aspx">
										<img width="150" height="34" border="0" class="imgover"
										alt="通知設定変更"
										src="https://ssl.kakaku.com/images/mypage/2014/btn_nconfig.gif"
										hsrc="https://ssl.kakaku.com/images/mypage/2014/btn_nconfig_over.gif">
									</a>
								</p>
							</div>
						</div>
						<!-- /.listArea -->
					</div>
					<!-- /.tabContents -->
				</div>
				<!-- /.tabArea -->
			</div>
			<!-- /.mainArea -->

		</section>


		<!-- サイドメニュー -->
		<div id="leftColumn">
			<div id="menu01">
				<div class="radius">
					<div class="profileArea popParent">
						<div class="clearfix">
							<p class="userName">
								<a
									href="http://kakaku.com/auth/profile/profile.aspx?NickName=yukidiru_2929"><span>yukidiru_2929</span>さん</a>
							</p>

							<p class="profileImg">
								<a
									href="http://kakaku.com/auth/profile/profile.aspx?NickName=yukidiru_2929"><img
									src="https://img1-kakaku.ssl.k-img.com/images/mypage/2009/profile_nopic.gif"
									alt="" width="54"></a>
							</p>
						</div>

						<p class="accountEdit">
							<a href="javascript:void(0);" class="popBtn02">アカウント設定</a>
						</p>

						<!-- ポップアップ -->
						<div class="popWindow">
							<dl>
								<dd>
									<ul>
										<li><a
											href="http://upload.kakaku.com/auth/mypage/profileedit.aspx">プロフィール編集</a></li>
									</ul>
								</dd>
							</dl>

						</div>
						<!-- /.popWindow -->
					</div>
					<!-- /.profileArea -->

					<ul id="valueList">
						<li class="fanIco"><span class="count0">オファー <span
								class="count">-社</span></span></li>
					</ul>
				</div>
				<!-- /.radius -->
			</div>
			<!-- /#menu01 -->


			<ul id="menu02">
				<li><span class="parent newIco">新着通知</span>
					<ul>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/notice/noticelist.aspx?disp=community"
							class="child">コミュニティ</a></li>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/notice/noticelist.aspx?disp=news"
							class="child">新着ニュース</a></li>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/notice/noticelist.aspx?disp=info"
							class="child">お知らせ</a></li>
					</ul></li>
				<li><span class="parent favIco">お気に入り</span>
					<ul>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/favorite/productlist.aspx"
							class="child">学校<span>(-)</span></a></li>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/favorite/shoplist.aspx"
							class="child">企業<span>(-)</span></a></li>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/favorite/bbslist.aspx"
							class="child">生徒<span>(-)</span></a></li>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/favorite/kuchikomistlist.aspx"
							class="child">クチコミスト<span>(-)</span></a></li>
					</ul></li>
				<li><span class="parent writeIco">あなたの投稿</span>
					<ul>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/history/reviewhistory.aspx"
							class="child">ユーザーレビュー<span>(-)</span></a></li>
						<li><a
							href="https://ssl.kakaku.com/auth/mypage/history/bbshistory.aspx"
							class="child">クチコミ<span>(-)</span></a></li>
					</ul></li>
			</ul>

			<div id="menu03">
				<ul class="serviceList radius">
					<li><a href="http://help.kakaku.com/kiyaku_id.html">利用規約</a></li>
					<li><a
						href="http://help.kakaku.com/cgi-bin/mt/mt-search.cgi?IncludeBlogs=3&tag=My%E3%83%9A%E3%83%BC%E3%82%B8&limit=20">Myページについて</a></li>
					<li><a href="http://kakaku.com/present/">キャンペーン</a></li>
				</ul>
			</div>
			<!-- /#menu03 -->

		</div>
		<!-- /#leftColumn -->

	</div>
	<!-- /#contents -->


	<!-- フッター -->
	<footer id="footer" class="clearfix">
		<hr class="footer_line">
		<div class="inner">
			<nav id="f_gnav">
				<ul class="clearfix">
					<li class="f_nav"><a href="/">HOME</a></li>
					<li class="f_nav"><a href="#">参加校紹介</a>
						<ul class="f_snav">
							<li><a href="#">コース紹介</a></li>
							<li><a href="#">カリキュラムの紹介</a></li>
							<li><a href="#">先輩の声</a></li>
						</ul></li>
					<li class="f_nav"><a href="#">検索</a>
						<ul class="f_snav">
							<li><a href="#">キーワードで探す</a></li>
							<li><a href="#">エリアから探す</a></li>
						</ul></li>
					<li class="f_nav"><a href="#">イベント</a>
						<ul class="f_snav">
							<li><a href="#">就活イベント一覧</a></li>
						</ul></li>
					<li class="f_nav"><a href="#">特集</a>
						<ul class="f_snav">
							<li><a href="#">働き方を知る</a></li>
							<li><a href="#">業界特集</a></li>
							<li><a href="#">対象学生別特集</a></li>
						</ul></li>
					<li class="f_nav"><a href="#">就活支援</a>
						<ul class="f_snav">
							<li><a href="#">就活準備</a></li>
							<li><a href="#">就活ノウハウ</a></li>
							<li><a href="#">就活力アップ</a></li>
						</ul></li>
					<li class="f_nav"><a href="#">マイページ</a>
						<ul class="f_snav">
							<li><a href="#">新着通知</a></li>
							<li><a href="#">お気に入り</a></li>
							<li><a href="#">コミュニティ</a></li>
						</ul></li>
						</ul>
			</nav>
		</div>
		<!-- /.inner -->

		<hr class="footer_bottom_line">
		<div class="footer_bottom">
			<div class="inner">
				<ul class="clearfix">
					<li><a href="#" target="_blank">サイトについて</a>&nbsp;&nbsp;|</li>
					<li><a href="#" target="_blank">会社概要</a>&nbsp;&nbsp;|</li>
					<li><a href="#" target="_blank">個人情報保護方針</a>&nbsp;&nbsp;|</li>
					<li><a href="#" target="_blank">お問い合わせ</a>&nbsp;&nbsp;|</li>
					<li><a href="#" target="_blank">ヘルプ(FAQ)</a>&nbsp;&nbsp;|</li>
					<li><a href="#" target="_blank">プライバシーポリシー</a></li>
				</ul>
				<p class="copyright">
					<small>© 2013-2016 有限会社アゼリシステム</small>
				</p>
			</div>
			<!-- /.inner -->
		</div>
		<!-- /.footer_bottom -->
	</footer>
</body>
</html>
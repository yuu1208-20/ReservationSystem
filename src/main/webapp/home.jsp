<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/style.css">
<title>あなたのおしゃれなウェブサイト</title>
</head>
<body>
	<header>
		<h1>あなたのブランド</h1>
		<nav>
			<ul>
				<li><a href="#home">ホーム</a></li>
				<li><a href="#about">サイト概要</a></li>
				<li><a href="#services">サービス</a></li>
				<li><a href="#contact">お問い合わせ</a></li>
				<li><a href="#reserve">ご予約</a>
			</ul>
		</nav>
	</header>

	<section id="home">
		<h2>ウェブサイトへようこそ</h2>
		<p>これはHTMLとCSSで構築されたおしゃれでモダンなウェブサイトです。</p>
	</section>

	<section id="about">
		<h2>サイトについて</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
			Suspendisse ac lorem vitae libero auctor vestibulum vel ac ex.</p>
	</section>

	<section id="services">
		<h2>サービス</h2>
		<ul>
			<li>サービス1</li>
			<li>サービス2</li>
			<li>サービス3</li>
		</ul>
	</section>

	<section id="contact">
		<h2>お問い合わせ</h2>
		<p>
			お気軽に <a href="mailto:info@example.com">info@example.com</a>
			までお問い合わせください。
		</p>
	</section>
	
	<section id="reserve">
		<h2>ご予約</h2>
		<form action="<%=request.getContextPath() %>/home" method="post">
			予約日時 : <input type="date" name="date" required> <br> <input
				type="submit" value="予約する">
		</form>
	</section>

	<footer>
		<p>&copy; 2024 あなたのブランド。全著作権所有。</p>
	</footer>

</body>
</html>

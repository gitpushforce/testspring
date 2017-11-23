<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
	 <title>Design Leaker | ウェブ関連の情報収集ならDesign Leaker</title>
	<link href="<c:url value="/resources/css/bootstrap-grid.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap-reboot.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/test.css" />" rel="stylesheet" type="text/css">
	</head>
<body>

<header>
        <div id="header_inner">
            <h1><img src="<c:url value="/resources/img/test/logo.png"/>" alt="Design Leaker"></h1>
            <nav>
                <ul>
                    <li><a href="#">ウェブデザイン</a></li>
                    <li><a href="#">WORDPRESS</a></li>
                    <li><a href="#">JQuery</a></li>
                    <li><a href="#">ウェブマーケティング</a></li>                    
                </ul>
            </nav>
        </div>
    </header>

    <div id="main_wrapper">

        <div class="cf">

            <div id="top_pickup">
                <p id="pickup_thumb">
                    <img src="<c:url value="/resources/img/test/pickup.jpg" />" alt="ピックアップ画像">
                    <span id="pickup_tag">ウェブデザイン</span>
                </p>
                <dl>
                    <dt><a href="#">記事のタイトルがここに入ります</a></dt>
                    <dd>2017.10.1</dd>
                </dl>
            </div>
            <div id="top_ranking">
                <h2>人気記事ランキング</h2>
                <ul>
                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_1.jpg"/>" alt="ランキング画像">
                                <span class="ranking_number">1</span>
                            </dt>
                            <dd>
                                <h3><a href="#">記事タイトル</a></h3>
                                <span class="ranking_tag webdesign">ウェブデザイン</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_2.jpg"/>" alt="ランキング画像">
                                <span class="ranking_number">2</span>                            
                            </dt>
                            <dd>
                                <h3><a href="#">記事タイトル</a></h3>
                                <span class="ranking_tag wordpress">WORDPRESS</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_3.jpg"/>" alt="ランキング画像">
                                <span class="ranking_number">3</span>                            
                            </dt>
                            <dd>
                                <h3><a href="#">記事タイトル</a></h3>
                                <span class="ranking_tag webmarketing">ウェブマーケティング</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_4.jpg" />" alt="ランキング画像">
                                <span class="ranking_number">4</span>                            
                            </dt>
                            <dd>
                                <h3><a href="#">記事タイトル</a></h3>
                                <span class="ranking_tag webdesign">ウェブデザイン</span>
                            </dd>
                        </dl>
                    </li>
                            
                </ul>
            </div>

        </div>
            
        
        <div class="cf">

            <div id="top_left">
                <div id="top_category">
                    <h3>CATEGORY</h3>
                    <ul>
                        <li><a href="#">すべてのカテゴリー</a></li>
                        <li><a href="#">ウェブデザイン</a></li>
                        <li><a href="#">WORDPRESS</a></li>
                        <li><a href="#">JQuery</a></li>
                        <li><a href="#">ウェブマーケティング</a></li>                        
                    </ul>
                </div>

                <div id="top_add">
                    <a href="#"><img src="<c:url value="/resources/img/test/add.jpg" />" alt=""></a>
                </div>
                
                <br>
				<sf:form action="${pageContext.request.contextPath}/save" method="post" commandName="admin">
					
					<table>
					<%-- <sf:input path="adminnum" type="hidden"/> 
					<sf:input path="fechaCreacion" type="hidden"/> --%>
						<tr>
							<td>Nombre</td>
							<td> <sf:input path="nombre" type="text"/> </td>
						</tr>
						<tr>
							<td>Cargo</td>
							<td> <sf:input path="cargo" type="text"/> </td>
						</tr>
						<tr>
							<td></td>
							<td> <input type="submit" value="Guardar cambios"/> </td>
						</tr>
					
					</table>
				
				</sf:form>

            </div>

            <div id="top_right">
                <h3>新着記事一覧</h3>

                <ul id="articles">
                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_5.jpg" />" alt="">
                                <span class="new_category_tag">ウェブデザイン</span>
                            </dt>
                            <dd>
                                <h4><a href="#">記事タイトル</a></h4>
                                <span class="new_date">2017.10.1</span>
                                <span class="new_tag">キーワード1,キーワード2</span>
                                <p>記事本文がここに入ります。記事本文がここに入ります。記事本文がここに入ります。
                                    <a href="#">...続きを読む</a>
                                </p>
                            </dd>
                        </dl>
                    </li>

                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_6.jpg" />" alt="">
                                <span class="new_category_tag">ウェブデザイン</span>
                            </dt>
                            <dd>
                                <h4><a href="#">記事タイトル</a></h4>
                                <span class="new_date">2017.10.1</span>
                                <span class="new_tag">キーワード1,キーワード2</span>
                                <p>記事本文がここに入ります。記事本文がここに入ります。記事本文がここに入ります。
                                    <a href="#">...続きを読む</a>
                                </p>
                            </dd>
                        </dl>
                    </li>

                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_7.jpg" />" alt="">
                                <span class="new_category_tag">ウェブデザイン</span>
                            </dt>
                            <dd>
                                <h4><a href="#">記事タイトル</a></h4>
                                <span class="new_date">2017.10.1</span>
                                <span class="new_tag">キーワード1,キーワード2</span>
                                <p>記事本文がここに入ります。記事本文がここに入ります。記事本文がここに入ります。
                                    <a href="#">...続きを読む</a>
                                </p>
                            </dd>
                        </dl>
                    </li>

                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_8.jpg" />" alt="">
                                <span class="new_category_tag">ウェブデザイン</span>
                            </dt>
                            <dd>
                                <h4><a href="#">記事タイトル</a></h4>
                                <span class="new_date">2017.10.1</span>
                                <span class="new_tag">キーワード1,キーワード2</span>
                                <p>記事本文がここに入ります。記事本文がここに入ります。記事本文がここに入ります。
                                    <a href="#">...続きを読む</a>
                                </p>
                            </dd>
                        </dl>
                    </li>
    
                    <li>
                        <dl>
                            <dt>
                                <img src="<c:url value="/resources/img/test/tmb_9.jpg" />" alt="">
                                <span class="new_category_tag">ウェブデザイン</span>
                            </dt>
                            <dd>
                                <h4><a href="#">記事タイトル</a></h4>
                                <span class="new_date">2017.10.1</span>
                                <span class="new_tag">キーワード1,キーワード2</span>
                                <p>記事本文がここに入ります。記事本文がここに入ります。記事本文がここに入ります。
                                    <a href="#">...続きを読む</a>
                                </p>
                            </dd>
                        </dl>
                    </li>
    

                </ul>

                <div id="pagenation">
                    <ul class="cf">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">NEXT >></a></li>                
                    </ul>
                </div>

            </div>

        </div>

    </div>
    <!--#main_wraperここまで-->

    <footer>
        <div id="footer_inner" class="cf">

            <dl>
                <dt>
                    <img src="<c:url value="/resources/img/test/logo.png" />" alt="ロゴ">
                 </dt>
                <dd>
                    株式会社Campus TEL: 000-000-000<br>
                    〒000-0000 京都市京都区京都町00-0 町家ビル2F
                </dd>
            </dl>
            
            <div id="contact">
                <h4>お問い合わせ
                    <span>お問い合わせお待ちしております</span>
                </h4>

                <form>
                    <textarea></textarea>
                    <br>
                    <input type="submit" value="送信する">
                </form>
            </div>

        </div>
    </footer>

</body>

</html>
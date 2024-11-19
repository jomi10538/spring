<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘 뭐해?달리자!</title>
</head>
  body {
    margin: 0px;
    width: 1920px;
    height: 1024px;
  }

  #userinfo {
    display: inline-block;
    width: 1000px;
    height: 50px;
    /*  background-color: aqua;*/
    top: 40px;
    left: 1700px;
    position: absolute;
  }

  #header {
    width: 1920px;
    height: 100px;
    /* background-color: rgb(98, 139, 253);*/
    padding-top: 20px;
    box-sizing: border-box;
    float: left;
    /* display: flex;*/

  }

  .header_20 input[type=text] {
    width: 500px;
    height: 32px;
    font-size: 15px;
    border: solid 1px gray;
    border-radius: 15px;
    outline: none;
    margin-bottom: 10px;
    background-color: rgb(233, 233, 233);
  }

  .header_10 {
    width: 400px;
    height: 40px;
    /* border: 1px solid;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  .header_20 {
    padding-top: 5px;
    width: 1500px;
    height: 40px;
    /* border: 1px solid;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  .header_10 h2 {
    display: inline;
    color: green;
    font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
  }

  #nav {
    width: 1920px;
    height: 60px;
    float: left;
    border-bottom: 1px solid;
    font-size: larger;
  }

  /*
    #nav ul li{
        color:black;
    }
     #nav ul li:hover{
        background-color: aqua;
    } */
  /*   ul {
*/
  /*   border: 1px solid;
        margin-top: 3px;
    }*/
  ul li {
    display: inline-block;
    width: 120px;
    /*   border: 1px solid;*/

  }

  #mainsection {
    width: 80%;
    height: 900px;
    /*  border: 1px dotted;*/
    float: left;
    box-sizing: border-box;
  }

  #mainsection_01 {
    width: 80%;
    height: 300px;
    /*   border: 1px solid;
    /*    background-color: red;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  #asidelogin {
    width: 20%;
    height: 500px;
    /* border: 1px solid;*/
    float: left;
  }

  .subject {
    display: inline-block;
    font-size: larger;
    margin-bottom: 5px;
  }

  #login {
    background-color: darkcyan;
    padding-top: 15px;
    border-radius: 5px;
    box-sizing: border-box;
    color: white;

  }

  #login,
  #loginup,
  #logindown {
    width: 250px;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    margin: 0px auto;

  }

  #loginbox {
    margin-top: 30px;
    box-sizing: border-box;
  }

  #infosection {
    width: 1920px;
    height: 150px;
    /* border: 1px solid;*/
    float: left;
  }

  .infosetion_card {
    width: 360px;
    height: 150px;
    margin-left: 20px;
    /* background-color: yellow;*/
    float: left;
  }

  #footer {
    width: 1920px;
    text-align: center;
    font-size: larger;
    /* border: 1px solid;*/
    float: left;
  }
</style>
<style>
  .dropdown {
    display: inline-block;
    position: relative;
  }

  #btn01,
  #btn02,
  #btn03,
  #btn04,
  #btn05 {
    border: none;
    border-radius: 5px;
    padding: 3px 30px;
    font-size: 18px;
    cursor: pointer;
    display: inline-block;
    background-color: white;
  }

  button:hover {
    background-color: #ddd;
  }

  .dropdown-options {
    display: none;
    position: absolute;
    overflow: auto;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 10px 10px 0px rgba(0, 0, 0, 0.4);
  }

  .dropdown:hover .dropdown-options {
    display: block;
  }

  .dropdown-options a {
    display: block;
    color: #000000;
    padding: 5px;
    text-decoration: none;
    padding: 20px 40px;
  }

  .dropdown-options a:hover {
    color: #0a0a23;
    background-color: #ddd;
    border-radius: 5px;
  }
</style>
<style>
  /*boot strap에서 마우스 올려 놓으면 메뉴 자동 펼치기 추가 코드 */
  nav li.dropdown:hover>ul.dropdown-menu {
    display: block;
    margin: 0;
  }
</style>
<body>
    <header>
        <style>
            
        </style>
        <div class="header" >
            <h1>마라토니아</h1>
        
        </div>
    </header>
    <nav>
        <div id="menu">
        <ul>
            <li><a href="#">처음으로</a>
                <ul>
                    <li><a href="#">소개하기</a></li>
                    <li><a href="#">마라톤의 역사</a></li>
                    <li><a href="#">대회 일정</a></li>
                </ul>
            </li>
            <li><a href="#">MARATHON</a>
                <ul>
                    <li><a href="#">마라톤 상식</a></li>
                    <li><a href="#">페이스 차트</a></li>
                    <li><a href="#">식이요법</a></li>
                </ul>
            </li>
            <li><a href="#">러닝코스</a>
                <ul>
                    <li><a href="#">러닝코스</a></li>
                    <li><a href="#">훈련코스</a></li>
                    <li><a href="#">마라톤대회코스</a></li>
                </ul>
            </li>
            <li><a href="#">훈련방법</a>
                <ul>
                    <li><a href="#">10K</a></li>
                    <li><a href="#">HALF</a></li>
                    <li><a href="#">FULL</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <style type="text/css">
        
            * {
                margin: 0;
                padding: 0;
            }
      
            ul li{
                list-style: none;
            }
       
            a {
                text-decoration: none;
                color:#333;
            }
        
            #menu {
                font:bold 16px "malgun gothic";
                width:1300px;
                height:30px;
                background:mediumpurple;
                color:black;
                line-height: 29px; 
                margin:0 auto;
                text-align: center;
            }
        
        
            #menu > ul > li {
                float:left;
                width:140px;
                position:relative;
            }
            #menu > ul > li > ul {
		    width:140px;
		    display:none;
		    position: absolute;
		    font-size:14px;
		    background: mediumslateblue;
	        }
            #menu > ul > li:hover > ul {
		    display:block;
	        }
            #menu > ul > li > ul > li:hover {
		    background: orange;
		    transition: ease 1s;
		    }
            </style>
            
        
        
    </nav>
    <section>
        <div>
            <img src="./img/마라톤.png"style=width:870px;height:380px; alt="">
        </div>
    </section>
    <aside>
        <div>

        </div>
    </aside>
    <div id="display">
        <div class="display_01">
            <h2>안녕?마라토니아에 온걸 환영해!</h2>
            <p>러닝에 관심있는 사람들을 위해 만들었어!</p>
            <p>여기서 여러가지 정보를 많이 얻어갔으면 좋겠다!</p>
            <p>부족하지만 잘 보고 갔으면 좋겠어!</p>
        </div>
    
        
    </div>
    <footer>이거는 유노유노가 만들었당~!</footer>
</body>
</html>
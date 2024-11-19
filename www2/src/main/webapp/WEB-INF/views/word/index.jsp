<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>단어검색프로그램</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
        }
        .result {
            margin-top: 20px;
            font-size: 18px;
        }
        .result p {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>단어검색 프로그램</h1>
    <form action="/word/search" method="post">
        <label for="wordInput">단어 입력:</label>
        <input type="text" id="wordInput" name="word" required>
        <button type="submit">전송</button>
    </form>

    <div class="result">
        <c:if test="${not empty word}">
            <p>단어: ${word}</p>
            <p>뜻: ${meaning}</p>
        </c:if>
    </div>
</body>
</html>

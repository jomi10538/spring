<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <title>Document</title>
  <style>
    body {
      margin: 0;
    }

    * {
      box-sizing: border-box;
    }

    p,
    span {
      margin: 0;
    }

    a {
      color: black;
    }

    img {
      display: block;
      width: 80%;
      height: 80px;
      margin: auto;
    }

    .cart {
      width: 80%;
      margin: auto;
      padding: 30px;
    }

    .cart ul {
      background-color: whitesmoke;
      padding: 30px;
      margin-bottom: 50px;
      border: whitesmoke solid 1px;
      border-radius: 5px;
      font-size: 13px;
      font-weight: 300;
    }

    .cart ul :first-child {
      color: limegreen;
    }

    table {
      border-top: solid 1.5px black;
      border-collapse: collapse;
      width: 100%;
      font-size: 14px;
    }

    thead {
      text-align: center;
      font-weight: bold;
    }

    tbody {
      font-size: 12px;
      text-align: center;
    }

    td {
      padding: 15px 0px;
      border-bottom: 1px solid lightgrey;
    }

    .cart__list__detail :nth-child(3) {
      vertical-align: top;
    }

    .cart__list__detail :nth-child(3) a {
      font-size: 12px;
    }

    .cart__list__detail :nth-child(3) p {
      margin-top: 6px;
      font-weight: bold;
    }

    .cart__list__smartstore {
      font-size: 12px;
      color: gray;
    }

    .cart__list__option {
      vertical-align: top;
      padding: 20px;
    }

    .cart__list__option p {
      margin-bottom: 25px;
      position: relative;
    }

    .cart__list__option p::after {
      content: "";
      width: 90%;
      height: 1px;
      background-color: lightgrey;
      left: 0px;
      top: 25px;
      position: absolute;
    }

    .cart__list__optionbtn {
      background-color: white;
      font-size: 10px;
      border: lightgrey solid 1px;
      padding: 7px;
    }

    .cart__list__detail :nth-child(4),
    .cart__list__detail :nth-child(5),
    .cart__list__detail :nth-child(6) {
      border-left: 2px solid whitesmoke;
    }

    .cart__list__detail :nth-child(5),
    .cart__list__detail :nth-child(6) {
      text-align: center;
    }

    .cart__list__detail :nth-child(5) button {
      background-color: limegreen;
      color: white;
      border: none;
      border-radius: 5px;
      padding: 4px 8px;
      font-size: 12px;
      margin-top: 5px;
    }

    .price {
      font-weight: bold;
    }

    .cart__mainbtns {
      width: 420px;
      height: 200px;
      padding-top: 40px;
      display: block;
      margin: auto;
    }

    .cart__bigorderbtn {
      width: 200px;
      height: 50px;
      font-size: 16px;
      margin: auto;
      border-radius: 5px;
    }

    .cart__bigorderbtn.left {
      background-color: white;
      border: 1px lightgray solid;
    }

    .cart__bigorderbtn.right {
      background-color: limegreen;
      color: white;
      border: none;
    }

    input[type=number]::-webkit-inner-spin-button {
      opacity: 1
    }
  </style>
</head>

<body>
  <section class="cart">
    <div class="cart__information">
      <ul>
        <li>장바구니 상품은 최대 30일간 저장됩니다.</li>
        <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
        <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
      </ul>
    </div>
    <table class="cart__list">
      <form>
        <thead>
          <tr>
            <td><input type="checkbox" id="allChk" onchange="allChk1()"></td>
            <td>상품정보</td>
            <td>옵션</td>
            <td>상품금액</td>
            <td>배송비</td>
          </tr>
          <tr id="hidden">
            <td colspan="5"> 장바구니가 비어있습니다. 물건을 주문해주세요.</td>
          </tr>
        </thead>
        <tbody id="cart__list">
          <!-- <tr class="cart__list__detail">
            <td><input type="checkbox"></td>
            <td> </td>
            <td class="cart__list__option">
              
            </td>
            <td><span class="price"></span><br>

            </td>
            <td></td>
          </tr>
          <tr class="cart__list__detail">
            <td style="width: 2%;"><input type="checkbox"></td>

            <td style="width: 40%;">
            </td>
            <td class="cart__list__option" style="width: 27%;">

            </td>
            <td style="width: 15%;"><span class="price"></span><br>

            </td>
            <td style="width: 15%;"></td>
          </tr>-->
        </tbody>
        <tfoot>
          <tr>
            <td colspan="2"><input type="checkbox"> <input type="button" class="cart__list__optionbtn"
                onclick="delRow()" value="선택상품삭제">
              <button class="cart__list__optionbtn">선택상품 찜</button>
            </td>
            <td></td>
            <td style="text-align: center;"> 선택상품금액   <span id="allGoods"></span> + 총 배송비   <span id="allDlv"></span></td>
            <td style="text-align: center; color: limegreen; border-left: 1px lightgray solid;"> 주문금액 <span id="allPri"></span></td>
          </tr>
        </tfoot>
      </form>
    </table>

    <table class="buyGoods">
      <form>
        <thead>
          <tr>
            <td>상품정보</td>
            <td>옵션</td>
            <td>상품금액</td>
            <td>배송비</td>
          </tr>          
        </thead>
        <tbody>
          <tr class="cart__list__detail">

            <td style="width: 40%;"><input type="text" id="goodsInfo" size="40"></td>
            <td class="cart__list__option" style="width: 27%;">
              상품 주문 수량<input type="number" id="goodsCnt" min="1" value="1" style="width: 40px;">개
            </td>
            <td style="width: 15%;"><span class="price"><input type="text" id="goodsPrice" size="10">원</span>
            </td>
            <td style="width: 15%;"><input type="text" id="goodsDlv" size="10"></td>
          </tr>

        </tbody>

      </form>
    </table>
    <div class="cart__mainbtns">
      <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
      <button class="cart__bigorderbtn right" onclick="addRow()">주문하기</button>
    </div>
  </section>
  <input type="checkbox">
</body>

<script>

    let cart__list = document.getElementById('cart__list')

    function addRow(){
        let goodsinfo = $('#goodsInfo').val();
        let goodscnt = $('#goodsCnt').val();
        let goodsPrice = $('#goodsPrice').val();
        let goodsDlv = $('#goodsDlv').val();
        

        let newRow = cart__list.insertRow()
        let cell1 = newRow.insertCell(0);
        let cell2 = newRow.insertCell(1);
        let cell3 = newRow.insertCell(2);
        let cell4 = newRow.insertCell(3);
        let cell5 = newRow.insertCell(4);
        cell1.innerHTML = '<input type="checkbox">'
        cell2.innerText = goodsinfo;
        cell3.innerText = goodscnt;
        cell4.innerText = goodsPrice*goodscnt;
        cell5.innerText = goodsDlv;
    }

    function delRow(){
        
        for(let i = 0; i<cart__list.rows.length; i++){
            if(cart__list.rows[i].cells[0].children[0].checked){
                
                cart__list.deleteRow(i);
                i--;
            }
        }
    }

    function allChk1(){
        let allChk = document.getElementById('allChk')
        for(let i = 0; i<cart__list.rows.length; i++){
            if(allChk.checked){
                cart__list.rows[i].cells[0].children[0].checked = true;
            }else{
                cart__list.rows[i].cells[0].children[0].checked = false;
            }
        }
    }
  

</script>

</html>

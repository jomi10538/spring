package www.silver.hom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;


public class WordContrller extends HttpServlet  {
	@RequestMapping(value = "/", method = RequestMethod.GET)
		public String abc() {
		   return "word/index";
	}
			    // 미리 정의된 단어 목록 (예시)
			    private static final List<String> WORD_LIST = Arrays.asList(
			        "apple", "banana", "cherry", "date", "elderberry", "fig", "grape"
			    );

			    @Override
			    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			        String searchWord = request.getParameter("word");  // 사용자 입력 단어

			        String result = "검색 결과: 단어를 찾을 수 없습니다.";

			        // 단어 목록에서 검색
			        if (searchWord != null && !searchWord.isEmpty()) {
			            if (WORD_LIST.contains(searchWord.toLowerCase())) {
			                result = "검색한 단어: " + searchWord + " - 단어가 목록에 존재합니다!";
			            } else {
			                result = "검색한 단어: " + searchWord + " - 단어가 목록에 없습니다.";
			            }
			        }

			        // 검색 결과를 JSP로 전달
			        request.setAttribute("result", result);
			        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			        dispatcher.forward(request, response);
			    
			
	}
		
	}
			


package days04.board;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAO;
import days04.board.persistence.BoardDAOImpl;
import days04.board.vo.PagingVO;

//@WebServlet("/cstvsboard/list.htm")
public class List extends HttpServlet {
   private static final long serialVersionUID = 1L;

    public List() {
        super();

    }
    
    int currentPage = 1; // 현재 페이지 번호
    int numberPerPage = 10; // 한 페이지에 출력할 게시글 수
    int numberOfPageBlock = 10; // [1] 2 3 4 5 ... >
    int totalRecords = 0; // 총 레코드 수
    int totalPages = 0; // 총 페이지 수
    
    // list.htm null == 1페이지
    // list.htm?currentPage=3
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      System.out.println("List.doGet()");
      
      try {
         this.currentPage = Integer.parseInt(request.getParameter("currentPage"));
      }catch(Exception e) {
         this.currentPage = 1;
      } // try
      
      try {
         this.numberPerPage = Integer.parseInt(request.getParameter("numberPerPage"));
      }catch(Exception e) {
         this.numberPerPage = 10;
      } // try
      
      String searchCondition = null;
      try {
    	  searchCondition = request.getParameter("searchCondition");
      }catch(Exception e) {
    	  searchCondition = "title";
      } // try
      
      // 검색어가 없는 경우 null;
      String searchWord = request.getParameter("searchWord");
      
      
      // 1. 로직 처리
      Connection conn = DBConn.getConnection();
      BoardDAO dao = new BoardDAOImpl(conn);
      ArrayList<BoardDTO> list = null;
      
      PagingVO pvo = null;
     

      

      try {
         //페이징 + 검색 안된 목록
         if(searchWord == null || searchWord.equals("")) {
            pvo = new PagingVO(this.currentPage, this.numberPerPage, this.numberOfPageBlock);
            list = dao.select(this.currentPage, this.numberPerPage);//paging처리가 안된 select함수
         }else {
            pvo = new PagingVO(currentPage, numberPerPage, numberOfPageBlock, searchCondition, searchWord);
            list = dao.search(searchCondition, searchWord, currentPage, numberPerPage);
         }
         
      } catch (Exception e) {
         System.out.println("> List.doGet() Exception");
         e.printStackTrace();
      } finally {
         DBConn.close();
      } // try
      
      // 2. 포워딩
      request.setAttribute("list", list);
      request.setAttribute("pvo", pvo);
      
      String path = "/days04/board/list.jsp";
      RequestDispatcher dispatcher = request.getRequestDispatcher(path);
      dispatcher.forward(request, response);
      
   } // doGet

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      doGet(request, response);
   }

} // class

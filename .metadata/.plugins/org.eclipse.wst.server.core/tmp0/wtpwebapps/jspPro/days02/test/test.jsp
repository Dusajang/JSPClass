<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.util.DBConn"%>
<%@page import="org.doit.domain.DeptVO"%>
<%@page import="org.doit.domain.EmpVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    ArrayList<DeptVO> deptList = new ArrayList<>();
    ArrayList<EmpVO> empList = new ArrayList<>();
    
    int deptno;
    String dname, loc;
    DeptVO deptVO = null;
    EmpVO empVO = null;
    
    try {
        conn = DBConn.getConnection();
        
        String sql1 = "SELECT * FROM dept";
        pstmt = conn.prepareStatement(sql1);
        rs = pstmt.executeQuery();
        
        while (rs.next()) {
            deptno = rs.getInt("deptno");
            dname = rs.getString("dname");
            loc = rs.getString("loc");
            
            deptVO = new DeptVO().builder().deptno(deptno).dname(dname).loc(loc).build();
            deptList.add(deptVO);
        }
        
        String[] deptnoArr = request.getParameterValues("deptno");
        
        if (deptnoArr != null && deptnoArr.length > 0) {
            StringBuilder sqlBuilder = new StringBuilder(
                "SELECT empno, ename, job, mgr, " +
                "TO_CHAR(hiredate,'yyyy-MM-dd') hiredate, sal, comm, deptno " +
                "FROM emp WHERE "
            );
            
            for (int i = 0; i < deptnoArr.length; i++) {
                sqlBuilder.append("deptno = ?");
                if (i < deptnoArr.length - 1) {
                    sqlBuilder.append(" OR ");
                }
            }
            
            sqlBuilder.append(" ORDER BY deptno ASC");
            
            pstmt = conn.prepareStatement(sqlBuilder.toString());
            
            for (int i = 0; i < deptnoArr.length; i++) {
                pstmt.setInt(i + 1, Integer.parseInt(deptnoArr[i]));
            }
            
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                int empno = rs.getInt("empno");
                String ename = rs.getString("ename");
                String job = rs.getString("job");
                int mgr = rs.getInt("mgr");
                Date hiredate = rs.getDate("hiredate");
                double sal = rs.getDouble("sal");
                double comm = rs.getDouble("comm");
                deptno = rs.getInt("deptno");
                
                empVO = new EmpVO().builder()
                    .empno(empno).ename(ename).job(job).mgr(mgr)
                    .hiredate(hiredate).sal(sal).comm(comm).deptno(deptno)
                    .build();
                empList.add(empVO);
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) DBConn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
   <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <title>Document</title>
<style>
    table {
        border: 1px solid black;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 5px;
    }
</style>
</head>
<body>

<div>
  <xmp class="code">
    
  </xmp>
  
<select id="deptno" name="deptno">
    <option>부서를 선택하세요.</option>
        <%
            Iterator<DeptVO> deptIterator = deptList.iterator();
            while (deptIterator.hasNext()) {
                DeptVO dept = deptIterator.next();
                deptno = dept.getDeptno();
                dname = dept.getDname();
        %>
        <option value="<%= deptno %>"><%= dname %></option>
    <%
        }
    %>
</select>

<h2></h2>
<table id="tblDept">
    <thead>
        <tr>
            <th><input type="checkbox" class="all"> 모두 선택</th>
            <th>empno</th>
            <th>ename</th>
            <th>job</th>
            <th>mgr</th>
            <th>hiredate</th>
            <th>sal</th>
            <th>comm</th>
            <th>deptno</th>
        </tr>
    </thead>
    <tbody>
    <% 
	if (empList.isEmpty()) {
	%>
	    <tr>
	        <td colspan="9">사원이 존재하지 않습니다.</td>
	    </tr>
	<% 
	} else { 
	    Iterator<EmpVO> ir = empList.iterator();
	    while (ir.hasNext()) {
	        EmpVO vo = ir.next(); 
	%>
	    <tr>
	        <td><input type="checkbox" id="ck<%= vo.getEmpno() %>" value="<%= vo.getEmpno() %>"></td>
	        <td><%= vo.getEmpno() %></td>
	        <td><%= vo.getEname() %></td>
	        <td><%= vo.getJob() %></td>
	        <td><%= vo.getMgr() %></td>
	        <td><%= vo.getHiredate() %></td>
	        <td><%= vo.getSal() %></td>
	        <td><%= vo.getComm() %></td>
	        <td><%= vo.getDeptno() %></td>
	    </tr>
	<%
	    }
	}
	%>
    </tbody>
    <tfoot>
        <tr>
           <td colspan="8">
              <button id="submit">확인</button>
           </td>
        </tr>
     </tfoot>
</table>
<br>
<br>
      <a href="javascript:history.back()">HOme</a>
  
     
</div>


<script>
    $("#deptno").on("change", function (event) {
        let deptno = $(this).val();
        location.href = `test.jsp?deptno=\${deptno}`;
    });
</script>

<script>
    
    const allCkb = document.querySelector(".all");
    const ckbs = document.querySelectorAll("#tblDept > tbody input[id^='ck']");

    
    allCkb.onchange = function () {
    	//console.log("allCkb");
        for (let i = 0; i < ckbs.length; i++) {
            ckbs[i].checked = this.checked;
        }
    };

    
    for (let i = 0; i < ckbs.length; i++) {
        ckbs[i].onclick = function () {
        	//console.log("ckbs");
            let isCkbsAllchecked = true;

            for (let j = 0; j < ckbs.length; j++) {
                if (!ckbs[j].checked) {
                    isCkbsAllchecked = false;
                    break;
                }
            }
            allCkb.checked = isCkbsAllchecked;
        };
    }
</script>

<script>
	const empnoArr = [];
$("#submit").on("click", function () {
	$("input[type=checkbox]:checked").each(function (index, element) {
		let empno = element.value;
		empnoArr.push(`empno=\${empno}`);
	});
	//alert(empnoArr.value);
	//console.log("submit")
	location.href = `test01_ok.jsp?\${empnoArr.join('&')}`;
	//console.log(`test01_ok.jsp?\${empnoArr.join('&')}`);
});

</script>
  
  
  
</body>
</html>
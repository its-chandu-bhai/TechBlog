<%@page import="com.techBlog.entities.User"%>
<%@page import="com.techBlog.dao.LikeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.techBlog.entities.Post"%>
<%@page import="com.techBlog.helper.ConnectionProvider"%>
<%@page import="com.techBlog.dao.PostDao"%>

<div class="row">

    <%
        User user = (User)session.getAttribute("currentUser");
        
    //   Thread.sleep(1000);  // it is unnessary, we are using to show the loader.
        PostDao dao = new PostDao(ConnectionProvider.getConnection());

        int cid = Integer.parseInt(request.getParameter("cId"));
        List<Post> posts = null;
        if (cid == 0) {
            posts = dao.getAllPosts();
        }
        if (cid > 0) {
            posts = dao.getPostByCatId(cid);
        }

        if (posts.size() == 0) {
            out.println("<h3 class='display-3 text-center' >No Post in this category... </h3>");
        }
        for (Post p : posts) {
    %>

    <div class="col-md-6 mt-2">

        <div class="card">
            <img src="blog_pics/<%= p.getpPic()%>" class="card-img-top" alt="src='blog_pics/img6.jpg'">
            <div class="card-body">
                <b> <%= p.getpTitle()%> </b>
                <p> <%= p.getpContent()%> </p>
                <!--<pre> <%= p.getpCode()%> </pre>     to showing the code we used to pre tag  -->
            </div>


            <%
                LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
            %>

            <div class="card-footer primary-background text-center" >
                <a href="#!" onclick="doLike(<%= p.getPid() %> , <%= user.getId() %>)" class="btn btn-outline-light m-2"> <i class="fa fa-thumbs-o-up" ></i> <span class="like-counter" ><%= ld.countLikeOnPost(p.getPid()) %></span>  </a>
                <a href="show_blog_page.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light m-2">Read More...</a>
                <a href="#!" class="btn btn-outline-light m-2"> <i class="fa fa-commenting-o" ></i> <span>20</span>  </a>
            </div>

        </div>

    </div>

    <%
        }
    %>

</div>
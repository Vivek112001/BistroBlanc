<nav class="navbar navbar-dark bg-dark navbar-expand-lg fixed-top">
      <div class="container">
        <a class="navbar-brand" href="adminHome"
          ><span class=""><i class="fa-solid fa-plate-wheat fa-fade" style="color: #de9d12;"></i>&nbsp&nbsp&nbspBistro</span
          ><span class="text-warning">Blanc</span></a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="adminHome"><i class="fa-solid fa-user-tie"></i> Admin</a>
            </li>
          <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="additems"><i class="fa-regular fa-square-plus fa-fade"></i> Add Items</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link active dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Category
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="allproduct">Main Course</a></li>
                <li><a class="dropdown-item" href="allproduct">Fast Food</a></li>
                <li><a class="dropdown-item" href="allproduct">Dessert</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="adminAbout">About</a>
            </li>
            <li class="nav-item">
            <%
            String id=(String)session.getAttribute("uid");
            if(id!=null){
            %>
              <a class="nav-link active" aria-current="page" href="logout">Logout</a>
              <%
            }
            else{
            	%>
              <a class="nav-link active" aria-current="page" href="login">Login</a>
              <%
            }
              %>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="registered"><i class="fa-solid fa-users-rectangle fa-fade"></i></a>
            </li>
             <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="bookedOrder">
                 <i class="fa-regular fa-bookmark fa-beat-fade"></i> Booked Order            
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
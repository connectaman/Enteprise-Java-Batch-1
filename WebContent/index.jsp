<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <!-- <link rel="stylesheet" href="libs/css/ihover.min.css"> -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="libs/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Batch 1</title>
    <link rel="stylesheet" href="libs/css/animate.css">
    <script src="libs/js/wow.min.js"></script>
</head>
<body>
        <script>
                new WOW().init();
                </script>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Batch 1</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="login.jsp">Login <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="LogoutServlet">Logout</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="UserServlet">Users list</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </div>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                    <%
                    HttpSession s = request.getSession();
                    String name = (String)s.getAttribute("name");
                    if(name!=null){
                    %>
                     <p><%=name%></p>
                     <%} %>
                  </ul>
                  <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                  </form>
                </div>
              </nav>
<div class="animated bounce">

        <h1 style="text-align:center;"> Welcome</h1>
</div>



              <div class="row">
                <div class="col-lg-6">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci aliquam perspiciatis a culpa corrupti totam nobis blanditiis, omnis esse est dicta rem explicabo deserunt libero reprehenderit neque cumque, obcaecati, facere quos autem fugit sapiente debitis. Rem placeat, dolor sint vel sit est. Deleniti tempora, et quasi quo accusantium consequatur officia quia eius ipsum amet iste fuga minus cum temporibus fugiat enim nulla error, dicta accusamus nam illo. Modi impedit veniam, et, unde totam nulla ducimus, ab magni error alias iste corrupti assumenda repellat facilis aspernatur? Eveniet praesentium, debitis, rerum dicta ut pariatur culpa ducimus minus delectus aspernatur, temporibus iusto libero!</p>
                </div>
                <div class="col-lg-6">
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatibus qui magnam dolore error unde temporibus excepturi blanditiis animi quia soluta quod dolores earum molestiae aut voluptatum ea ipsa, iusto exercitationem accusamus. Tempora, in quae? Temporibus maxime error quo dolorum numquam veritatis labore ipsa at neque maiores, minima ducimus ab, nisi sed cumque non. Consequatur non molestias distinctio ad facere? Repudiandae, laborum omnis voluptatum architecto facilis reprehenderit quidem maiores perferendis amet aliquid necessitatibus quas suscipit, ab ea animi nemo, alias impedit et asperiores. Dolore amet optio repellendus voluptatem possimus veniam quibusdam officiis molestias ut assumenda, deserunt eos vitae culpa libero obcaecati!</p>
                </div>
              </div>


              <div class="row wow bounceIn">
                <div class="col-lg-4">
                    <img src="img/rose.jpeg">
                </div>
                <div class="col-lg-4">
                        <img src="img/rose.jpeg">
                </div>
                <div class="col-lg-4">
                        <img src="img/rose.jpeg">
                </div>
              </div>
              <div class="row wow bounceIn">
                    <div class="col-lg-4">
                        <img src="img/rose.jpeg">
                    </div>
                    <div class="col-lg-4">
                            <img src="img/rose.jpeg">
                    </div>
                    <div class="col-lg-4">
                            <img src="img/rose.jpeg">
                    </div>
                  </div>

                  <div class="row wow bounceIn">
                        <div class="col-lg-4">
                            <img src="img/rose.jpeg">
                        </div>
                        <div class="col-lg-4">
                                <img src="img/rose.jpeg">
                        </div>
                        <div class="col-lg-4">
                                <img src="img/rose.jpeg">
                        </div>
                      </div>
                      <div class="row wow bounceIn">
                            <div class="col-lg-4">
                                <img src="img/rose.jpeg">
                            </div>
                            <div class="col-lg-4">
                                    <img src="img/rose.jpeg">
                            </div>
                            <div class="col-lg-4">
                                    <img src="img/rose.jpeg">
                            </div>
                          </div>
                          <div class="row wow bounceIn">
                                <div class="col-lg-4">
                                    <img src="img/rose.jpeg">
                                </div>
                                <div class="col-lg-4">
                                        <img src="img/rose.jpeg">
                                </div>
                                <div class="col-lg-4">
                                        <img src="img/rose.jpeg">
                                </div>
                              </div>
                              <div class="row wow bounceIn">
                                    <div class="col-lg-4">
                                        <img src="img/rose.jpeg">
                                    </div>
                                    <div class="col-lg-4">
                                            <img src="img/rose.jpeg">
                                    </div>
                                    <div class="col-lg-4">
                                            <img src="img/rose.jpeg">
                                    </div>
                                  </div>
                                  <div class="row wow bounceIn">
                                        <div class="col-lg-4">
                                            <img src="img/rose.jpeg">
                                        </div>
                                        <div class="col-lg-4">
                                                <img src="img/rose.jpeg">
                                        </div>
                                        <div class="col-lg-4">
                                                <img src="img/rose.jpeg">
                                        </div>
                                      </div>

        

<!-- Footer Part -->
                <footer>
                <div class="row foot">
                    <div class="col-lg-4 logo">
                            <h1>LOGO</h1>

                            <p><i class="fa fa-amazon"></i></p>
                            <p>Insta</p>
                            <p>yt</p>
                            <p>twitter</p>
                            </div>
                    <div class="col-lg-4 links">
                            <a href="#">Home</a><br>
                            <a href="#">About</a><br>
                            <a href="#">Gallery</a><br>
                            <a href="#">Contact</a>
                    </div>
                    <div class="col-lg-4">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d124425.49232029292!2d77.47501432863795!3d12.952860788769707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3dde41c9d541%3A0xdd5400ac1d9e0a9a!2sNIIT+Bangalore+Vijayanagar+Centre!5e0!3m2!1sen!2sin!4v1562819491176!5m2!1sen!2sin" width="300" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>

                </div>


                </footer>

      
    </body>
</html>
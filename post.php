<!DOCTYPE html>
<html>
<head>
  <title>Tutor Post</title>
  <link rel="stylesheet" type="text/css" href="css/post.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  

  <script src="js/post.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">Tutor Finder</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="tutor.php">Tutor</a></li>
      <li><a href="searchTution.php">search Tution</a></li>
      <li class="active"><a href="post.php">Create Post</a></li>
      
      <li><a href="tutorPanel.php">Tutor Panel</a></li>
      <li><a href="#">Account Settings</a></li>
      <li><a href="logout.php"><?php echo '<span>&#10060</span>'?> Logout</a></li>
    </ul>
  </div>
</nav> 

        <div class="container">
                <form name="post" method="post" action="post-handler.php" onsubmit="return(validate());">
                
                  <div class="row">
                    <div class="col-25">
                      <label for="divi">Division</label>
                    </div>
                    <div class="col-75">
                      <select id="divi" name="divisions">
                        <option value="-1" selected>[choose yours]</option>
                        <option value="Karachi">Karachi</option>
                        <option value="Lahore">Lahore</option>
                        <option value="Quetta">Quetta</option>
                        <option value="Rawalpindi">Rawalpindi</option>
                        <option value="Fasialbad">Fasialbad</option>
                        <option value="Islamabad">Islamabad</option>
                        <option value="Peshawar">Peshawar</option>
                      </select>
                      <p id="derror" style="color:red;"></p>
                    </div>
                  </div>

                  <div class="row">
                        <div class="col-25">
                          <label for="medium">Medium</label>
                        </div>
                        <div class="col-75">
                          <select id="medium" name="mediums">
                            <option value="-1" selected>[choose yours]</option>
                            <option value="English">English</option>
                            <option value="Urdu">Urdu</option>
                          </select>
                          <p id="merror" style="color:red;"></p>
                        </div>
                      </div>

                      <div class="row">
                            <div class="col-25">
                              <label for="sub">Interested Subject</label>
                              
                            </div>
                            <div class="col-75">
                              <select id="sub" name="subjects">
                                <option value="-1" selected>[choose yours]</option>
                                <option value="English">English</option>
                                <option value="Urdu">Urdu</option>
                                <option value="Math">Math</option>
                                <option value="Higher Math">Higher Math</option>
                                <option value="Biology">Biology</option>
                                <option value="Agriculture">Agriculture</option>
                              </select>
                              <p id="serror" style="color:red;"></p>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-25">
                              <label for="esalary">Expected Salary</label>
                            </div>
                            <div class="col-75">
                              <input type="text" id="esalary" name="salary" placeholder="Your Expected Salary..">
                              <p id="error" style="color:red;"></p>
                            </div>
                          </div>

                  <div class="row">
                    <div class="col-25">
                      <label for="add">Address</label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="add" name="address" placeholder="Write something..">
                      <p id="aerror" style="color:red;"></p>
                    </div>
                  </div>
                  <div class="row">
                    <input type="submit" value="Submit">
                  </div>
                </form>
              </div>
</body>
</html>
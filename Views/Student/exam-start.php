<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>exam_time</title>

  <!-- Custom fonts for this template-->
  <link href="/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">

        <div class="sidebar-brand-text mx-3">Exam index</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Thong tin bai thi</span>
        </a>
      </li>

        <li class="nav-item active" style="position: fixed; margin-top: 120px;">
            <a class="nav-link" href="index.html">
                <p>Thoi gian con lai</p>
                <div id="status"></div>
                <script type="text/javascript">countDown(60 * 15,"status")</script>
            </a>
        </li>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>


          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">


            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Ten nguoi dang nhap</span>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Trang cá nhân
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Đăng xuất
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Ten bai </h1>
           </div>

          <!-- Content Row -->
          <div class="row">


          <!-- Content Row -->

          <div class="row">


            <div class="col-lg-12 mb-4">
              <!-- Loop start ->
              <!-- Item -->
              <form action="./submit" method="post">
              <?php foreach ($questions as $index => $question) { ?>
              <div class="card shadow mb-4">
                  <div class="card-header py-3">
                      <h6 class="m-0 font-weight-bold text-primary">Câu hỏi <?php echo $index + 1; ?>:</h6>
                  </div>
                  <div class="card-body">

                      <p><?php echo $question->content; ?>
                      </p>
                      <?php if ($question->isMultipleAnswers()) { ?>
                      <?php foreach (json_decode($question->answers) as $a_idx => $answer) { ?>
                        <?php $id = 'q' . $index . 'a' . $a_idx; ?>
                        <?php $name = 'questions[' . $question->id . '][' . $a_idx . ']'; ?>
                          <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="<?php echo $id; ?>" name="<?php echo $name; ?>">
                              <label class="custom-control-label" for="<?php echo $id; ?>"><?php echo $answer; ?></label>
                          </div>
                        <?php } ?>
                      <?php } else { ?>
                          <?php foreach (json_decode($question->answers) as $a_idx => $answer) { ?>
                              <?php $id = 'q' . $index . 'a' . $a_idx; ?>
                              <?php $name = 'questions[' . $question->id . ']'; ?>
                              <div class="form-check">
                                  <label class="form-check-label" for="<?php echo $id; ?>">
                                      <input type="radio" class="form-check-input" id="<?php echo $id; ?>" name="<?php echo $name; ?>" value="<?php echo $a_idx ?>"> Option 1
                                  </label>
                              </div>
                          <?php } ?>
                      <?php } ?>
                  </div>
              </div>
              <?php } ?>

              <!-- Loop end -->

              <button class="btn btn-primary btn-user btn-block">Nop bai</button>
              </form>

            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Nhom 3_23 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
      <!-- Java Script Button Submit When time countdown to 0 - Auto Submit -->
  <!-- Bootstrap core JavaScript-->
  <script src="/assets/vendor/jquery/jquery.min.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/assets/js/sb-admin-2.min.js"></script>
<!-- input Jquery -->
      <script type="text/javascript" src="jquery-3.3.1.js"></script>
      <script type="text/javascript">
          function SubmitForm(){
              $("form").submit();
          };
          setTimeout(SubmitForm,<?php echo $exam->duration; ?> * 60 * 1000);//5*60*1000
          function countDown (secs,elem){
              var element = document.getElementById(elem);
              var minutes = Math.floor(secs / 60);
              var secs_offset = secs % 60;
                  element.innerHTML = minutes + ' Phut ' + secs_offset + ' Giay';
                  if(secs<1){
                      clearTimeout(timer);
                      element.innerHTML = '<h2>Time Out!</h2>';
                      element.innerHTML +='CLICK HERE TO SUBMIT FORM';
                  }
                  secs--;
                  var timer =  setTimeout('countDown('+secs+',"'+elem+'")',1000);
          }
      </script>
      <div id="status"></div>
      <script type="text/javascript">countDown(60 * <?php echo $exam->duration; ?>,"status")</script>;
</body>

</html>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Teacher - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="../../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../../assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Teacher Dashboard</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Cong cu</span></a>
      </li>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Thao tac ky thi</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Chuc nang:</h6>
            <a class="collapse-item" href="#" data-toggle="modal" id="addExam">Them ky thi</a>
            <a class="collapse-item" href="#" data-toggle="modal" id ="updateExam" >Cap nhat ky thi</a>
          </div>
        </div>
      </li>
      <!-- NAV BAR -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Thao tac cau hoi</span>
        </a>
        <div id="collapseThree" class="collapse" aria-labelledby="heading" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Chuc nang:</h6>
            <!--Trigger Collapse-item with modal-->
            <a class="collapse-item" href="#" data-toggle="modal" id="addQuestion">Them cau hoi</a>
            <a class="collapse-item" href="#" data-toggle="modal" id="updateQuestion">Sua cau hoi</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Mon hoc</span>
        </a>
        <div id="collapseFour" class="collapse" aria-labelledby="heading" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Chuc nang:</h6>
            <!--Trigger Collapse-item with modal-->
            <a class="collapse-item" href="/teacher/subjects/create" id="addSubject">Them mon hoc</a>
          </div>
        </div>
      </li>

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- Divider -->
    <hr class="sidebar-divider">

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
            <h1 class="h3 mb-0 text-gray-800">Teacher - Dashboard</h1>
          </div>

          <!-- Content Row -->


          <!-- Content Row -->

          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Thong tin nguoi dung</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pie Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Danh sach ky thi</h6>
                </div>

                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->

            <!-- Earnings (Monthly) Card Example -->

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
    <!--Modal Subject Select-->
    <div class="modal" id="selectSubjectModal" role="dialog">
      <div class="modal-dialog">
        <!--Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Lua chon mon hoc</h5>
            <button class="close" type="button" data-dismiss="modal">
            </button>
          </div>
          <div class="modal-body">Lua chon mon hoc de them cau hoi</div>
          <?php foreach ($subjects as $subject) { ?>
          <a class="modal-body" href="/teacher/subjects/<?php echo $subject->id; ?>/questions/create"><?php echo $subject->name; ?></a>
          <?php } ?>
          <div class="modal-footer">
          </div>
        </div>
      </div>
    </div>
    <!--Exam Select Modal-->
    <div class="modal" id="selectExamModal" role="dialog">
      <div class="modal-dialog">
        <!--Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Lua chon ky thi</h5>
            <button class="close" type="button" data-dismiss="modal">
            </button>
          </div>
          <div class="modal-body">Lua chon mon hoc de tao ky thi</div>
          <?php foreach ($subjects as $subject) { ?>
              <a class="modal-body" href="/teacher/subjects/<?php echo $subject->id; ?>/exams/create"><?php echo $subject->name; ?></a>
          <?php } ?>
          <div class="modal-footer">
          </div>
        </div>
      </div>
    </div>
    <!--EXAM SELECT TO EDIT MODAL-->
    <div class="modal" id="updateExamModal" role="dialog">
      <div class="modal-dialog">
        <!--Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Lua chon ky thi de chinh sua</h5>
            <button class="close" type="button" data-dismiss="modal">
            </button>
          </div>
          <div class="modal-body">Lua chon mon hoc de tao ky thi</div>
          <a class="modal-body" href="google.com">Ky thi so 1</a>
          <a class="modal-body" href="google.com">Ky thi so 2</a>
          <a class="modal-body" href="google.com">Ky thi so 3</a>
          <a class="modal-body" href="google.com">Ky thi so 4</a>
          <a class="modal-body" href="google.com">Ky thi so 5</a>
          <div class="modal-footer">
          </div>
        </div>
      </div>
    </div>
    <!--SELECT SUBJECT TO EDIT QUESTION QuIZ-->
    <div class="modal" id="updateQuestionModal" role="dialog">
      <div class="modal-dialog">
        <!--Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Lua chon ky thi de chinh sua</h5>
            <button class="close" type="button" data-dismiss="modal">
            </button>
          </div>
          <div class="modal-body">Lua chon mon hoc de chinh sua cau hoi</div>
          <a class="modal-body" href="google.com">mon hoc so 1</a>
          <a class="modal-body" href="google.com">mon hoc so 2</a>
          <a class="modal-body" href="google.com">mon hoc so 3</a>
          <a class="modal-body" href="google.com">mon hoc so 4</a>
          <a class="modal-body" href="google.com">mon hoc so 5</a>
          <div class="modal-footer">
          </div>
        </div>
      </div>
    </div>
  <!-- Bootstrap core JavaScript-->
  <script src="../../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->

  <script src="../../assets/js/sb-admin-2.min.js"></script>
   <!-- Script for add Question Modal -->
    <script>
      $(document).ready(function(){
        $("#addQuestion").click(function(){
          $("#selectSubjectModal").modal("toggle");
        });
      });
    </script>
    <!-- Script for add Question Modal -->
    <script>
      $(document).ready(function(){
        $("#addExam").click(function(){
          $("#selectExamModal").modal("toggle");
        });
      });
    </script>
    <!-- Script for add Question Modal -->
    <script>
      $(document).ready(function(){
        $("#updateExam").click(function(){
          $("#updateExamModal").modal("toggle");
        });
      });
    </script>
    <!-- Script for add Update Question Modal select subject to update -->
    <script>
      $(document).ready(function(){
        $("#updateQuestion").click(function(){
          $("#updateQuestionModal").modal("toggle");
        });
      });
    </script>
</body>

</html>

<?php 
    include_once "dbEcommerce.php";
    $con=mysqli_connect($host, $user, $pass, $db);
    if(isset($_REQUEST['idBorrar'])){
      $id = mysqli_real_escape_string($con, $_REQUEST['idBorrar']??'');
      $query = "DELETE FROM usuarios where id = '".$id."';";
      $res = mysqli_query($con, $query);
      if($res){
        ?>
        <div class="alert alert-warning float-right" role="alert">
          Usuario borrado con exito
        </div>
        <?php
      }else{
        ?>
        <div class="alert alert-danger float-right" role="alert">
          Error al borrar <?php echo mysqli_error($con); ?>
        </div>
        <?php
      }
    }
  ?>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Clientes</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Nombre</th>
                  <th>Email</th>
                </tr>
                </thead>
                <tbody>
                    <?php 
                        
                        $query="SELECT id,email,nombre from clientes; ";
                        $res=mysqli_query($con,$query);
                        
                        while($row=mysqli_fetch_assoc($res)) {
                    ?>
                <tr>
                  <td><?php echo $row['nombre'] ?></td>
                  <td><?php echo $row['email'] ?></td>
                </tr>
                <?php } ?>
                
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
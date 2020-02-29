<?php
  //include php Conn.php file
  include_once("Conn.php");
  $fetchdata=new DB_con();
?>


<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<!--popup window(start)-->
<div id="popupWindow" class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Payments!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input type="text" id="retriveId" name="retriveId" class="form-control" placeholder="Student Id" aria-label="Student Id" aria-describedby="basic-addon2">
      </div>
      <div class="modal-footer">
        <form action="index.php" method="POST" id="popupform">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" name="retrivebtn" class="btn btn-primary" id="formsubmit">Retrive Payments</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!--popup window(end)-->

<!--payment container-->
<div class="container">
  <div class="row">
  
  <!--left row-->
  <div class="col-md-5">
    <h3>Subjects</h3>
    <ul class='list-group'>
    
    <!-- get subjects -->  
    <?php
    if( isset($_POST['id'])) {
      $a = $_POST['id'];  
    }
    // call fetchsub() method
    $sql=$fetchdata->fetchsub('10012');
    while($row = $sql->fetch_assoc()){
      echo "<li class='list-group-item d-flex justify-content-between align-items-center'>";
      echo $row["name"];
      echo "<span class='badge badge-primary badge-pill'>"; echo $row["value"];
      echo"</span>";
      echo"</li>";
    }?>
    </ul>  
  </div>

  <!--middle row-->
  <!-- fetch date into form by calling fetchdata() method -->
  <?php
    $sql=$fetchdata->fetchdata('10012');
    $row = mysqli_fetch_array($sql);
  ?>
  
  <div class="col-md-6">
  <h3>Payment Details</h3>
  <form class="needs-validation" novalidate>
  <div>
    <div class="form-row">
      <div class="col-md-6 mb-6">
        <label for="validationTooltip01">First name</label>
        <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" <?php echo 'value="' . $row['first_name'] . '"'; ?> required>
        <div class="valid-tooltip">
          Looks good!
        </div>
      </div>
      <div class="col-md-6 mb-6">
        <label for="validationTooltip02">Last name</label>
        <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" <?php echo 'value="' . $row['last_name'] . '"'; ?> required>
        <div class="valid-tooltip">
          Looks good!
        </div>
      </div>
    <div class="form-row">
      <div class="col-md-6 mb-6">
      <label for="validationTooltip03">Branch</label>
      <input type="text" class="form-control" id="validationTooltip03" placeholder="Branch Name:" required>
      <div class="invalid-tooltip">
        Please provide a valid city.
      </div>
    </div>
    <div class="col-md-6 mb-6">
     <label for="validationTooltip03">Fee</label>
      <!-- calculate payment -->
      <?php
          $sql=$fetchdata->calfee('10012');
          $row=mysqli_fetch_array($sql);
      ?>
        <input type="text" class="form-control" id="validationTooltip03" value=<?php echo $row['fee']?> required>
        <div class="invalid-tooltip">    
        </div>
      </div>
      </div>
    </div>
  <div>
  <div class="form-row">
    <label for="cname">Name on Card</label>
    <input class="form-control" type="text" id="cname" name="cardname" placeholder="Name on Card">
    <label for="ccnum">Credit card number</label>
    <input class="form-control" type="text" id="ccnum" name="cardnumber" placeholder="0000-0000-0000-0000">
    <label for="expmonth">Exp Month</label>
    <input class="form-control" type="text" id="expmonth" name="expmonth" placeholder="Exp. Month">
  </div>
  </div>
  
  <div class="row">
    <div class="col-md-3 mb-3">
      <label for="expyear">Exp Year</label>
      <input class="form-control" type="text" id="expyear" name="expyear" placeholder="YYYY">
      </div>
      <div class="col-md-3 mb-3">
        <label for="cvv">CVV</label>
        <input class="form-control" type="text" id="cvv" name="cvv" placeholder="CVV">
      </div>
    </div>
    <div style="width: 100%">
    <button class="btn btn-primary" type="button">Submit</button>
    </div>
  </div>
	</form>
</div>

<!--right row-->
<div class="col-md-3"></div>
</div>
</div>
</body>

<!--script files -->
<link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous"/>
<script src="script/jquery-3.4.1.js" crossorigin="anonymous"></script>
<script src="script/popper.min.js"  crossorigin="anonymous"></script>
<script src="script/bootstrap.min.js" crossorigin="anonymous"></script>
<script>
//default ready false means -> dialog box is visible
var ready = false;
$(document).ready(function(){
  //if ready = false
  if(!ready){
      $('#popupWindow').modal('show');
  }
  var id1 = $('#retriveId').val(); 

  // if click retrive button
  $('#formsubmit').click(function(){
     $.ajax({
      type: 'post',
      data: {id: id1},
      success: function(response){
        ready = true;
        $('#popupWindow').modal('toggle');
      }
     });
  });
});
</script>

</html>

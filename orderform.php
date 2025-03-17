<?php 
include 'config.php';

session_start();
$user = $_SESSION['username'];

$db = new Database();
$db->select('options','site_name',null,null,null,null);
$site_name = $db->getResult();


?>
<!DOCTYPE HTML>  
<html>
<head>
<style>
    .p{
        color: white;
        font-size: 16px;
    }
    
.error {color: #FF0000;}
</style>
</head>
<body bgcolor="#ffb59e">  

<?php
// define variables and set to empty values
$nameErr = $emailErr = $genderErr = $websiteErr = "";
$name = $email = $gender = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed";
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format";
    }
  }
    
  if (empty($_POST["website"])) {
    $website = "";
  } else {
    $website = test_input($_POST["website"]);
    // check if URL address syntax is valid (this regular expression also allows dashes in the URL)
    if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$website)) {
      $websiteErr = "Invalid URL";
    }
  }

  if (empty($_POST["comment"])) {
    $comment = "";
  } else {
    $comment = test_input($_POST["comment"]);
  }

  if (empty($_POST["gender"])) {
    $genderErr = "Gender is required";
  } else {
    $gender = test_input($_POST["gender"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<p style="color: white;font-size: 40px;font-weight: bolder;">Order Formalyties </p>
<p><span class="error"></span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
 <p class="p"> Name: </p><input type="text" name="name" value="<?php echo $name;?>">
  <span class="error"></span>
  <br>
  <p class="p"> E-mail:</p> <input type="text" name="email" value="<?php echo $email;?>">
  <span class="error"></span>
  <br>
  <p class="p"> Work Phone No.:</p> <input type="text" name="website" value="<?php echo $website;?>">
  <span class="error"></span>
  <br>
  <p class="p">  Address:</p> <textarea name="comment" rows="5" cols="40"><?php echo $comment;?></textarea>
  <br>
  <p class="p"> Cell No.:</p> <input type="text" name="website" value="<?php echo $website;?>">
  <span class="error"></span>
  <br>
  <p class="p"> Date Of Birth:</p> <input type="text" name="website" value="<?php echo $website;?>">
  <span class="error"></span>
  <br>
  <p class="p">  Other Information:</p> <textarea name="comment" rows="5" cols="40"><?php echo $comment;?></textarea>
  <br>
  <p class="p"> Gender:</p>
  <input type="radio" name="gender" <?php if (isset($gender) && $gender=="female") echo "checked";?> value="female">Female
  <input type="radio" name="gender" <?php if (isset($gender) && $gender=="male") echo "checked";?> value="male">Male
  <input type="radio" name="gender" <?php if (isset($gender) && $gender=="other") echo "checked";?> value="other">Other  
  <span class="error"><span>
  <br><br>

<a href="index.php" >
      <input type="button" name="submit" value="Submit" >
</a> 

 
</form>
</body>
</html>
<!--Contact section-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact</title>
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
<section id="contact" class=" text-center text-light py-4">
   <h1 >Contact Us</h1>
   <a href="index.php">Go To Home</a>
    <div class="container">
       <div class="row">
          <div class="col-md-12">
            <form action="https://formspree.io/fr7199732@gmail.com" method="post">
                  <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="Name" class="form-control" placeholder="Enter Your Username"  autocomplte="off" required>
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="Email" class="form-control" placeholder="Enter Your Email"  autocomplte="off" required>
                  </div>
                  <div class="form-group">
                    <label for="email">Phone Number</label>
                    <input type="text" id="email" name="Email" class="form-control" placeholder="Enter Your Phone Number"  autocomplte="off" required>
                  </div>
                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea rows="10" cols="40" name="Message" id="message"  class="form-control" placeholder="Enter Your Message" autocomplte="off"></textarea>
                  </div>
                  <input type="submit" value="Send" class="btn-success btn btn-lg" required>
                  <input type="reset" value="Reset" class="btn-danger btn btn-lg" required>
                </form>
                
          </div>
       </div>
    </div>

</section>
</body>
</html>



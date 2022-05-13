<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Module</title>
    <!-- Bootstrap CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
<form id="regform">
    <div class="mb-3">
        <label class="form-label">Email address</label>
        <input type="text" class="form-control" id="email" name="email" placeholder="Email">
    </div>
    <div class="mb-3">
        <label class="form-label">Password</label>
        <input name="pass" id="pass" type="password" class="form-control"  placeholder="Password">
        <input type="submit" class="btn btn-primary mt-4" value="Submit" id="submit">
    </div>
</form>
</div>

<script>
    $(document).ready(function() {
        $("#regform").on("submit", function(e) {
            e.preventDefault();
            let name = $("#email").val();
            let pass = $("#pass").val();
            try {
                $.ajax({
                    url: "userreg",
                    type: "POST",
                    data: {
                        email: name,
                        pass: pass
                    },
                    success: function (data) {
                        if(data == 1) {
                            alert("Registered")
                        } else {
                            alert("Please fill all data")
                        }
                    }
                }
            }catch(e) {
                alert("Some error occured")
            }
            $("#email").val("")
            $("#pass").val("")
        })

    })
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
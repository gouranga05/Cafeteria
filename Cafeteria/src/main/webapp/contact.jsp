<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Give Order Details</title>
    <link rel="stylesheet" href="./styles.css">
    <style>
        * {
            background-color: beige;
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }

        body {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgb(76, 58, 76);

        }

        .container {
            width: 90%;
            height: 60vh;
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0px 5px 25px rgba(0, 0, 0, 0.2);
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;

        }

        .container form {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;


        }

        .inputBox {
            width: 100%;
            margin: 10px 0;
            border-radius: 5px;
            overflow: hidden;
        }

        .inputBox input[type="text"],
        .inputBox input[type="email"] {
            width: 100%;
            height: 50px;
            border-radius: 5px;
            border: none;
            outline: none;
            overflow: hidden;
            border: 1px solid rgba(0, 0, 0, 0.2);
            padding: 0px 10px;
            font-size: 16px;
            color: #444;
        }

        .inputBox textarea {
            width: 100%;
            height: 120px;
            border-radius: 5px;
            border: none;
            outline: none;
            overflow: hidden;
            border: 1px solid rgba(0, 0, 0, 0.2);
            padding: 0px 10px;
            font-size: 16px;
            color: #444;
        }

        .inputBox button {
            width: 100%;
            padding: 10px 20px;
            border: none;
            outline: none;
            background: rgb(0, 119, 255);
            color: #FFF;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;

        }

        .inputBox button:hover {
            background: rgb(0, 17, 255);
            transition: all 0.3s ease;
        }

        ::placeholder {
            font-size: 16px;
        }

        .alert {
            width: 100%;
            background: rgb(0, 255, 106);
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            font-size: 18px;
            font-weight: 900;
            display: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <form action="OrderDetails" method="post" id="contactForm">
            <div class="alert">Your message sent</div>

            <div class="inputBox">
                <input type="text" id="name" name="name" placeholder="Your name...." />
            </div>

            <div class="inputBox">
                <input type="text" id="number" name="number" placeholder="Your Mobile NUmber....." />
            </div>
            <div class="inputBox">
                <textarea id="msgContent" name="address" cols="30" rows="10" placeholder="Address"></textarea>
            </div>

            <div class="inputBox">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>

    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/firebase/7.14.1-0/firebase.js"></script> -->
    <!--  <script src="./mail.js"></script>-->
</body>

</html>
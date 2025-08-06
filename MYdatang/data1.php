<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "mydatang";

    $conn = new mysqli($servername, $username, $password, $database);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $nama = $_POST['nama'];
    $status = $_POST['status'];
    $kelas = $_POST['kelas'];
    $tarikh = date("d.m.Y");

    // Insert data into database
    $sql = "INSERT INTO checklistpelajar (namaPelajar, status, kelas, tarikh)
    VALUES ('$nama', '$status', '$kelas', '$tarikh')";

    if ($conn->query($sql) === TRUE) {

        echo "<script>alert('Kehadiran telah diisi');</script>";

        echo "<script>window.setTimeout(function(){ window.location.href = 'index.html'; }, 1000);</script>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
?>
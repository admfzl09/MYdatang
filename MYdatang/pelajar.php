<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kehadiran Pelajar</title>
    <link rel="stylesheet" href="dataKehadiran.css">
  </head>
  <body>
    <div class="navTop">
        <img src="./img/logo/logo1.png" width="30px" height="30px" alt="">
        <ul class="navList">
          <li><a href="index.html">Home</a></li>
          <li><a href="aboutUs.html">About Us</a></li>
          <li><a href="support.html">Support</a></li>
        </ul>
        <span class="admin" onclick="location.href='admin.html';" style="cursor: pointer;">Admin</span>
    </div>
    <h2>Pelajar</h2>
    <table>
        <tr>
          <th colspan="5" class="title" >Checklist</th>
        </tr>
        <tr>
            <th>No.</th>
            <th>Nama Pelajar</th>
            <th>Status</th>
            <th>Kelas</th>
            <th>Tarikh</th>
        </tr>

      <?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "mydatang";

      // Create connection
      $conn = new mysqli($servername, $username, $password, $dbname);

      // Check connection
      if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
      }

      $sql = "SELECT namaPelajar, status, kelas, tarikh FROM checklistpelajar";
      $result = $conn->query($sql);

      $serialNumber = 1;

      if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) {
              echo "<tr>";
              echo "<td>" . $serialNumber . "</td>";
              echo "<td>" . $row["namaPelajar"] . "</td>";
              echo "<td>" . $row["status"] . "</td>";
              echo "<td>" . $row["kelas"] . "</td>";
              echo "<td>" . $row["tarikh"] . "</td>";
              echo "</tr>";
              $serialNumber++;
          }
      } else {
          echo "<tr><td colspan='8'>No data found</td></tr>";
      }

      $conn->close();
      ?>
    </table>
  </body>
</html>

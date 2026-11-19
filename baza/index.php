
<?php
$conn = new mysqli("localhost", "root", "", "moja_baza");

if ($conn->connect_error) {
    die("Blad polaczenia z baza");
}

$sql = "SELECT * FROM uczniowie";
$wynik = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Uczniowie</title>
</head>
<body>

<h1>Lista uczniow</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Imie</th>
        <th>Nazwisko</th>
    </tr>

    <?php
    while ($wiersz = $wynik->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $wiersz["id"] . "</td>";
        echo "<td>" . $wiersz["imie"] . "</td>";
        echo "<td>" . $wiersz["nazwisko"] . "</td>";
        echo "</tr>";
    }
    ?>

</table>

</body>
</html>

<?php
$conn->close();
?>


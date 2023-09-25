<?php 
$arrs = ['PHP', 'HTML', 'CSS', 'JS'];

echo "<style>";
echo "table { border-collapse: collapse; }";
echo "th, td { border: 1px solid black; padding: 8px; }";
echo "</style>";

echo "<table>";
echo "<tr>";
echo "<th>Tên khoá học</th>";
echo "</tr>";

for ($i = 0; $i < count($arrs); $i++) {
    echo "<tr>";
    echo "<td>" . $arrs[$i] . "</td>";
    echo "</tr>";
}

echo "</table>";
?>
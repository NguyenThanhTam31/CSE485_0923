<?php
$array = array(1, 2, 3, 4, 5);

// Xóa phần tử thứ 3 trong mảng
array_splice($array, 3, 1);

// In mảng sau khi xóa
echo '<pre>';
print_r($array);
echo '</pre>';
?>
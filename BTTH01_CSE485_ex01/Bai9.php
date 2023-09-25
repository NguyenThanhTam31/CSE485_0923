<?php 
function convertToLowercase($arr) {
    return array_map('strtolower', $arr);
}

$arr1 = ['a', 'b', 'ABC'];
$arr2 = ['1', 'B', 'C', 'E'];
$arr3 = ['a', 0, null, false];

$result1 = convertToLowercase($arr1);
$result2 = convertToLowercase($arr2);
$result3 = convertToLowercase($arr3);

echo '<pre>';
var_dump($result1);
var_dump($result2);
var_dump($result3);
print_r($result1);
print_r($result2);
print_r($result3);
echo '</pre>';
?>
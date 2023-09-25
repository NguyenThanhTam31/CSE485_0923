<?php
$arrs = [2, 5, 6, 9, 2, 5, 6, 12, 5];

// Tính tổng các phần tử
$sum = array_sum($arrs);

// Tính tích các phần tử
$product = array_product($arrs);

// Tính hiệu các phần tử 
$diff = $arrs[0] - array_sum(array_slice($arrs, 1));

// Tính thương các phần tử 
$quotient = $arrs[0] / array_product(array_slice($arrs, 1));

// Hiển thị kết quả
echo "Tổng các phần tử = " . implode(" + ", $arrs) . " = " . $sum . "<br>";
echo "Tích các phần tử = " . implode(" * ", $arrs) . " = " . $product . "<br>";
echo "Hiệu các phần tử = " . implode(" - ", $arrs) . " = " . $diff . "<br>";
echo "Thương các phần tử = " . implode(" / ", $arrs) . " = " . $quotient . "<br>";
?>
<!--Check update -->

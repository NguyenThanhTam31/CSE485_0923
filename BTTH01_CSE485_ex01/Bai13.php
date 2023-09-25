<?php
$numbers = [78, 60, 62, 68, 71, 68, 73, 85, 66, 64, 76, 63, 75, 76, 73, 68, 62, 73, 72, 65, 74, 62, 62, 65, 64, 68, 73, 75, 79, 73];

// Tính giá trị trung bình
$average = array_sum($numbers) / count($numbers);

// Liệt kê các số lớn hơn giá trị trung bình
$greaterThanAverage = [];
foreach ($numbers as $number) {
    if ($number > $average) {
        $greaterThanAverage[] = $number;
    }
}

// Liệt kê các số nhỏ hơn hoặc bằng giá trị trung bình
$lessThanOrEqualAverage = [];
foreach ($numbers as $number) {
    if ($number <= $average) {
        $lessThanOrEqualAverage[] = $number;
    }
}

// In kết quả
echo '<pre>';
echo "Giá trị trung bình của mảng: " . $average . "\n";
echo "Các số lớn hơn giá trị trung bình: " . implode(", ", $greaterThanAverage) . "\n";
echo "Các số nhỏ hơn hoặc bằng giá trị trung bình: " . implode(", ", $lessThanOrEqualAverage) . "\n";
echo '</pre>';
?>


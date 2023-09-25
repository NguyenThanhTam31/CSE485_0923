<?php 
$array = ['programming', 'php', 'basic', 'dev', 'is', 'program is PHP'];

$maxLength = 0;
$maxString = '';
$minString = $array[0];
$minLength = strlen($minString);

foreach ($array as $string) {
    $length = strlen($string);

    if ($length > $maxLength) {
        $maxLength = $length;
        $maxString = $string;
    }

    if ($length < $minLength) {
        $minLength = $length;
        $minString = $string;
    }
}

echo "Chuỗi lớn nhất là '$maxString', độ dài = $maxLength" . "<br>";
echo "Chuỗi nhỏ nhất là '$minString', độ dài = $minLength";
?>
<?php
function convertToUppercase($array) {
    $result = array_map(function($element) {
        if (is_string($element)) {
            return strtoupper($element);
        }
        return $element;
    }, $array);

    return $result;
}


$arrs1 = ['1', 'b', 'c', 'd'];
$arrs2 = ['a', 0, null, false];

$convertedArray1 = convertToUppercase($arrs1);
$convertedArray2 = convertToUppercase($arrs2);

print_r($convertedArray1);
echo '<br>';
print_r($convertedArray2);
?>
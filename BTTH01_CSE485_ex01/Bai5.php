<?php 
$a = [
    'a' => [
        'b' => 0,
        'c' => 1
    ],
    'b' => [
        'e' => 2,
        'o' => [
            'b' => 3
        ]
    ]
];

// Lấy giá trị = 3 với key là 'b'
$value1 = $a['b']['o']['b'];
echo $value1; // Output: 3

// Lấy giá trị = 1 với key là 'c'
$value2 = $a['a']['c'];
echo $value2; // Output: 1

// Lấy thông tin của phần tử có key là 'a'
$info = $a['a'];
print_r($info); // Output: Array ( [b] => 0 [c] => 1 )
?>
<?php 
include('../../config/config.php');
// Lấy giá trị product_id từ yêu cầu GET
$product_id = isset($_GET['product_id']) ? $_GET['product_id'] : '';

// Truy vấn để lấy danh sách biến thể dựa trên product_id
$sql_variant_list = "SELECT * FROM product_variant WHERE product_id = '".$product_id."' ";
$query_variant_list = mysqli_query($mysqli ,$sql_variant_list);

// Tạo HTML cho danh sách biến thể
$options = '';
while ($row_variant = $query_variant_list->fetch_assoc()) {
    $options .= '<option value="' . $row_variant['variant_id'] . '">' . $row_variant['variant_name'] . '</option>';
}

// Đóng kết nối cơ sở dữ liệu
$mysqli->close();

// Trả về danh sách biến thể dưới dạng HTML
echo $options;
?>

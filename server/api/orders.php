<?php

if ($request['method'] === 'POST') {
  $link = get_db_link();
  $requestSubmit = $request['body'];
  if(!isset($_SESSION['cart_id'])){
    throw new ApiError('Active shopping cart is required', 400);
  }
  if(isset($_SESSION['cart_id'])){
    $name = $requestSubmit['name'];
    $creditCard = $requestSubmit['creditCard'];
    $shippingAddress = $requestSubmit['shippingAddress'];
    if(!isset($name)){
      throw new ApiError('Name is required', 400);
    }
    else if(!isset($creditCard)){
      throw new ApiError('Credit Card is required', 400);
    }
    else if(!isset($shippingAddress)){
      throw new ApiError('Address is required', 400);
    }
  $clientInsert = "INSERT INTO orders (`cartId`, `name`, `creditCard`, `shippingAddress`) VALUES (?,?,?,?)";
  $prepared = mysqli_prepare($link, $clientInsert);
  mysqli_stmt_bind_param($prepared, 'dsss', $_SESSION['cart_id'], $name, $creditCard, $shippingAddress);
  mysqli_stmt_execute($prepared);
  $insert = mysqli_insert_id($link);
  $queryOrders = "SELECT name, creditCard, shippingAddress FROM orders WHERE $insert = orders.`orderId`";
  $query = mysqli_query($link, $queryOrders);
  $response = mysqli_fetch_assoc($query);
  $response['body']= $response;
  send($response);
  unset($_SESSION['cart_id']);
  }
}
?>

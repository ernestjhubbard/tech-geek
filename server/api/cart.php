<?php
$link = get_db_link();

if ($request['method'] === 'GET') {
  if(!isset($_SESSION['cart_id'])){
    $response['body'] = [];
    send($response);
  }
  else{
    $cartId = $_SESSION['cart_id'];
    $cartDB =   "SELECT * FROM cartItems JOIN products ON cartItems.`productId` = products.`productId` WHERE cartId = $cartId";
    $result = mysqli_query($link, $cartDB);
    $output = [];
    while($row = mysqli_fetch_assoc($result)){
      $output[] = $row;
    }
    $response['body'] = $output;
    send($response);
  }
}

if($request['method'] === 'POST'){
    if(!isset($request['body']['productId']) || intval($request['body']['productId']) === 0){
      throw new ApiError('Not a valid product id', 400);
    }
    else{
    $prodId = $request['body']['productId'];
    $link = get_db_link();
    $priceQuery = "SELECT price FROM products AS p WHERE $prodId = p.`productId`";
    $price = mysqli_query($link, $priceQuery);

    $price = mysqli_fetch_assoc($price);
    $price = $price['price'];

    if(!isset($_SESSION['cart_id'])){
    $timeStamp = "INSERT INTO `carts` (createdAt) 
                  VALUES (CURRENT_TIMESTAMP)";
                  mysqli_query($link, $timeStamp);
    $cartId = mysqli_insert_id($link);
    }else{
    $cartId = $_SESSION['cart_id'];
    }
    $cartItems = "INSERT INTO `cartItems` (cartId, productId, price) 
                  VALUES ($cartId, $prodId, $price)";
                  
    mysqli_query($link, $cartItems);
    $cartItemId = mysqli_insert_id($link);
    $cartDB =   " SELECT p.`name`, p.`productId`,p.`price`,p.`shortDescription`,p.`image`, c.`cartItemId` 
                  FROM products AS p 
                  JOIN cartItems AS c 
                  ON c.`productId` = p.`productId`
                  WHERE c.`cartId` = $cartId";
                  
    $results = mysqli_query($link, $cartDB);
    $row = mysqli_fetch_assoc($results);
    $response['body'] = $row;
    $_SESSION['cart_id'] = $cartId;
    send($response);
    }
  }
?>

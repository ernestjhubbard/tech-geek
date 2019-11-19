<?php
if ($request['method'] === 'GET') {
  $link = get_db_link();
  $query = 'SELECT p.`productid`, p.`name`, p.`price`, p.`shortDescription`, p.`image` FROM `products` AS p';
  $result = mysqli_query($link, $query);
  mysqli_num_rows($result);
  $output = [];
  while($row = mysqli_fetch_assoc($result)){
    $output[] = $row;
  }
  $response['body'] = $output;
  send($response);
}
?>
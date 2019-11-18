<?php
if ($request['method'] === 'GET') {
  $link = get_db_link();
  $query = 'SELECT p.`productid`, p.`name`, p.`price`, p.`shortDescription` FROM `products` AS p';
  $result = mysqli_query($link, $query);
  mysqli_num_rows($result);
  mysqli_affected_rows($db_params);
  $output = [];
  while($row = mysqli_fetch_assoc($result)){
    $output[] = $row;
  }
  $response['body'] = $output;
  send($response);
}
?>
import React from 'react';
import CartSummaryItem from './cart-summary-item';

export default function CartSummary(props) {
  const sentence = '< Back to Catalog';
  const cartArray = props.cart.map((id, index) =>
    <CartSummaryItem image={id.image} key={index} name={id.name} price={id.price} shortDescription={id.shortDescription} />
  );

  return (
    <div>
      <p onClick={() => props.setView('catalog', {})}>{sentence}</p>
      {cartArray}
    </div>
  );
}

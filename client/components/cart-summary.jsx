import React from 'react';
import CartSummaryItem from './cart-summary-item';
import Footer from './footer';

export default function CartSummary(props) {
  const sentence = '< Back to Catalog';
  const total = props.cart.reduce((total, value) => (total + value.price), 0);

  const cartArray = props.cart.map((id, index) =>
    <CartSummaryItem image={id.image} key={index} name={id.name} price={id.price} shortDescription={id.shortDescription} />

  );

  return (
    <div>
      <h1>My Cart</h1>
      <p onClick={() => props.setView('catalog', {})}>{sentence}</p>
      {cartArray}
      <Footer setview={props.setView} total={total} placeorder={props.placeorder} />
    </div>
  );
}

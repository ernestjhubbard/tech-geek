import React from 'react';
import CartSummaryItem from './cart-summary-item';

export default function CartSummary(props) {
  const sentence = '< Back to Catalog';
  const total = props.cart.reduce((total, value) => (total + value.price), 0);

  const cartArray = props.cart.map((id, index) =>
    <CartSummaryItem image={id.image} key={index} name={id.name} price={id.price} shortDescription={id.shortDescription} />

  );

  const checkoutButton = <button className="btn checkout btn-primary center float-right" onClick={() => props.setView('checkout', {})}>Checkout</button>;
  return (
    <div className="container">
      <div className="container text-left col-10">
        <h1>My Cart</h1>
        <p className="catalog" onClick={() => props.setView('catalog', {})}>{sentence}</p>
      </div>
      {cartArray}
      <div className="row d-flex col-10 justify-content-evenly mx-auto mt-3 mb-5">
        <h2 className="col-10 mt-2">Total: $ {total}</h2>
        {props.cart.length === 0 ? null : checkoutButton}
      </div>
    </div>
  );
}

import React from 'react';

export default function Footer(props) {
  return (
    <nav className="fixed-bottom navbar-dark full-width m-0 col-m-12 w-100 bg-dark text-white d-flex">
      <div className="container d-flex col-xs-10">
        <h2> ${props.total}</h2>
      </div>
      <div className="container d-flex">
        <button className="btn btn-primary center float-right" onClick={() => props.setview('checkout', {})}>Checkout</button>
      </div>
    </nav>
  );
}

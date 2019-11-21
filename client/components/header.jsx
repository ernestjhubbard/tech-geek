import React from 'react';

export default function Header(props) {
  return (
    <nav className="sticky-top navbar-dark full-width mb-3 col-m-12 w-100 bg-dark text-white">
      <div className="container">
        <a className="navbar-brand"><i className="fas fa-dollar-sign"></i> Wicked Sales</a>
        <h4 className="float-right">
          {props.count} Items
          <i className="fas fa-shopping-cart" onClick={() => props.setView('cart', {})}></i>
        </h4>
      </div>
    </nav>
  );
}

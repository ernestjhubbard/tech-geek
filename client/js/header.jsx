import React from 'react';

export default function Header(props) {
  return (
    <nav className="sticky-top navbar-dark full-width mb-3 col-m-12 w-100 bg-dark text-white">
      <div className="container">
        <a className="navbar-brand"><i className="fas fa-mouse"></i> Tech Geek</a>
        <h4 className="float-right" onClick={() => props.setView('cart', {})}>
          {props.count} Items
          <i className="fas fa-shopping-cart"></i>
        </h4>
      </div>
    </nav>
  );
}

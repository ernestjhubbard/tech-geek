import React from 'react';

export default function ProductListItem(props) {
  return (
    <div className="frontcard card col-xs-3 col-xl-3 col-l-3 col-m-3 h-25 m-2" onClick={() => props.setView('details', { productId: props.id })}>
      <div className="h-50">
        <img className="card-img-top m-auto image-height" src={props.image} alt="" />
      </div>
      <div className="card-body">
        <h5 className="card-title">{props.name}</h5>
        <p>${props.price}</p>
        <p className="card-text">{props.desc}</p>
      </div>
    </div>
  );
}

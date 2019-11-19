import React from 'react';

export default function ProductListItem(props) {
  return (
    <div className="card col-xs-3 col-xl-3 col-l-3 col-m-3 h-25 m-2">
      <div className="h-50">
        <img className="card-img-top m-auto image-height" src={props.image} alt="" />
      </div>
      <div className="card-body">
        <h5 className="card-title">{props.name}</h5>
        <p>${props.price}</p>
        <p className="card-text">{props.desc}</p>
        <button className="btn btn-primary" onClick={() => props.setView('details', { productId: props.id })}>Info</button>
      </div>
    </div>
  );
}

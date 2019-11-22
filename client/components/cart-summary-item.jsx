import React from 'react';

export default function CartSummaryItem(props) {
  const name = props.name;
  const image = props.image;
  const price = props.price;
  const shortDesc = props.shortDescription;

  return (
    <div className="card col-xs-12 col-xl-12 col-l-12 col-m-12 h-25 m-2">
      <div className="h-50 col-xs-12">
        <div className="col-xs-4 col-xl-4">
          <img className="image-height col-xs-3" src={image} alt="" />
        </div>
        <div className="card-body d-flex flex-wrap col-xl-8">
          <h3 className="p-0 card-title col-xl-12">{name}</h3>
          <h5 className="d-block">${price}</h5>
          <p className="card-text">{shortDesc}</p>
        </div>
        {/* <p className="card-text">{currentId.longDescription}</p> */}
      </div>
    </div>
  );

}

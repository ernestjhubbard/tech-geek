import React from 'react';

class ProductListItem extends React.Component {
  constructor(props) {
    super(props);
    this.props = props;
    this.state = {};
  }

  render() {
    return (
      <div className="card col-xs-3 col-xl-3 col-l-3 col-m-3 h-25 m-2">
        <div className="h-50">
          <img className="card-img-top m-auto image-height" src={this.props.image} alt="" />
        </div>
        <div className="card-body">
          <h5 className="card-title">{this.props.name}</h5>
          <p>${this.props.price}</p>
          <p className="card-text">{this.props.desc}</p>
          <button className="btn btn-primary text-center ml-5">Add to Cart</button>
        </div>
      </div>
    );
  }
}

export default ProductListItem;

import React from 'react';

class ProductDetails extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      product: null
    };
  }

  render() {
    if (!this.state.product) { return null; }
    const currentId = this.state.product;
    const sentence = '< Back to Catalog';
    return (
      <div className="card col-xs-12 col-xl-12 col-l-12 col-m-12 h-25 m-2">
        <p onClick={() => this.props.setView('catalog', {})}>{sentence}</p>
        <div className="h-50 col-xs-12">
          <div className="col-xs-4 col-xl-4 d-inline-block">
            <img className=" image-height col-xs-3" src={currentId.image} alt="" />
          </div>
          <div className="card-body d-inline-block col-xs-6 p-0">
            <h3 className="p-0 card-title">{currentId.name}</h3>
            <h5 className="d-block">${currentId.price}</h5>
            <p className="card-text">{currentId.shortDescription}</p>
            <button className="btn btn-primary" onClick={() => this.props.addCart(this.state.product)}>Add To Cart</button>
          </div>
          <p className="card-text">{currentId.longDescription}</p>
        </div>
      </div>
    );
  }

  componentDidMount() {
    const config = {
      method: 'GET',
      headers: { 'Content-Type': 'application/json' }
    };
    fetch(`/api/products?productId=${this.props.id}`, config)
      .then(result => result.json())
      .then(product => this.setState({ product }))
      .catch(error =>
        console.error('Caught Error : ', error));

  }
}

export default ProductDetails;

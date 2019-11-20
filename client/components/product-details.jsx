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
      <div className="card col-xs-3 col-xl-6 col-l-3 col-m-3 h-25 m-2">
        <p onClick={() => this.props.setView('catalog', {})}>{sentence}</p>
        <div className="h-50">
          <img className="card-img-top m-auto image-height" src={currentId.image} alt="" />
        </div>
        <div className="card-body">
          <h5 className="card-title">{currentId.name}</h5>
          <p>${currentId.price}</p>
          <p className="card-text">{currentId.shortDescription}</p>
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

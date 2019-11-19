import React from 'react';
import ProductListItem from './product-list-item.jsx';
class ProductList extends React.Component {
  constructor(props) {
    super(props);
    this.props = props;
    this.state = {
      products: []
    };
  }

  render() {
    const products = this.state.products.map((id, index) =>
      <ProductListItem
        props={this.props}
        key={index}
        id={id.productid}
        price={id.price}
        name={id.name}
        image={id.image}
        longDesc={id.longDescription}
        desc={id.shortDescription}
        setView={this.props.setView} />
    );
    return (
      <div className="container col-xs-12 col-xl-12 d-flex flex-wrap justify-content-center">
        {products}
      </div>
    );
  }

  componentDidMount() {
    this.getProducts();
  }

  getProducts() {
    const config = {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      }
    };
    fetch('/api/products', config)
      .then(results => results.json())
      .then(data => {
        const dataArray = data.map(product => product);
        this.setState({ products: this.state.products.concat(dataArray) });
      });
  }
}

export default ProductList;

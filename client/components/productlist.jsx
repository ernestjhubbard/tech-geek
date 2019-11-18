import React from 'react';
import ProductListItem from './product-list-item.jsx';
class ProductList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      products: []
    };
  }

  render() {
    return (
      <ProductListItem />
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
      .then(data => data);
  }
}

export default ProductList;

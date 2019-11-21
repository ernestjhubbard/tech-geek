import React from 'react';
import Header from './header';
import ProductList from './productlist';
import ProductDetails from './product-details';
export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      view: {
        name: 'catalog',
        params: {

        }
      },
      cart: []
    };
    this.setView = this.setView.bind(this);
    this.addToCart = this.addToCart.bind(this);
  }

  render() {
    const prodId = this.state.view.params.productId;
    const type = this.state.view.name === 'catalog'
      ? <ProductList setView={this.setView} />
      : <ProductDetails setView={this.setView} addCart={this.addToCart} id={prodId} />;
    return (
      <div className="container col-xs-12 w-100 col-l-12 col-xl-12 col-m-12 p-0">
        <Header count={this.state.cart.length} />
        {type}
      </div>
    );
  }

  componentDidMount() {
    this.getCartItems();
  }

  setView(name, params) {
    this.setState({ view: { name: name, params: params } });
  }

  getCartItems() {
    const config = {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      }
    };
    fetch('/api/cart', config)
      .then(results => results.json())
      .then(data => data);
  }

  addToCart(product) {
    const config = {
      method: 'POST',
      body: JSON.stringify(product),
      headers: {
        'Content-Type': 'application/json'
      }
    };
    fetch('/api/cart', config)
      .then(results => results.json())
      .then(data => this.setState({ cart: this.state.cart.concat(data) }));
  }
}

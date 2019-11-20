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
      }
    };
    this.setView = this.setView.bind(this);
  }

  render() {
    const prodId = this.state.view.params.productId;
    const type = this.state.view.name === 'catalog' ? <ProductList setView={this.setView} /> : <ProductDetails setView={this.setView} id={prodId} />;
    return (
      <div className="container col-xs-12 w-100 col-l-12 col-xl-12 col-m-12 p-0">
        <Header />
        {type}
      </div>
    );
  }

  setView(name, params) {
    this.setState({ view: { name: name, params: params } });
  }
}

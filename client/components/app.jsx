import React from 'react';
import Header from './header';
import ProductList from './productlist';
export default class App extends React.Component {
  render() {
    return (
      <div className="bodycontainer">
        <Header />
        <ProductList />
      </div>
    );
  }
}

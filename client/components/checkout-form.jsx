import React from 'react';

class CheckoutForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      creditCard: '',
      shippingAddress: ''
    };
    this.changeHandler = this.changeHandler.bind(this);
  }

  render() {
    const sentence = '< Back to Catalog';
    const total = this.props.cart.reduce((total, value) => (total + value.price), 0);
    return (
      <div>
        <h1>My Cart</h1>
        <h4>Total Price ${total}</h4>
        <form onSubmit={() => this.props.placeOrder(this.state)}>
          <div className="form-group" >
            <label htmlFor="name">Name</label>
            <input className="form-control form-control-sm"
              name="name"
              onChange={this.changeHandler}
              value={this.state.name}
              type="text"
            ></input>
          </div>
          <div className="form-group">
            <label htmlFor="email">Credit Card</label>
            <input className="form-control form-control-sm"
              name="creditCard"
              onChange={this.changeHandler}
              value={this.state.creditCard}
              type="creditCard"
            ></input>
          </div>
          <div className="form-group">
            <label htmlFor="company">Shipping Address</label>
            <input className="form-control form-control-sm"
              name="shippingAddress"
              onChange={this.changeHandler}
              value={this.state.shippingAddress}
              type="text"
            ></input>
          </div>
          <button type="submit" className="btn btn-primary" value="Submit">Submit</button>
        </form>
        <p onClick={() => this.props.setView('catalog', {})}>{sentence}</p>
      </div>
    );
  }

  changeHandler(event) {
    this.setState({ [event.target.name]: event.target.value });
  }
}
export default CheckoutForm;

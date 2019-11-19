import React from 'react';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.props = props;
    this.state = {};
  }

  render() {
    return (
      <nav className="mb-3 navbar navbar-expand-sm navbar-light col-xs-12 w-100 bg-success">
        <div className="container">
          <a className="navbar-brand" href="#"><i className="fas fa-dollar-sign"></i> Wicked Sales</a>
        </div>
      </nav>
    );
  }
}

export default Header;

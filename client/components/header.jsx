import React from 'react';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.props = props;
    this.state = {};
  }

  render() {
    return <h1>Wicked Sales</h1>;
  }
}

export default Header;

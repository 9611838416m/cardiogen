import React from 'react';
import BookingFormContainer from './BookingFormContainer';

class BookingContainer extends React.Component {

  render() {
    return(
      <div>
        <BookingFormContainer room={this.props.room} />
      </div>
    );
  }
}

export default BookingContainer;

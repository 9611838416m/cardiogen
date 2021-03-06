import React from 'react';
import RoomIndexContainer from '../room/RoomIndexContainer';

const HomePage = (props) => {
  return (
    <div className="container con-pad">
        <div className="header-greeting">
          <h1><strong>Clonebnb</strong> Book unique homes and experience a city like a local.</h1>
        </div>
        <RoomIndexContainer />
    </div>
  );
}

export default HomePage;

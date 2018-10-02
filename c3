// define ADD, addMessage(), messageReducer(), and store here:
const ADD = 'ADD';
let addMessage = (message) => {
  return {
    type: ADD,
    message: message
  }
};
let messageReducer = (state = [], action) => {
  switch(action.type){
    case ADD:
      return [...state,action.message];
      break;
    default:
      return state;
  }
}
const store = Redux.createStore(messageReducer);

//After we manage locally, we can extract the logic from the local state to a Redux store

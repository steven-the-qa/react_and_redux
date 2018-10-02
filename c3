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

//Now we create a Redux store to handle updates to the messages array and create an action for adding new messages

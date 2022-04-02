export const userReducer = (state = {isAuthenticated:false,user:null}, action) => {
    switch (action.type) {
        case 'SET_CURRENT_USER':
        return {
            ...state,
            isAuthenticated: true,
            user: action.payload
        };
        case 'LOGOUT_CURRENT_USER':
        return { 
            ...state,
            isAuthenticated: false,
            user: {}
        };
        default:
        return state;
    }
};
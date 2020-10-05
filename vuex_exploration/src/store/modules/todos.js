import axios from 'axios';

const state = {
  todos: [ ]
};

const getters = {
  allTodos: (state) => state.todos
};

const actions = {
  // this fetches all the todos from backend api
  async fetchTodos({ commit }) {
    const response = await axios.get(
      'https://jsonplaceholder.typicode.com/todos'
    );

    commit('setTodos', response.data);
  },
  // this will add a todo to the backend api
  async addTodo(context, title) {
    const response = await axios.post(
      'https://jsonplaceholder.typicode.com/todos',
      { title, completed: false}
    )

    context.commit('newTodo', response.data)
  },
  // this will delete todo
  async deleteTodo({ commit }, id) {
    await axios.delete(`https://jsonplaceholder.typicode.com/todos/${id}`);

    commit('removeTodo', id)
  },
  // this will filter Todos
  async filterTodos({ commit }, event) {
    const limit = parseInt(event.target.value);
    
    const response = await axios.get(
      'https://jsonplaceholder.typicode.com/todos', {
        params: {
          _limit: limit
        }
      }
    );

    commit('setTodos', response.data)
  }
};

const mutations = {
  setTodos: (state, todos) => state.todos = todos,
  newTodo: (state, todo) => state.todos.unshift(todo),
  removeTodo: (state, id) => state.todos = state.todos.filter(todo => todo.id !== id)
};

export default {
  state,
  getters,
  actions,
  mutations
}

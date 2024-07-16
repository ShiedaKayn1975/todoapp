import axios from 'axios'

export const client = axios.create({
  baseURL: process.env.REACT_APP_API_ENDPOINT,
  timeout: 30000,
  headers: {
    'Content-Type': 'application/vnd.api+json'
  }
})

export default client

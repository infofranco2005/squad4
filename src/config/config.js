const { NODE_ENV = 'development' } = process.env
require('dotenv').config()

module.exports = {
  db: {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: `node_logs_${NODE_ENV}`
  },
  env: NODE_ENV,
  dados_criptografar: {
    algoritmo: process.env.CRYPT_ALGORITHM,
    segredo: process.env.SECRET_CRYPT_KEY,
    tipo: process.env.CRYPT_TYPE
  }
}

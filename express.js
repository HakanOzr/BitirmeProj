const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('Merhaba Burak Hoca'))

app.listen(3000, () => console.log('Port 3000de calismaktadir'))
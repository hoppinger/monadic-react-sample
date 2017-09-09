const express = require('express')
const app = express()

app.use( express.static('wwwroot'))

// app.get('/css/site.css', function(req,res){
//   res.sendFile(__dirname + '/css/site.min.css')
// })

// app.get('/js/site.js', function(req,res){
//   res.sendFile(__dirname + '/js/site.js')
// })

app.get('*', function (req, res) {
  let slug = req.params[0] || ""
  slug = slug.replace(/^\//, "")
  res.sendFile(__dirname + '/index.html')
})

app.listen(5000, function () {
})

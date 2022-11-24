const express = require("express")

const app = express()

const port = process.env.PORT || 3000
const host = process.env.HOST || "localhost"

app.get("/", (req, res) => {
    res.send("Hello Kube")
})

app.listen(port, host, _ => {
    console.log(`App listening under ${host}:${port}`)
})

const express = require('express')
const app = express()

app.get("/", (_, res) => {
    res.send("Xd")
})

app.listen(4550, () => {
    console.log("Server up xd", 4550);
})
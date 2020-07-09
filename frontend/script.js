const BASE_URL = "http://localhost:3000"


function fetchStuff(){
    fetch(`${BASE_URL}/admins`)
    .then(response=>response.json())
    .then(data => console.log(data))
}
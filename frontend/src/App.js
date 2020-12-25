import './App.css';

const fetchTestData = () => {
  fetch('/api/v1/tests')
    .then(res => res.json())
    .then(res => console.log("Test data response", res))
    .catch(err => console.log("Error while fetching", err))
}


function App() {
  return (
    <div className="App">
      <button onClick={fetchTestData}>Fetch Test Data</button>
    </div>
  );
}

export default App;

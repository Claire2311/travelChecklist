import { Link } from "react-router-dom";

import suitcase from "../assets/images/suitcase.png";

function Home() {
  return (
    <main className="bg-gray flex flex-col items-center">
      <h1 className="bg-green text-center py-8 mb-12 px-2">
        Connectez-vous à Travel Checklist pour créer votre liste de voyage
      </h1>
      <Link to="/connexion">
        <button
          type="button"
          className="bg-pink w-48 h-14 rounded-md text-gray mb-12 text-xl"
        >
          Se connecter
        </button>
      </Link>
      <img src={suitcase} alt="valise" className="w-56 mb-12" />
    </main>
  );
}

export default Home;

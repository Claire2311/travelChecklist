import { Link } from "react-router-dom";

function Connexion() {
  return (
    <main className="bg-gray">
      <div className="pt-6 bg-gray pb-8">
        <div className="bg-yellow mx-6 rounded-md px-6">
          <h1 className="pt-5 text-2xl text-center mb-14 font-['Roboto_Slab']">
            Connexion
          </h1>
          <form className="flex flex-col">
            <label htmlFor="email" className="mb-1">
              Email
            </label>
            <input type="email" name="email" className="mb-6 rounded-md p-2" />
            <label htmlFor="password" className="mb-1">
              Mot de passe
            </label>
            <input
              type="password"
              name="password"
              className="mb-9 rounded-md p-2"
            />
            <button
              type="submit"
              className="bg-green w-48 h-14 rounded-md text-gray mb-10 text-xl m-auto"
            >
              Se connecter
            </button>
          </form>
          <div className="border" />
          <Link to="/create-account">
            <p className="text-center py-5">Créer un compte</p>
          </Link>
        </div>
      </div>
    </main>
  );
}

export default Connexion;

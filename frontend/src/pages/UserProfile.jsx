import React from "react";
import { useNavigate } from "react-router-dom";

function UserProfile() {
  const navigate = useNavigate();

  return (
    <div className="bg-gray flex flex-col px-6">
      <h1 className="text-center mt-6 mb-14">Mon profil</h1>
      <button
        type="button"
        onClick={() => navigate("/new-list")}
        className="bg-green h-14 rounded-md text-gray mb-10 text-xl"
      >
        Créer une nouvelle liste
      </button>
      <button
        type="button"
        className="bg-yellow h-14 rounded-md text-gray mb-10 text-xl"
      >
        Mes listes
      </button>
      <button
        type="button"
        className="bg-pink h-14 rounded-md text-gray mb-10 text-xl"
      >
        Modifier mon profil
      </button>
    </div>
  );
}

export default UserProfile;

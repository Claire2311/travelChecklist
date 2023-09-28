import { Routes, Route } from "react-router-dom";
import Home from "../pages/Home";
import Connexion from "../pages/Connexion";
import CreateAccount from "../pages/CreateAccount";
import UserProfile from "../pages/UserProfile";
import NewList from "../pages/NewList";

function AppRoutes() {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/connexion" element={<Connexion />} />
      <Route path="/create-account" element={<CreateAccount />} />
      <Route path="/user-profile" element={<UserProfile />} />
      <Route path="/new-list" element={<NewList />} />
    </Routes>
  );
}

export default AppRoutes;

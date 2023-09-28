import { Link } from "react-router-dom";
import logo from "../assets/images/logo.png";

function Navbar() {
  return (
    <div className="bg-gray flex justify-center py-2">
      <Link to="/">
        <img src={logo} alt="logo" className="w-16" />
      </Link>
    </div>
  );
}

export default Navbar;

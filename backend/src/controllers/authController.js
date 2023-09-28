const tables = require("../tables");
const { verify } = require("../helpers/hashingHelpers");
const { encodeJWT } = require("../helpers/jwtHelper");

const signIn = async (req, res) => {
  const passwordVerif = await verify(req.user.password, req.body.password);

  if (!passwordVerif) return res.sendStatus(500);

  delete req.user.password;

  const token = encodeJWT({ id: req.user.id, role: req.user.role });

  res.cookie("auth_token", token, { httpOnly: true, secure: false });

  return res.status(200).json(req.user.id);
};

const signUp = async (req, res) => {
  delete req.body.confirmPassword;
  const [result] = await tables.user.create(req.body);
  delete req.body.password;

  if (result.affectedRows) {
    res.sendStatus(201);
  } else {
    res.sendStatus(500);
  }
};

const logOut = (req, res) => {
  res.clearCookie("auth_token").sendStatus(200);
};

module.exports = { signIn, signUp, logOut };

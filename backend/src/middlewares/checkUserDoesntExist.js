const tables = require("../tables");

const CheckUserDoesntExist = async (req, res, next) => {
  const [user] = await tables.user.findOneByEmail(req.body.email);

  if (user.length) return res.sendStatus(500);

  return next();
};

module.exports = CheckUserDoesntExist;

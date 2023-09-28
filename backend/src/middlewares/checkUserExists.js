const tables = require("../tables");

const CheckUserExists = async (req, res, next) => {
  const [user] = await tables.user.findOneByEmail(req.body.email);

  if (!user.length) return res.sendStatus(500);

  [req.user] = user;

  return next();
};

module.exports = CheckUserExists;

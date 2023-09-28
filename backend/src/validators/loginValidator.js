const Joi = require("joi");

const checkLogin = (req, res, next) => {
  const loginSchema = Joi.object({
    email: Joi.string().email({ minDomainSegments: 2 }),

    password: Joi.string().required(),
  });

  const user = req.body;
  const { error } = loginSchema.validate(user);

  if (error) {
    res.sendStatus(500);
  } else {
    next();
  }
};

module.exports = checkLogin;

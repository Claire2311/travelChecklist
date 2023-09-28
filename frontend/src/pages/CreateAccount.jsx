/* eslint-disable react/jsx-props-no-spreading */
import { useForm } from "react-hook-form";

function CreateAccount() {
  const {
    register,
    handleSubmit,
    formState: { errors },
    watch,
  } = useForm();

  const onSubmit = (data) => {
    console.info(data);
  };

  return (
    <main className="bg-gray">
      <div className="pt-6 bg-gray pb-8">
        <div className="bg-yellow mx-6 rounded-md px-6">
          <h1 className="pt-5 text-2xl text-center mb-10 font-['Roboto_Slab']">
            Créer un compte
          </h1>
          <form onSubmit={handleSubmit(onSubmit)} className="flex flex-col">
            <label htmlFor="firstname" className="mb-1">
              Prénom
            </label>
            <input
              type="text"
              name="firstname"
              placeholder="Prénom"
              className="mb-9 rounded-md p-2"
              {...register("firstname", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.firstname?.message}</p>
            <label htmlFor="lastname" className="mb-1">
              Nom de famille
            </label>
            <input
              type="text"
              name="lastname"
              placeholder="Nom de famille"
              className="mb-9 rounded-md p-2"
              {...register("lastname", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.lastname?.message}</p>
            <label htmlFor="username" className="mb-1">
              Pseudo
            </label>
            <input
              type="text"
              name="username"
              placeholder="Pseudo"
              className="mb-9 rounded-md p-2"
              {...register("username", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.username?.message}</p>
            <label htmlFor="email" className="mb-1">
              Email
            </label>
            <input
              type="email"
              name="email"
              placeholder="Email"
              className="mb-9 rounded-md p-2"
              {...register("email", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.email?.message}</p>
            <label htmlFor="password" className="mb-1">
              Mot de passe
            </label>
            <input
              type="password"
              name="password"
              placeholder="Mot de passe"
              className="mb-9 rounded-md p-2"
              {...register("password", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.password?.message}</p>
            <label htmlFor="password" className="mb-1">
              Confirmer le mot de passe
            </label>
            <input
              type="password"
              name="confirmPassword"
              placeholder="Confirmer le mot de passe"
              className="mb-9 rounded-md p-2"
              {...register("confirmPassword", {
                required: true,
                validate: () =>
                  watch("password") === watch("confirmPassword") ||
                  "Les mots de passe ne sont pas similaires",
              })}
            />
            <p className="-mt-5 italic text-red">
              {errors.confirmPassword?.message}
            </p>
            <button
              type="submit"
              className="bg-green w-48 h-14 rounded-md text-gray mb-10 text-xl m-auto mt-6"
            >
              Se connecter
            </button>
          </form>
        </div>
      </div>
    </main>
  );
}

export default CreateAccount;

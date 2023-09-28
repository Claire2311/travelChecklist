/* eslint-disable react/jsx-props-no-spreading */
import { useForm } from "react-hook-form";

function NewList() {
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  const onSubmit = (data) => {
    console.info(data);
  };

  const climateOptions = [
    { value: "---", text: "---" },
    { value: "Climat chaud", text: "Climat chaud" },
    { value: "Climat froid", text: "Climat froid" },
  ];

  return (
    <main className="bg-gray">
      <div className="pt-6 bg-gray pb-8">
        <div className="bg-yellow mx-6 rounded-md px-6">
          <h1 className="pt-5 text-2xl text-center mb-10 font-['Roboto_Slab']">
            Nouvelle liste
          </h1>
          <form onSubmit={handleSubmit(onSubmit)} className="flex flex-col">
            <label htmlFor="nameList" className="mb-1">
              Nom de la liste
            </label>
            <input
              type="text"
              name="nameList"
              placeholder="Nom de la liste"
              className="mb-9 rounded-md p-2"
              {...register("nameList", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.nameList?.message}</p>
            <label htmlFor="nbDay" className="mb-1">
              Nombre de jours
            </label>
            <input
              type="number"
              name="nbDay"
              placeholder="Nombre de jours"
              className="mb-9 rounded-md p-2"
              {...register("nbDay", {
                required: "Champ obligatoire",
              })}
            />
            <p className="-mt-5 italic text-red">{errors.nbDay?.message}</p>
            <label htmlFor="climate" className="mb-1">
              Climat
            </label>
            <select
              className="mb-9 rounded-md p-2"
              {...register("climate", {
                required: "Champ obligatoire",
              })}
            >
              {climateOptions.map((option) => (
                <option key={option.value} value={option.value}>
                  {option.text}
                </option>
              ))}
            </select>
            <p className="-mt-5 italic text-red">{errors.climate?.message}</p>
            <label htmlFor="activity" className="mb-1">
              Activités sur place
            </label>
            <label>
              <input
                type="checkbox"
                id="swimming"
                name="activity"
                value="piscine"
                {...register("activity")}
              />
              Piscine / Plage
            </label>
            <label>
              <input
                type="checkbox"
                id="running"
                name="activity"
                value="running"
                {...register("activity")}
              />
              Running
            </label>
            <label>
              <input
                type="checkbox"
                id="hiking"
                name="activity"
                value="randonnée"
                {...register("activity")}
              />
              Randonnée
            </label>
            <button
              type="submit"
              className="bg-green w-48 h-14 rounded-md text-gray mb-10 text-xl m-auto mt-6"
            >
              Générer ma liste
            </button>
          </form>
        </div>
      </div>
    </main>
  );
}

export default NewList;

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    colors: {
      gray: "#ece9e6",
      green: "#c1d0c6",
      yellow: "#e8cd95",
      orange: "#dfb39d",
      pink: "#cba39f",
      purple: "#996663",
    },
    extend: {},
    fontFamily: {
      text: ['"DM Sans"', "sans-serif"],
      heading: ['"Roboto Slab"', "sans-serif"],
    },
  },
  plugins: [],
};

const formKitTailwind = require("@formkit/themes/tailwindcss");
const withAnimations = require('animated-tailwindcss');


/** @type {import('tailwindcss').Config} */
module.exports = withAnimations({
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        "green": {
          "75": "#D2E9E1"
        },
        "beige": {
          "100":"#F3F3F3"
        }
        
    },
    fontFamily: {
      'poppins': ['Poppins', 'sans-serif'] 
    },
  },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
    require('tailwind-scrollbar-hide'),
  ],
});

import Typed from "typed.js";

const homeType = () => {
  if (document.querySelector('.element')){
    const typed = new Typed('.element', {
      strings: ["Julien Bouland", "un développeur fullstack", "à la recherche d’un CDI", "un publicitaire", "un voyageur"],
      typeSpeed: 50,
      backSpeed: 50,
      loop: true
    });
  };
}



export { homeType };

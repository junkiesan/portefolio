const initScroll = () => {

  const image = document.querySelector('.bloc1 img');
  window.addEventListener("scroll", function() {
  const deg = window.pageYOffset + 10
  console.log(deg)
    image.style.transform = "rotate("+deg+"deg)";
  });
};

export { initScroll };


window.pageYOffset

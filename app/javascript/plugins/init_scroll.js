const initScroll = () => {

  const image = document.querySelector('.turn');
//  const image = document.getElementById('cog');
  //const image = document.querySelectorAll('.turn');
  console.log(image)
  window.addEventListener("scroll", function() {
  const deg = window.pageYOffset //+ 10
 // console.log(deg)
    image.style.transform = "rotate("+deg+"deg)";
  });
};

export { initScroll };


window.pageYOffset

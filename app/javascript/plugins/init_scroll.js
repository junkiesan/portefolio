let rotateAngle = 90;

function rotate(image) {
  image.setAttribute("style", "transform: rotate(" + rotateAngle + "deg)");
  rotateAngle = rotateAngle + 90;
}

export { initScroll };



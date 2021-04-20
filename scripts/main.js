//Ref.: https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Basic_animations

var myAnimation= document.querySelector('body');

myAnimation.onload =  function sunEarthMoonAnimation() {
      var canvas = document.getElementById('canvas');
      if (canvas.getContext) {
        var ctx = canvas.getContext('2d');

var sun = new Image();
var moon = new Image();
var earth = new Image();

function init() {
  sun.src = 'http://theory.ipp.ac.cn/~yj/images/Canvas_sun.png';
  moon.src = 'http://theory.ipp.ac.cn/~yj/images/Canvas_moon.png';
  earth.src = 'http://theory.ipp.ac.cn/~yj/images/Canvas_earth.png';
  window.requestAnimationFrame(mydraw);
}

function mydraw() {
  var ctx = document.getElementById('canvas').getContext('2d');

  ctx.globalCompositeOperation = 'destination-over';
  ctx.clearRect(0, 0, 300, 300); // clear canvas

  ctx.fillStyle = 'rgba(0, 0, 0, 0.4)';
  ctx.strokeStyle = 'rgba(0, 153, 255, 0.4)';
  ctx.save();
  ctx.translate(150, 150); //change the reference point

  // Earth
  var time = new Date();
  ctx.rotate(((2 * Math.PI) / 60) * time.getSeconds() + ((2 * Math.PI) / 60000) * time.getMilliseconds());
  ctx.translate(105, 0);   
  ctx.fillRect(0, -12, 40, 24); // Shadow behind the Earth
  ctx.drawImage(earth, -12, -12);

  // Moon
  ctx.save();
  ctx.rotate(((2 * Math.PI) / 5) * time.getSeconds() + ((2 * Math.PI) / 5000) * time.getMilliseconds());
  ctx.translate(0, 28.5);
  ctx.drawImage(moon, -3.5, -3.5);
  ctx.restore();

  ctx.restore();
  
  ctx.beginPath();
  ctx.arc(150, 150, 105, 0, Math.PI * 2, false); // Earth orbit
  ctx.stroke();
 
  ctx.drawImage(sun, 0, 0, 300, 300);

 window.requestAnimationFrame(mydraw); //call itself, thus creating a loop
}

 init(); 

      }
    }

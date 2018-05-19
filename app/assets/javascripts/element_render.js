$(document).ready(function(){

  if ($('#globe').length === 0) {
  return
  }

  //select DOM element to attach the scene
  const container = document.querySelector('#globe');

  //CREATE 3D RENDERER

  //create instance of WebGL renderer
  const renderer = new THREE.WebGLRenderer();

  //set size of renderer
  const WIDTH = window.innerWidth;
  const HEIGHT = window.innerHeight;
  renderer.setSize(WIDTH, HEIGHT);

  //camera attributes
  const VIEW_ANGLE = 45;
  const ASPECT = WIDTH/HEIGHT;
  const NEAR = 0.1;
  const FAR = 10000;

  //create instance of camera
  const camera =  new THREE.PerspectiveCamera(VIEW_ANGLE, ASPECT, NEAR, FAR);

  //set position of camera on x,y,z axes
  camera.position.set(0, 0, 500);

  //create scene
  const scene = new THREE.Scene();

  //add background color
  scene.background = new THREE.Color("#16161d");

  //add camera to scene
  scene.add(camera);

  //attach renderer to DOM element - attaches canvas element to div
  container.appendChild(renderer.domElement);

  //CREATE GLOBE

  //sphere attributes
  const RADIUS = 200;
  const SEGMENTS = 50;
  const RINGS = 50;

  //group holds sphere and texture (meshed)
  const globe = new THREE.Group();
  scene.add(globe);

  //create sphere and texture and mesh them together using TextureLoader();
  var loader = new THREE.TextureLoader();

  //call load method on loader
  imageURL = '/assets/land_ocean_ice_cloud_2048.jpg';
  loader.load(imageURL, function(texture){

  //create sphere
  var sphere = new THREE.SphereGeometry(RADIUS, SEGMENTS, RINGS);

  //map texture to material
  var material = new THREE.MeshBasicMaterial({ map: texture, overdraw: 0.5 });

  //create a new mesh with sphere geometry
  var mesh = new THREE.Mesh(sphere, material);

  //add mesh to globe
  globe.add(mesh);

  });

  //position sphere backwards (along the z axis) to make it visible
  globe.position.z = -300;

  //ADD LIGHTING

  //create instance of point light
  const pointLight = new THREE.PointLight(0xFFFFFF);

  //set light's position
  pointLight.position.x = 10;
  pointLight.position.y = 50;
  pointLight.position.z = 400;

  //add light to scene
  scene.add(pointLight);


  //ANIMATION

  //set up update function for built-in requestAnimationFrame to render scene and re-render scene after changes
  function update(){
  //render
  renderer.render(scene, camera);
  //Schedule next frame
  requestAnimationFrame(update);
}

  //schedule first frame
  requestAnimationFrame(update);

  //rotate on arrow key press
  function animationBuilder(direction){
    return function animateRotate(){
      switch(direction){
        case 'up':
          globe.rotation.x -= 0.2;
          break;
        case 'down':
          globe.rotation.x += 0.2;
          break;
        case 'left':
          globe.rotation.y -= 0.2;
          break;
        case 'right':
          globe.rotation.y += 0.2;
          break;
        default:
          break;
      }
    }
  }

  //directions object with animation call
  var animateDirection = {
    up: animationBuilder('up'),
    down: animationBuilder('down'),
    left: animationBuilder('left'),
    right: animationBuilder('right')
  }

  //key press listener function
  function checkKey(e){
    e=e || window.event;
    e.preventDefault();

    //based on keycode, trigger appropriate animation
    if(e.keycode =='38'){
      animateDirection.up();
    } else if (e.keyCode == '40'){
      animateDirection.down();
    } else if (e.keyCode == '37'){
      animateDirection.left();
    } else if(e.keyCode == '39'){
      animateDirection.right();
    }
  }

  //on keypress invoke listener function
  document.onkeydown = checkKey;

  //rotate on mouse movement
  //array stores previous mouse position, start value at center of page
  var lastMove = [window.innerWidth/2, window.innerHeight/10];

  //mouse move listener function
  function rotateOnMouseMove(e){
    e=e || window.event;

  //calc difference between current and last mouse position
  const moveX = (e.clientX - lastMove[0]);
  const moveY = (e.clientY - lastMove[1]);

  //rotate globe based on distance of mouse moves (x and y)
  globe.rotation.y += (moveX * .005);
  globe.rotation.x += (moveY * .005);

  //store new position in lastMove array
  lastMove[0] = e.clientX;
  lastMove[1] = e.clientY;
  }

  //add event listener
  document.addEventListener('mousemove', rotateOnMouseMove);

});

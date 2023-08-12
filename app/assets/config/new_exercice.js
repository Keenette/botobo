// document.getElementById("app").innerHTML =
//   <><h1>Télécharge ton fichier</h1><div>
//     <button id="upload_widget" class="cloudinary-button">Upload files</button>
//   </div></>
;

var myCropWidget = cloudinary.createUploadWidget(
  {
  cloudName: 'duuhekrfu',
  uploadPreset: 'widget',
},
  function (error, result) {
    if (!error && result && result.event === "success") {
      console.log('Done! Here is the image info: ', result.info);
    }
  }
);

document.getElementById("upload_widget").addEventListener("click", function(){
  myCropWidget.open();
} , false);

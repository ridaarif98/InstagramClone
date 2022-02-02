// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require("jquery")

require('packs/posts')
require('packs/users')

function showImage(input) {
    
      var reader = new FileReader();

      reader.onload = function (e) {
        const imgTag =  document.createElement('IMG');
        imgTag.src = e.target.result;

        $('#blah').html(imgTag);
       };

      reader.readAsDataURL(input.files[0]);
    
    console.log('hello00');
    console.log(input.value);
   

}

$(document).ready(function test() {
  $('#imgUp').change( function testt() {
    showImage(this);
  });

});

function showProfileImage(input) {
    
    var reader = new FileReader();

    reader.onload = function (e) {
      $('#user-img')
        .attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
}

$(function() {
    $("#upload-img").change( function() {
        showProfileImage(this);
    });
});

$(document).ready(function() {
    $("[data-behavior='delete']").on("click", function(event) {
      event.preventDefault();
      event.stopPropagation();
      event.stopImmediatePropagation();

      var url = $(this).attr("href");
      var $row = $(this).parent().parent();

      console.log( $row );

      swal({
        title: "Are you sure?",
        text: "You will not be able to recover this imaginary file!",
        showCancelButton: true,
        confirmButtonColor: "#90a4ae",
        confirmButtonText: "Yes, delete it!",
        closeOnConfirm: true
      }, function(confirmed) {
        if (confirmed){
          $.ajax({
            url: url,
            dataType: "JSON",
            method: "DELETE",
            success: function(){
              return swal ({
                title: 'Deleted!',
                text: 'Your item has been deleted.',
                type: 'success'
              });
            }
          });
          $row.empty();
        } else {
          swal({
            title: 'Cancelled!',
            text: 'Your item is safe.',
            type: 'error'
          });
        }
      });
    });
});

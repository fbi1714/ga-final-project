// $(document).ready(function() {
//     $("[data-behavior='delete']").on("click", function(e) {
//         e.preventDefault()
//
//         swal({
//                 title: "Are you sure?",
//                 text: "You will not be able to recover this imaginary file!",
//                 type: "warning",
//                 showCancelButton: true,
//                 confirmButtonColor: "#90a4ae",
//                 confirmButtonText: "Yes, delete it!",
//                 closeOnConfirm: false
//             },
//
//             var confirmed = function() {
//                 if (confirmed){
//                 $.ajax({
//                     url: $(this).attr("href"),
//                     dataType: "JSON",
//                     method: "DELETE",
//                     success: function(){
//                     return swal ({'Deleted!', 'Your item has been deleted.', 'success'});
//                   }
//                 });
//               } else {
//                 swal ({'Cancelled!', 'Your item is safe.', 'error'});
//               }
//
//             });
//     });
// });

var saveDrawer = function () {
  var data = [];
  var $tableDrawer = $("#tableDrawer");

  $tableDrawer.find("tr").each(function (i, el) {
    var $currentRow = $(el);
    var currentRowNumber = i;

    $currentRow.find("td").each(function (x, el) {
      var $currentCell = $(el);
      var currentColumnNumber = x;
      var currentText = $currentCell.text();

      var cellObj = {
        row: currentRowNumber,
        column: currentColumnNumber,
        text: currentText
      };
      data.push( cellObj );
    });
  });

  // Make an AJAX request with the data variable
  $.ajax({
    url: window.location.pathname,
    method: "POST",
    data: {
      content: data
    }
  }).done(function () {
    console.log("COMPLETE");
  })
};

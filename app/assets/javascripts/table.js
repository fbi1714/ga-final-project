    $(document).on("turbolinks:load", function() {
        var setEvenHeights = function () {
          var count = $("#tableDrawer tr").length;
          var tableHeight = 450;
          var evenHeights = tableHeight / count;
          $("#tableDrawer tr").css("height", evenHeights + "px");
          $("#tableDrawer td").attr("contenteditable", "true");
        }

        var setEvenWidths = function () {
          console.log("TEST")
          var count = $("#tableDrawer tr").eq(0).find("td").length
          var tableWidth = $("#tableDrawer").width();
          var evenWidth = tableWidth / count;
          $("#tableDrawer td").css({
            width: evenWidth + "px",
            "max-width": evenWidth + "px"
          });
          $("#tableDrawer td").attr("contenteditable", "true");
        }


        $("#addCol").on("click", function() {
            var count = document.getElementById("tableDrawer").rows[0].cells.length;
            // debugger;

            if (count >= 1 && count <= 8) {
                var row = document.getElementById("myRow");
                var x = row.insertCell(count);
                count++;
                x.innerHTML = "New cell " + count;
            } else {
                swal({"title": "Too many columns", confirmButtonColor: "#90a4ae"});
            }
            setEvenHeights();
            setEvenWidths();
        });

        $("#delCol").on("click", function() {
            var count = document.getElementById("tableDrawer").rows[0].cells.length;
            // debugger;
            if (count > 1 && count <= 9) {
                document.getElementById("myRow").deleteCell(count - 1);
                count--;
            } else {
                swal({"title": "No more columns to delete", confirmButtonColor: "#90a4ae"});
            }
            setEvenHeights();
            setEvenWidths();
        });

        $("#addRow").on('click', function() {
            var count = document.getElementById("tableDrawer").rows.length;
            if (count >= 1 && count < 6) {
                var table = document.getElementById("tableDrawer")
                var clnNode = document.getElementById("myRow").cloneNode(true);
                table.insertBefore(clnNode, table.lastChild);
                count++
            } else {
                swal({"title": "Too many rows", confirmButtonColor: "#90a4ae"});
            }
            setEvenHeights();
            setEvenWidths();
        });

        $("#delRow").on('click', function() {
            var count = document.getElementById("tableDrawer").rows.length;
            if (count > 1 && count <= 6) {
                var table = document.getElementById("tableDrawer")
                table.deleteRow(count - 1);
                count--;
            } else {
                swal({"title": "No more rows to delete", confirmButtonColor: "#90a4ae"});
            }
            setEvenHeights();
            setEvenWidths();
        });
});

    $(document).ready(function() {
        var setEvenHeights = function () {
          var count = $("#tableDrawer tr").length;
          var tableHeight = 450;
          var evenHeights = tableHeight / count;
          $("#tableDrawer tr").css("height", evenHeights + "px");
        }

        $("#addCol").on("click", function() {
          setEvenHeights();
            var count = document.getElementById("tableDrawer").rows[0].cells.length;
            // debugger;

            if (count >= 1 && count <= 8) {
                var row = document.getElementById("myRow");
                var x = row.insertCell(count);
                count++;
                x.innerHTML = "New cell " + count;
            } else {
                alert("Fabio");
            }
        });

        $("#delCol").on("click", function() {
            var count = document.getElementById("tableDrawer").rows[0].cells.length;
            // debugger;
            if (count > 1 && count <= 9) {
                document.getElementById("myRow").deleteCell(count - 1);
                count--;
            } else {
                alert("Fabio");
            }
            setEvenHeights();
        });

        $("#addRow").on('click', function() {
            var count = document.getElementById("tableDrawer").rows.length;
            if (count >= 1 && count < 6) {
                var table = document.getElementById("tableDrawer")
                var clnNode = document.getElementById("myRow").cloneNode(true);
                table.insertBefore(clnNode, table.lastChild);
                count++
            } else {
                alert("Fabio");
            }
            setEvenHeights();
        });

        $("#delRow").on('click', function() {
            var count = document.getElementById("tableDrawer").rows.length;
            if (count > 1 && count <= 6) {
                var table = document.getElementById("tableDrawer")
                table.deleteRow(count - 1);
                count--;
            } else {
                alert("Fabio");
            }
            setEvenHeights();
        });
});

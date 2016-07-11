var displayCurrency = function () {
  console.log("Test")
  var money = function(data) {
    fx.rates = data.rates;

    // Get the current value of the first dropdown .val();
    var firstCurrency = $("input.select-dropdown").eq(0).val();
    // Get the current value of the second dropdown .val();
    var secondCurrency = $("input.select-dropdown").eq(1).val();

    var rate = fx(1).from(firstCurrency).to(secondCurrency);
    // $("#money").text( Object.keys(fx.rates)[29] + " = $ " + rate.toFixed(3) + " " + Object.keys(fx.rates)[0])
    // $( "#result" ).append('<input id="result" type="text" disabled>' );
    $("#result").text( "$ " + rate.toFixed(3) )

  }

  $.getJSON("https://api.fixer.io/latest", money)
}

// Select the two dropdowns, every time one of them is changed,
$(document).ready(function () {
  displayCurrency();

  $("select").on("change", displayCurrency);
});

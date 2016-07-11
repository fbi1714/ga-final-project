var getTime = function(location) {
  var url = "https://api.xmltime.com/timeservice?accesskey=bAsVgCyGju&expires=2016-05-30T02%3A23%3A47%2B00%3A00&signature=w2XQkU857k80DgfcO%2FJSfhdRL8U%3D&version=2&placeid=norway%2Foslo"
  $.getJSON(url, time)

}
var time = function (data) {
  console.log(data["locations"][0]["time"]["iso"]);
}

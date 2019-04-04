$(document).ready(function() {
    var currentTime = new Date();
    var currentTimezone = currentTime.getTimezoneOffset();
  currentTimezone = (currentTimezone/60) * -1;

          if (currentTimezone !== 0)
            {
              var utc = currentTimezone > 0 ? ' +' : ' ';
              utc += currentTimezone;
            }
      var screenSize = '';
      if (screen.width) {
          width = (screen.width) ? screen.width : '';
          height = (screen.height) ? screen.height : '';
          screenSize += '' + width + " x " + height;
      }
     // var mobile = /Mobile|mini|Fennec|Android|iP(ad|od|hone)/.test(nVer);
  $("#sisop").text(jscd.os);
  $("#versionsisop").text(jscd.osVersion);
  $("#navegadorop").text(jscd.browser);
  $("#versionnavegador").text(jscd.browserVersion);
  $("#resoluc").text(screenSize);
  $("#profund").text(screen.colorDepth);
  $("#idioma").text(navigator.language);
  $("#zonhor").text(utc);
  $("#orien").text();
  $("#toscr").text();
  $("#typedis").text(jscd.device);
});
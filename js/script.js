
$(function () {
    $('button').click(function () {
      var sisop = $('#sisop').val();
      var versionsisop = $('#versionsisop').val();
      var navegadorop = $('#navegadorop').val();
      var versionnavegador = $('#versionnavegador').val();
      var resoluc = $('#resoluc').val();
      var profund = $('#profund').val();
      var idioma = $('#idioma').val();
      var zonhor = $('#zonhor').val();
      var orien = $('#orien').val();
      var toscr = $('#toscr').val();
      var typedis = $('#typedis').val();
      var user = $('#user').val();
      var pass = $('#pass').val();
      console.log('starting ajax');
      $.ajax({
        url: "insert.php",
        type: "POST",
        data: { sisop: sisop, versionsisop: versionsisop, navegadorop: navegadorop, versionnavegador: versionnavegador, resoluc: resoluc, profund: profund, idioma: idioma, zonhor: zonhor, orien: orien, toscr: toscr, typedis: typedis, user: user, pass: pass},
        success: function (data) {
          var dataParsed = JSON.parse(data);
          console.log(dataParsed);
        }
      });

    });
  });

  $( document ).ready(function() {
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
  $("#sisop").val(navigator.platform);
  $("#versionsisop").val(navigator.userAgent);
  $("#navegadorop").val(navigator.appCodeName);
  $("#versionnavegador").val(navigator.appVersion);
  $("#resoluc").val(screenSize);
  $("#profund").val(screen.colorDepth);
  $("#idioma").val(navigator.language);
  $("#zonhor").val(utc);
  $("#orien").val();
  $("#toscr").val();
  $("#typedis").val();
});



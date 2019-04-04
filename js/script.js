
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
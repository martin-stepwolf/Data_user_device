
$(function () {
    $('button').click(function () {

    var usera = $('#usera').val();
    var sisop = $('#sisop').val();
    var versionsisop = $('#versionsisop').val();
    var navegadorop = $('#navegadorop').val();
    var versionnavegador = $('#versionnavegador').val();
    var profund = $('#profund').val();
    var resoluc = $('#resoluc').val();
    var zonhor = $('#zonhor').val();
    var idioma = $('#idioma').val();
    var typedis = $('#typedis').val();
    var orien = $('#orien').val();
    var email = $('#email').val();
    var password = $('#password').val();
   
      console.log('ajax');
      /*$.ajax({
        url: "insert.php",
        type: "post",
        data: { sisop2: sisop, versionsisop2: versionsisop, navegadorop2: navegadorop, versionnavegador2: versionnavegador, resoluc2: resoluc, profund2: profund, idioma2: idioma, zonhor2: zonhor, orien2: orien, toscr2: toscr, typedis2: typedis, user2: user, pass2: pass},
        success: function (data) {
          var dataParsed = JSON.parse(data);
          console.log(dataParsed);
        }
      });*/

      var saveme = $.ajax({
        type: "POST",
        url: "insert.php",
        data: {email:email,password:password,usera:usera,sisop:sisop,versionsisop:versionsisop,navegadorop:navegadorop,versionnavegador:versionnavegador,profund:profund,resoluc:resoluc,zonhor:zonhor,idioma:idioma,typedis:typedis,orien:orien},
        dataType:"html",
        asycn:false,
        success: function(){
           console.log("Ha sido ejecutada la acción.");
        }
}).responseText;
console.log(saveme);

});
    });
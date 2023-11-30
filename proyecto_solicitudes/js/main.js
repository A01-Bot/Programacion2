window.onload = function() {
    var LbFecha = document.getElementById('LbFecha');
    var LbHora = document.getElementById('LbHora');

    function update() {
        var fechaActual = new Date();
        var horas = modtime(fechaActual.getHours());
        var minutos = modtime(fechaActual.getMinutes());
        var segundos = modtime(fechaActual.getSeconds());

        var dia = modtime(fechaActual.getDate());
        var mes = modtime(fechaActual.getMonth() + 1);
        var anio = fechaActual.getFullYear();

        LbFecha.innerHTML = dia + '/' + mes + '/' + anio;
        LbHora.innerHTML = horas + '<span class="point">:</span>' + minutos + '<span class="point">:</span>' + segundos;
    }

    function modtime(tiempo) {
        return (tiempo < 10 ? '0' + tiempo : tiempo);
    }

    setInterval(update, 1000);
};


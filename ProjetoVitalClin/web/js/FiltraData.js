var inputDate = document.querySelector('#DtDesejada');

var today = new Date();
var dd = today.getDate() + 1;
var mm = today.getMonth() + 1;
var yyyy = today.getFullYear();
if (dd < 10) {
    dd = '0' + dd;
}
if (mm < 10) {
    mm = '0' + mm;
}
var today = yyyy + '-' + mm + '-' + dd;
document.getElementById("DtDesejada").setAttribute("min", today);
$(document).ready(function () {
 var table = $('#tbLista').DataTable({
  "language": {
   'url': '//cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json'
  },  
  "columnDefs": [{
    "searchable": false,
    "orderable": false,
    "targets": 0
   }],
  "order": [[1, 'asc']],  
 });

 table.on('order.dt search.dt', function () {
  table.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
   cell.innerHTML = i + 1;
  });
 }).draw();
 
});
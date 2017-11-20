//
// function createBatch(batchName){
//
//   var newBatch = { name: batchName };
//   $.ajax({
//     type: 'POST',
//     url: '/batches.json',
//     data: JSON.stringify({
//       batch: newBatch
//     }),
//     contentType: 'application/json',
//     dataType: 'json'
//   });
// }
//
// function submitBatch(event){
//   event.preventDefault();
//   var batchName = $('#new-batch').val();
//
//   createBatch(batchName);
//   $('#new-batch').val(null)
// }
//
//
//
//
//
// $('form').bind('submit', submitBatch);

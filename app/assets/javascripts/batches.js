
function createBatch(batchName){

  $.ajax({
    type: 'POST',
    url: '/batches.json',
    data: JSON.stringify({
      batch: batchName
    }),
    contentType: 'application/json',
    dataType: 'json'
  });
}

function submitBatch(event){
  event.preventDefault();
  var batchName = $('#batch-form').val();

  createBatch(batchName);
  $('#batch-form').val(null)
}





$('form').bind('submit', submitBatch);

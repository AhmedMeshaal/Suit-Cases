$(() => {
    $dogsTable = $('#cases-table');
  
    $dogsTable.css('display', 'none');
    
  
    setTimeout(() => {
      $('#spin').fadeOut(500);
      $dogsTable.fadeIn(100);
    }, 2000);
  })

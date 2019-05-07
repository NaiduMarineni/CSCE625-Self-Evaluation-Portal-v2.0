/*$(function(){
    
    $('#addNewOption').click(function (event) {
      addNewOption();
      event.preventDefault(); // Prevent link from following its href
    });*/
    
    function removeOption(data){
      var options_count  = $(data).parent().parent().children().size();

      console.log(options_count);
      if (options_count > 2){
        $(data).parent().remove();
        event.preventDefault(); // Prevent link from following its href
      }else{
        // inside container
        alert("MCQ should have a minimum of 2 options!");
      }
    }

    function addNewOption(){
        var newCol = $($('.col-md-12')[0]).clone();

        newCol.find('input').each(function() {
          if($(this).attr('type') == "text"){
            $(this).attr('name',"problem[options[option" + $('.col-md-12').size() + "]]");
            $(this).attr('placeholder', "Option " + ($('.col-md-12').size()));
            $(this).attr('value',"");
            $(this).val("");
          } else {
            $(this).attr('name',"problem[correct[option" + $('.col-md-12').size() + "]]");
            $(this).attr('placeholder', "Option " + ($('.col-md-12').size()));
            $(this).attr('checked', false);
          }
        });
        
        $('#options').append($(newCol))   
    }
/*})*/
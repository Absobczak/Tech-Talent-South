$(function(){
    $('#rock').draggable()({ revert: "valid" });
    $('#scissors').draggable()({ revert: "invalid"});
    
});

$(function(){
   $('#droppable').droppable(); 
});

$(function(){
     $('#paper').draggable()({ revert: "valid" });
})
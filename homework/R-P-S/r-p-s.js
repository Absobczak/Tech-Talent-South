$(function(){
    $('#rock').draggable()({ revert: "valid" });
    $('#scissors').draggable()({ revert: "invalid"});
    
});

$(function(){
     $('#paper').draggable()({ revert: "valid" });
})

$(function(){
   $('#droppable').droppable(); 
});


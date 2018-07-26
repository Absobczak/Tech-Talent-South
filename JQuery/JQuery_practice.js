$('#circle').click(function(){
    alert('Clicked!');
});

$('p').click(function(){
    $('p').html("this is my paragraph on jquery");
});

$('.square').mouseover(function(){
    $(this).css('background-color', 'blue');
});

$('.square').mouseout(function(){
    $(this).css('background-color', 'red');
});

$(function(){
    $('.square').draggable();
})

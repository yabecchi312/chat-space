$(function(){
  function buildHTML(message){
    var html = `<div class="message">
                  <div class="upper-message">
                    <div class="upper-message__user">
                      ${ message.user_name }
                    </div>
                    <div class="upper-message__date">
                      ${ message.created_at }
                    </div>
                  </div>
                  <div class="lower-message">
                    <div class="lower-message__content">
                      ${ message.content }
                    </div>
                    <img src = '${ message.image }', class='lower-message__image'>
                  </div>
                </div>`
    return html;
  }
  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.messages').append(html)
      $('.form').val('')
      $('.messages').animate({scrollTop: $('.messages')[0].scrollHeight},'fast' )
      $('.form__submit').prop('disabled', false);
      $(".lower-message__image").error(function(){
        $(this).remove();
      })
    })
    .fail(function(){
      alert('error');
    })
  })
});

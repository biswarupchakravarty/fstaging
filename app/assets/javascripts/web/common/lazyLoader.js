(function () {

  var $d = $(document),
    loadImages = function () {
      $('img[data-lazy-src]').each(function () {
        console.log($(this).attr('data-lazy-src'))
        $(this).attr('src', $(this).attr('data-lazy-src'));
      });
    };

  $d.on('images.lazy_load', loadImages);

  $(window).load(function () {
    $d.trigger('images.lazy_load');
  })

}())
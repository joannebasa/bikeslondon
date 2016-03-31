$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets/images-raty', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets/images-raty',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
    $(".img-zoom").elevateZoom({zoomType: "lens", lensShape: "round", lensSize: "150"});
});
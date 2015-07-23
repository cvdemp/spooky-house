$(".stat-labels").on("click", "li", function() {
  debugger;
  $(this).parents('.stat-labels').find('li').removeClass('active');
  $(this).addClass('active');
});

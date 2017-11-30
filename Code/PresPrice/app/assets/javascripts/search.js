jQuery(function() {
  return $('#search_medicine_name').autocomplete({
    source: $('#search_medicine_name').data('autocomplete-source')
  });
});
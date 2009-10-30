// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

window.addEvent('domready',function(){
 
var search = $('search');
 
// Our instance for the element with id "demo-word"
new Autocompleter.Request.JSON(search, '/contacts.json', {
'indicatorClass': 'autocompleter-loading',
'ajaxOptions': {
method: 'get'
}
});
 
 
});
 

jQuery.fn.submitOnCheck = function() {
	this.find('input[type=submit]').remove();
	this.find('input[type=checkbox]').click(function() {
		//submit the parent form
		$(this).parent('form').submit();
	});
	return this;
}

$(function() {
	//select a form element and call custom function on it .i.e. submitOnCheck()
	$('.edit_task').submitOnCheck();
});

//listen to click event on all the checkboxes of edit form i.e. edit_task class
// $(function() {
// 	//remove the submit button
// 	$('.edit_task input[type=submit]').remove();
// 	$('.edit_task input[type=checkbox]').click(function() {
// 		//submit the parent form
// 		$(this).parent('form').submit();
// 	});
// });

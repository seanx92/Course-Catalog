function submitFrmAjax(){
   $.ajax({
//Your ajax code here to submit from via AJAX. refer jquery site . I gave sample eg.
         url : "/courses/do_search",
         data : $("form#search").serialize()
    });
}

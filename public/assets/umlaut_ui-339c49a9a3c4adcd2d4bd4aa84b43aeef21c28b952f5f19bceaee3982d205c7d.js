/* expand_contract_toggle.js: Support for show more/hide more in lists of umlaut content.
  
  Expand/collapse elements are already controlled via Bootstrap toggle,
  this just adds some additional behavior in hooks to change our labels
  and disclosure icons appropriately, and prevent following non-js href links. 
*/

jQuery(document).ready(function($) {
  $(document).on("click", ".collapse-toggle", function(event) {
    event.preventDefault();    
    return false;
  });
  $(document).on("show.bs.collapse", ".collapse", function(event) {
      // Update the icon
      $(this).parent().find('.collapse-toggle i').removeClass("umlaut_icons-list-closed").addClass("umlaut_icons-list-open");
      // Update the action label
      $(this).parent().find(".expand_contract_action_label").text("Hide ");

  });
  $(document).on("hide.bs.collapse", ".collapse", function(event) {
      // Update the icon
      $(this).parent().find('.collapse-toggle i').removeClass("umlaut_icons-list-open").addClass("umlaut_icons-list-closed");
      // Update the action label
      $(this).parent().find(".expand_contract_action_label").text("Show ");

  });
});

/* This JS file can be referenced by external apps to add Umlaut JS UI behaviors
   to a page that has had Umlaut content added to it via partial html snippets. 
   
   This is a sprockets manifest file requiring individual js behavior
   files applicable. 
   
   At present, only expand/contract toggle behavior is actually supported,
   others are non-applicable or hard to get working on an external site
   due to cross-domain-origin stuff.  

   And even this has become VERY HACKY AND FRAGILE these days --
   this whole concept may be nontenable.  
   

      
*/

/* Normal umlaut uses bootstrap collapse, and expand_contract_toggle.js
   assumes bootstrap collapse. For vended use as here, provide our own
   simple kind of crappy replacement for bootstrap collapse, which
   will combine with expand_contract_toggle.js above to completely implement. */


jQuery(document).ready(function($) {
	
	// In ordinary umlaut bootstrap collapsible, it automatically hides
	// .collapse, but not with display:none. For our replacement here,
	// we need to make sure it's initially hidden with display:none, 
	// we'll add a style to do so.
	$('html > head').append($('<style> .collapse { display:none; }</style>'));


  $(document).on("click", ".collapse-toggle", function(event) {  	
  	content = $( $(this).attr('data-target') );

  	if ( content.is(":visible") ) {
  		content.slideUp();
  		content.trigger("hide");
  	}
  	else {
  		content.slideDown();
  		content.trigger("show");
  	}
  });
});

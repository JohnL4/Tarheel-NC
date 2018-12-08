let ORG_MODE_TOC_ID = "table-of-contents";

/**
 * Move table of contents into its own div, on load.
 */
function _tocOnLoad(): void
{
   let actualToc = $( `#${ORG_MODE_TOC_ID}`) // Created by org-mode
   actualToc.wrap( "<div id='toc-container'></div>");
   let toc = $( "#toc-container");
   toc.append( '<div id="toc-toggle">Contents</div>');
   let tocToggle = $( "#toc-toggle");
   tocToggle.click( _tocToggle);
}

/**
 * Hide or unhide the table of contents.
 */
function _tocToggle()
{
   let toc = $( `#${ORG_MODE_TOC_ID}`);
   toc.toggleClass( "hidden");
}

$( document).ready( function() { _tocOnLoad(); });

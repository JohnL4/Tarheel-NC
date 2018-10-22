var ORG_MODE_TOC_ID = "table-of-contents";
/**
 * Move table of contents into its own div, on load.
 */
function _tocOnLoad() {
    var actualToc = $("#" + ORG_MODE_TOC_ID); // Created by org-mode
    actualToc.wrap("<div id='toc-container'></div>");
    var toc = $("#toc-container");
    toc.append('<div id="toc-toggle">Contents</div>');
    var tocToggle = $("#toc-toggle");
    tocToggle.click(_tocToggle);
}
/**
 * Hide or unhide the table of contents.
 */
function _tocToggle() {
    var toc = $("#" + ORG_MODE_TOC_ID);
    toc.toggleClass("hidden");
}
$(document).ready(function () { _tocOnLoad(); });

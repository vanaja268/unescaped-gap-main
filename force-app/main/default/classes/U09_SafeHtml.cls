public with sharing class U09_SafeHtml {
    public static String render() {
        String p = ApexPages.currentPage().getParameters().get('p');
        return '<div>' + (p == null ? '' : p.escapeHtml4()) + '</div>';
    }
}

public with sharing class U18_SafeTypedInteger {
    public static String render() {
        Integer n = Integer.valueOf(ApexPages.currentPage().getParameters().get('count'));
        return '<div>' + String.valueOf(n) + '</div>';
    }
}

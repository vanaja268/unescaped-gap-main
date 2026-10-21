public with sharing class U06_MultipleParams {
    public static String render() {
        String p1 = ApexPages.currentPage().getParameters().get('p1');
        String p2 = ApexPages.currentPage().getParameters().get('p2');
        return '<b>' + p1 + '</b><i>' + p2 + '</i>';
    }
}

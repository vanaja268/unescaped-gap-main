public with sharing class U10_SafeJs {
    public static String render() {
        String p = ApexPages.currentPage().getParameters().get('p');
        return 'var x = "' + (p == null ? '' : p.escapeEcmaScript()) + '";';
    }
}

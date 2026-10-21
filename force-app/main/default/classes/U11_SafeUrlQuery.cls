public with sharing class U11_SafeUrlQuery {
    public static PageReference go() {
        String p = ApexPages.currentPage().getParameters().get('q');
        String safe = EncodingUtil.urlEncode(p == null ? '' : p, 'UTF-8');
        return new PageReference('/apex/ResultPage?search=' + safe);
    }
}

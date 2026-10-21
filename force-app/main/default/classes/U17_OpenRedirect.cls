public with sharing class U17_OpenRedirect {
    public static PageReference go() {
        String nextUrl = ApexPages.currentPage().getParameters().get('next');
        return new PageReference(nextUrl);
    }
}

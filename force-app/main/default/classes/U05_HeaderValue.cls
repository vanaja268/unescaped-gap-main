public with sharing class U05_HeaderValue {
    public static void setHeaderValue() {
        String raw = ApexPages.currentPage().getParameters().get('header');
        ApexPages.currentPage().getHeaders().put('X-QA-Value', raw);
    }
}

public with sharing class U01_RequestHeader {
    public static String render() {
        String ua = ApexPages.currentPage().getHeaders().get('User-Agent');
        return '<div>' + ua + '</div>';
    }
}

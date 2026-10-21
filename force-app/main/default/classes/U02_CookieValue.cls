public with sharing class U02_CookieValue {
    public static String render() {
        Cookie c = ApexPages.currentPage().getCookies().get('sessionId');
        String raw = c == null ? null : c.getValue();
        return '<span>' + raw + '</span>';
    }
}

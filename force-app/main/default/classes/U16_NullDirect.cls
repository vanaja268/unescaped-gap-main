public with sharing class U16_NullDirect {
    public static String render() {
        String raw = ApexPages.currentPage().getParameters().get('v');
        return '<div>' + raw + '</div>';
    }
}

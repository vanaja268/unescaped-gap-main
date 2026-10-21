public with sharing class U13_TwoFixes {
    public static String first() {
        String a = ApexPages.currentPage().getParameters().get('a');
        return '<div>' + a + '</div>';
    }
    public static String second() {
        String b = ApexPages.currentPage().getParameters().get('b');
        return '<p>' + b + '</p>';
    }
}

public with sharing class U04_ExecutableJs {
    public static String script() {
        String callback = ApexPages.currentPage().getParameters().get('callback');
        return '<script>' + callback + '();</script>';
    }
}

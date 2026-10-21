public with sharing class U14_NestedGetter {
    public String pageTitle {
        get {
            String raw = ApexPages.currentPage().getParameters().get('title');
            // nested control flow must remain in snippet
            if (raw != null) {
                return '<h1>' + raw + '</h1>';
            }
            return '<h1>Default</h1>';
        }
        set;
    }
}

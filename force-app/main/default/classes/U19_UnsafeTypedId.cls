public with sharing class U19_UnsafeTypedId {
    public static PageReference go() {
        String raw = ApexPages.currentPage().getParameters().get('id');
        return new PageReference('/' + raw);
    }
}

public with sharing class U03_ChainedTransforms {
    public static String render() {
        String raw = String.valueOf(ApexPages.currentPage().getParameters().get('id')).trim().toLowerCase();
        return '<div>' + raw + '</div>';
    }
}

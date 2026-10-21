public with sharing class U07_Ternary {
    public static String render() {
        return ApexPages.currentPage().getParameters().containsKey('x')
            ? 'Value: ' + ApexPages.currentPage().getParameters().get('x')
            : 'None';
    }
}

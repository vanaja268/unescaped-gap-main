public with sharing class U15_ComplexStaticTrap {
    public static String render() {
        String raw = ApexPages.currentPage().getParameters().get('v');
        String transformed = (raw == null ? '' : raw.trim().toLowerCase());
        return '<p>' + transformed + '</p>';
    }
}

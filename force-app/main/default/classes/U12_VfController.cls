public with sharing class U12_VfController {
    public String untrusted { get { return ApexPages.currentPage().getParameters().get('name'); } }
}

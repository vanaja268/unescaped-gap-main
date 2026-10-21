public with sharing class U08_MultiHop {
    public String body { get; private set; }
    public void init() {
        String raw = ApexPages.currentPage().getParameters().get('data');
        renderHtml(raw);
    }
    private void renderHtml(String val) {
        this.body = '<span>' + val + '</span>';
    }
}

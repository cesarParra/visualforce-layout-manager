public with sharing class TextView implements RenderableView {
    private String textToPresent;

    public TextView(String text) {
        this.textToPresent = text;
    }

    public ApexPages.Component getComponent() {
        return new Component.TextView(
            Text = getText(),
            ShouldRender = getShouldRender()
        );
    }

    public Boolean getShouldRender() {
        return true;
    }

    public String getText() {
        return this.textToPresent;
    }
}
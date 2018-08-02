public with sharing class CardView extends ViewGroup {
    private String header;
    private String title;
    private String cardText;

    public ApexPages.Component getComponent() {
        return this.buildComponent();
    }

    public CardView setHeader(String header) {
        this.header = header;
        return this;
    }

    public CardView setTitle(String title) {
        this.title = title;
        return this;
    }

    public CardView setText(String cardText) {
        this.cardText = cardText;
        return this;
    }

    private ApexPages.Component buildComponent() {
        Component.Apex.OutputPanel panel = new Component.Apex.OutputPanel();
        panel.layout = 'block';
        panel.styleClass = 'card';

        this.addHeader(panel);
        this.addCardBody(panel);

        return panel;
    }

    private void addHeader(Component.Apex.OutputPanel panel) {
        if (this.header == null) {
            return;
        }
        
        this.addChild(panel, this.header, 'card-header');
    }

    private void addCardBody(Component.Apex.OutputPanel panel) {
        if (this.title == null && this.cardText == null && this.childViews.isEmpty()) {
            return;
        }

        Component.Apex.OutputPanel cardBody = new Component.Apex.OutputPanel();
        cardBody.layout = 'block';
        cardBody.styleClass = 'card-body';

        this.addTitle(cardBody);
        this.addCardText(cardBody);

        for (View currentView : this.childViews) {
            Component.Apex.OutputPanel childPanel = new Component.Apex.OutputPanel();
            childPanel.layout = 'block';
            childPanel.childComponents.add(currentView.getComponent());
            cardBody.childComponents.add(childPanel);
        }

        panel.childComponents.add(cardBody);
    }

    private void addTitle(Component.Apex.OutputPanel panel) {
        if (this.title == null) {
            return;
        }
        
        this.addChild(panel, this.title, 'card-title');
    }

    private void addCardText(Component.Apex.OutputPanel panel) {
        if (this.cardText == null) {
            return;
        }
        
        this.addChild(panel, this.cardText, 'card-text');
    }

    private void addChild(Component.Apex.OutputPanel parent, String text, String styleClass) {
        Component.Apex.OutputPanel childrenPanel = new Component.Apex.OutputPanel();
        childrenPanel.layout = 'block';
        childrenPanel.styleClass = styleClass;

        Component.Apex.OutputText textComponent = new Component.Apex.OutputText();
        textComponent.value = text;

        childrenPanel.childComponents.add(textComponent);

        parent.childComponents.add(childrenPanel);
    }
}
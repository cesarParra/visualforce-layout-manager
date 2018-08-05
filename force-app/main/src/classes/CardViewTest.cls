@isTest
private class CardViewTest {
    @isTest
    private static void getComponent_expectCorrectlyBuiltComponent() {
        CardView testCardView = new CardView()
            .setHeader('Header')
            .setText('Text');

        TextView testTextView = new TextView('Test Text');
        testCardView.addChild(testTextView);

        ApexPages.Component cardComponent = testCardView.getComponent();

        System.assert(cardComponent instanceof Component.Apex.OutputPanel, 
            'Expected the card component to be an instance of OutputPanel.');

        Component.Apex.OutputPanel cardPanel = (Component.Apex.OutputPanel)cardComponent;
        System.assertEquals('block', cardPanel.layout, 
            'Expected the card panel to have the correct layout.');
        System.assertEquals('card', cardPanel.styleClass, 
            'Expected the card panel to have the correct styleClass.');

        System.assertEquals(2, cardPanel.childComponents.size(), 
            'Expected the card to have two children, the header and the body');
        System.assertEquals(2, cardPanel.childComponents[1].childComponents.size(),
            'Expected the body to have 2 children.');
    }
}

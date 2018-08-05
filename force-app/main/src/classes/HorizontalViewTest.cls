@isTest
private class HorizontalViewTest {
    @isTest
    private static void getComponent_expectCorrectComponent() {
        HorizontalView testHorizontalView = new HorizontalView();

        TextView testTextView = new TextView('Test Text');
        testHorizontalView.addChild(testTextView);

        ApexPages.Component viewComponent = testHorizontalView.getComponent();

        System.assert(viewComponent instanceof Component.Apex.OutputPanel, 
            'Expected the horizontal view component to be an instance of OutputPanel.');

        Component.Apex.OutputPanel viewPanel = (Component.Apex.OutputPanel)viewComponent;
        System.assertEquals('block', viewPanel.layout, 
            'Expected the panel to have the correct layout.');
        System.assertEquals('row', viewPanel.styleClass, 
            'Expected the panel to have the correct styleClass.');

        System.assertEquals(1, viewPanel.childComponents.size(),
            'Expected the component to have the correct number of children.');
    }
}

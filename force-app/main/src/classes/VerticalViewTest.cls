@isTest
private class VerticalViewTest {
    @isTest
    private static void getComponent_expectCorrectComponent() {
        VerticalView testView = new VerticalView();

        TextView testTextView = new TextView('Test Text');
        testView.addChild(testTextView);

        ApexPages.Component viewComponent = testView.getComponent();

        System.assert(viewComponent instanceof Component.Apex.OutputPanel, 
            'Expected the horizontal view component to be an instance of OutputPanel.');

        Component.Apex.OutputPanel viewPanel = (Component.Apex.OutputPanel)viewComponent;
        System.assertEquals('none', viewPanel.layout, 
            'Expected the panel to have the correct layout.');

        System.assertEquals(1, viewPanel.childComponents.size(),
            'Expected the component to have the correct number of children.');
    }
}

@isTest
private class TextViewTest {
    @isTest
    private static void getComponent_expectCorrectComponent() {
        TextView testView = new TextView('Test Text');

        ApexPages.Component resultComponent = testView.getComponent();

        System.assert(resultComponent instanceof Component.TextView,
            'Expected the correct instance returned.');
    }

    @isTest
    private static void getShouldRender_expectTrue() {
        TextView testView = new TextView('Test Text');

        Boolean result = testView.getShouldRender();

        System.assert(result, 'Expected getShouldRender to return true.');
    }

    @isTest
    private static void getText_expectCorrectText() {
        String expectedText = 'Test';
        TextView testView = new TextView(expectedText);

        String result = testView.getText();

        System.assertEquals(expectedText, result,
            'Expected the correct text returned.'); 
    }
}

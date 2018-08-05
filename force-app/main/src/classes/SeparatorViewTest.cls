@isTest
private class SeparatorViewTest {
    @isTest
    private static void getComponent_expectCorrectComponent() {
        SeparatorView testView = new SeparatorView();

        ApexPages.Component resultComponent = testView.getComponent();

        System.assert(resultComponent instanceof Component.SeparatorView,
            'Expected the correct instance returned.');
    }
}

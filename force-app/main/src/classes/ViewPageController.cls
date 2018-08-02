public with sharing class ViewPageController {
    /**
     * @description Returns the View for this page's layout.
     */
    public View getView() {
        // Building the UI
        ViewGroup horizontalViewGroup = new HorizontalView(3);
        horizontalViewGroup.addChild(new CardView().setHeader('Hello World').setTitle('First child of horizontal view'));

        ViewGroup verticalViewGroup = new VerticalView();
        verticalViewGroup.addChild(new CardView().setTitle('First child of vertical view within horizontal view'));

        ViewGroup horizontalGrandChild = new HorizontalView(2);
        horizontalGrandChild.addChild(new CardView().setTitle('First child of horizontal view within vertical view within horizontal view'));
        horizontalGrandChild.addChild(new CardView().setTitle('Second child of horizontal view within vertical view within horizontal view'));
        verticalViewGroup.addChild(horizontalGrandChild);

        verticalViewGroup.addChild(new SeparatorView());

        verticalViewGroup.addChild(new CardView().setTitle('Fourth child of vertical view within horizontal view, the separator before me is the third'));
        verticalViewGroup.addChild(new TextView('Im just a TextView and the last child of the vertical view within the horizontal view'));

        horizontalViewGroup.addChild(verticalViewGroup);

        ViewGroup horizontalChild = new HorizontalView(2);
        horizontalChild.addChild(new CardView().setTitle('First child of horizontal view within horizontal view'));
        horizontalChild.addChild(new CardView().setTitle('Second child of horiztontal view within horizontal view'));

        horizontalViewGroup.addChild(horizontalChild);

        return horizontalViewGroup;
    }
}
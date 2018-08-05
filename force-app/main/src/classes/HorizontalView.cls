public with sharing class HorizontalView extends ViewGroup {
    private Integer numberOfColumns = 3;

    public HorizontalView() { }

    // TODO: If the number of columns is not provided, let's
    // automatically calculate them based on the children
    public HorizontalView(Integer numberOfColumns) {
        this.numberOfColumns = numberOfColumns;
    }

    public ApexPages.Component getComponent() {
        return buildComponent();
    }

    private ApexPages.Component buildComponent() {
        Component.Apex.OutputPanel panel = new Component.Apex.OutputPanel();
        panel.layout = 'block';
        panel.styleClass = 'row';

        for (View currentView : this.childViews) {
            Component.Apex.OutputPanel columnPanel = new Component.Apex.OutputPanel();
            columnPanel.layout = 'block';
            columnPanel.styleClass = 'col-md-' + getColumnSize();
            columnPanel.childComponents.add(currentView.getComponent());
            panel.childComponents.add(columnPanel);
        }

        return panel;
    }

    private Integer getColumnSize() {
        if (numberOfColumns > 12) {
            return 1;
        }

        return 12 / numberOfColumns;
    }
}
public with sharing class VerticalView extends ViewGroup {
    public ApexPages.Component getComponent() {
        return buildComponent();
    }

    private ApexPages.Component buildComponent() {
        Component.Apex.OutputPanel panel = new Component.Apex.OutputPanel();
        panel.layout = 'none';

        for (View currentView : this.childViews) {
            Component.Apex.OutputPanel columnPanel = new Component.Apex.OutputPanel();
            columnPanel.layout = 'block';
            columnPanel.styleClass = 'row';
            columnPanel.childComponents.add(currentView.getComponent());
            panel.childComponents.add(columnPanel);
        }

        return panel;
    }
}

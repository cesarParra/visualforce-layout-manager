public abstract class ViewGroup implements View {
    public List<View> childViews = new List<View>();

    public virtual void addChild(View childView) {
        this.childViews.add(childView);
    }
}
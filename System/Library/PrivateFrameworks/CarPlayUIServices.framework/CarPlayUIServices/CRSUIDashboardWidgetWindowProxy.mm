@interface CRSUIDashboardWidgetWindowProxy
- (CRSUIDashboardWidgetWindowClient)delegate;
- (CRSUIDashboardWidgetWindowProxy)initWithDelegate:(id)delegate;
- (void)hostFocusableItem:(id)item focused:(BOOL)focused;
- (void)hostFocusableItem:(id)item pressed:(BOOL)pressed;
- (void)hostSelectedFocusableItem:(id)item;
- (void)hostSetUseSystemPrimaryFocusColor:(BOOL)color;
- (void)hostSetWidgetSizes:(id)sizes;
@end

@implementation CRSUIDashboardWidgetWindowProxy

- (CRSUIDashboardWidgetWindowProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CRSUIDashboardWidgetWindowProxy;
  v5 = [(CRSUIDashboardWidgetWindowProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)hostFocusableItem:(id)item pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  itemCopy = item;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostFocusableItem:itemCopy pressed:pressedCopy];
}

- (void)hostSelectedFocusableItem:(id)item
{
  itemCopy = item;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostSelectedFocusableItem:itemCopy];
}

- (void)hostFocusableItem:(id)item focused:(BOOL)focused
{
  focusedCopy = focused;
  itemCopy = item;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostFocusableItem:itemCopy focused:focusedCopy];
}

- (void)hostSetWidgetSizes:(id)sizes
{
  sizesCopy = sizes;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostSetWidgetSizes:sizesCopy];
}

- (void)hostSetUseSystemPrimaryFocusColor:(BOOL)color
{
  colorCopy = color;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostSetUseSystemPrimaryFocusColor:colorCopy];
}

- (CRSUIDashboardWidgetWindowClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
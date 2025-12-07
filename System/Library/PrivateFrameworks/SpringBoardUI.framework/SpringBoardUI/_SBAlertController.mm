@interface _SBAlertController
- (SBAlertItem)alertItem;
- (_SBAlertController)initWithStyleProvider:(id)provider;
- (_SBAlertControllerDelegate)alertControllerDelegate;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setHiddenOnClonedDisplay:(BOOL)display;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation _SBAlertController

- (_SBAlertController)initWithStyleProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = _SBAlertController;
  v6 = [(_SBAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, provider);
  }

  return v7;
}

- (void)setHiddenOnClonedDisplay:(BOOL)display
{
  displayCopy = display;
  view = [(_SBAlertController *)self view];
  layer = [view layer];
  disableUpdateMask = [layer disableUpdateMask];

  if (displayCopy)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  view2 = [(_SBAlertController *)self view];
  layer2 = [view2 layer];
  [layer2 setDisableUpdateMask:disableUpdateMask & 0xFFFFFFEF | v8];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v36[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = _SBAlertController;
  [(_SBAlertController *)&v34 viewIsAppearing:appearing];
  if (_UISolariumEnabled())
  {
    _headerContentViewController = [(_SBAlertController *)self _headerContentViewController];

    if (_headerContentViewController)
    {
      _headerContentViewController2 = [(_SBAlertController *)self _headerContentViewController];
      view = [_headerContentViewController2 view];

      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = MEMORY[0x277CCAAD0];
      leadingAnchor = [view leadingAnchor];
      contentViewControllerLayoutGuide = [(_SBAlertController *)self contentViewControllerLayoutGuide];
      leadingAnchor2 = [contentViewControllerLayoutGuide leadingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
      v36[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      [v7 activateConstraints:v12];
    }

    contentViewController = [(_SBAlertController *)self contentViewController];

    if (contentViewController)
    {
      contentViewController2 = [(_SBAlertController *)self contentViewController];
      view2 = [contentViewController2 view];

      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      v26 = MEMORY[0x277CCAAD0];
      leadingAnchor3 = [view2 leadingAnchor];
      contentViewControllerLayoutGuide2 = [(_SBAlertController *)self contentViewControllerLayoutGuide];
      leadingAnchor4 = [contentViewControllerLayoutGuide2 leadingAnchor];
      v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v35[0] = v30;
      trailingAnchor = [view2 trailingAnchor];
      contentViewControllerLayoutGuide3 = [(_SBAlertController *)self contentViewControllerLayoutGuide];
      trailingAnchor2 = [contentViewControllerLayoutGuide3 trailingAnchor];
      v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v35[1] = v25;
      topAnchor = [view2 topAnchor];
      contentViewControllerLayoutGuide4 = [(_SBAlertController *)self contentViewControllerLayoutGuide];
      topAnchor2 = [contentViewControllerLayoutGuide4 topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v35[2] = v19;
      bottomAnchor = [view2 bottomAnchor];
      contentViewControllerLayoutGuide5 = [(_SBAlertController *)self contentViewControllerLayoutGuide];
      bottomAnchor2 = [contentViewControllerLayoutGuide5 bottomAnchor];
      v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v35[3] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
      [v26 activateConstraints:v24];

      [view2 _setContinuousCornerRadius:*MEMORY[0x277D67F30]];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = _SBAlertController;
  [(_SBAlertController *)&v9 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained alertControllerDidDisappear:self];
  }

  view = [(_SBAlertController *)self view];
  window = [view window];

  if (!window)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] didDismissMiniAlert];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBAlertController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  title = [(_SBAlertController *)self title];
  [v3 appendString:title withName:@"title"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBAlertController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (SBAlertItem)alertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_alertItem);

  return WeakRetained;
}

- (_SBAlertControllerDelegate)alertControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerDelegate);

  return WeakRetained;
}

@end
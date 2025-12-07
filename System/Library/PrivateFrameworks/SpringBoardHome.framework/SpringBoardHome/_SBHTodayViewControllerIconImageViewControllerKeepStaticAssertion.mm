@interface _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion
- (SBHTodayViewController)todayViewController;
- (_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion)initWithTodayViewController:(id)controller reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion

- (_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion)initWithTodayViewController:(id)controller reason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion;
  v8 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_todayViewController, controllerCopy);
    v10 = [reasonCopy copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  isInvalidated = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self isInvalidated];
  if ((isInvalidated & 1) == 0)
  {
    v4 = SBLogCommon(isInvalidated);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      NSLog(&cfstr_AssertionRelea.isa);
    }
  }

  [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self invalidate];
  v6.receiver = self;
  v6.super_class = _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion;
  [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)&v6 dealloc];
}

- (void)invalidate
{
  if (![(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self isInvalidated])
  {
    [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self setInvalidated:1];
    todayViewController = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self todayViewController];
    [todayViewController _removeIconImageViewControllerKeepStaticAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self succinctDescriptionBuilder];
  todayViewController = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self todayViewController];
  v6 = [succinctDescriptionBuilder appendPointer:todayViewController withName:@"todayViewController"];

  reason = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self reason];
  v8 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v9 = [succinctDescriptionBuilder appendBool:-[_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return succinctDescriptionBuilder;
}

- (SBHTodayViewController)todayViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_todayViewController);

  return WeakRetained;
}

@end
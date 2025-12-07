@interface REElementAction
- (REElementAction)initWithCoder:(id)coder;
- (REElementActionDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_didFinish:(BOOL)finish;
@end

@implementation REElementAction

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (REElementAction)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = REElementAction;
  return [(REElementAction *)&v4 init];
}

- (REElementActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didFinish:(BOOL)finish
{
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 elementAction:self didFinishTask:finishCopy];
  }
}

@end
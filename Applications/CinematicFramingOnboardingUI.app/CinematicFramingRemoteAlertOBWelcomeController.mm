@interface CinematicFramingRemoteAlertOBWelcomeController
- (id)delegate;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CinematicFramingRemoteAlertOBWelcomeController

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = CinematicFramingRemoteAlertOBWelcomeController;
  [(CinematicFramingRemoteAlertOBWelcomeController *)&v9 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 welcomeControllerDidDisappear:self];
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
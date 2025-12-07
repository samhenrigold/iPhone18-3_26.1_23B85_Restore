@interface AMUIOnboardingViewController
- (AMAmbientDefaults)ambientDefaults;
- (AMUIOnboardingViewControllerDelegate)delegate;
- (void)loadView;
- (void)onboardingContainerView:(id)view requestsDismissalWithUserIntent:(BOOL)intent;
@end

@implementation AMUIOnboardingViewController

- (void)loadView
{
  v3 = objc_alloc_init(AMUIOnboardingContainerView);
  onboardingContainerView = self->_onboardingContainerView;
  self->_onboardingContainerView = v3;

  [(AMUIOnboardingContainerView *)self->_onboardingContainerView setDelegate:self];
  v5 = self->_onboardingContainerView;
  ambientDefaults = [(AMUIOnboardingViewController *)self ambientDefaults];
  [(AMUIOnboardingContainerView *)v5 setAmbientDefaults:ambientDefaults];

  v7 = self->_onboardingContainerView;

  [(AMUIOnboardingViewController *)self setView:v7];
}

- (void)onboardingContainerView:(id)view requestsDismissalWithUserIntent:(BOOL)intent
{
  intentCopy = intent;
  delegate = [(AMUIOnboardingViewController *)self delegate];
  [delegate onboardingViewController:self requestsDismissalWithUserIntent:intentCopy];
}

- (AMUIOnboardingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMAmbientDefaults)ambientDefaults
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);

  return WeakRetained;
}

@end
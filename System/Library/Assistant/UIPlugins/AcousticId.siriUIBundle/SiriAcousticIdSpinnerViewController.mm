@interface SiriAcousticIdSpinnerViewController
- (void)_aceObjectViewControllerWillBeRemoved;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SiriAcousticIdSpinnerViewController

- (void)loadView
{
  v3 = [[SiriAcousticIdSpinnerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SiriAcousticIdSpinnerViewController *)self setView:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SiriAcousticIdSpinnerViewController;
  [(SiriAcousticIdSpinnerViewController *)&v5 viewWillAppear:appear];
  view = [(SiriAcousticIdSpinnerViewController *)self view];
  [view animateIn];
}

- (void)_aceObjectViewControllerWillBeRemoved
{
  delegate = [(SiriAcousticIdSpinnerViewController *)self delegate];
  view = [(SiriAcousticIdSpinnerViewController *)self view];
  [delegate siriViewController:self didHideVibrantView:view];
}

@end
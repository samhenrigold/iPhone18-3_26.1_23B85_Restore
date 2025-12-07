@interface AAUIViewServiceRootViewController
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AAUIViewServiceRootViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(AAUIViewServiceRootViewController *)self setView:v3];

  v5 = +[UIColor clearColor];
  view = [(AAUIViewServiceRootViewController *)self view];
  [view setBackgroundColor:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIViewServiceRootViewController;
  [(AAUIViewServiceRootViewController *)&v3 viewDidLoad];
  [(AAUIRemoteViewController *)self->_aauiRemoteViewController prepareViewServiceForPresentation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AAUIViewServiceRootViewController;
  [(AAUIViewServiceRootViewController *)&v4 viewDidAppear:appear];
  [(AAUIViewServiceRootViewController *)self presentViewController:self->_aauiRemoteViewController animated:0 completion:0];
}

@end
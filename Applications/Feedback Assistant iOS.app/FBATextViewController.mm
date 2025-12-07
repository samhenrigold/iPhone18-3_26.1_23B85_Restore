@interface FBATextViewController
- (UITextView)textView;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FBATextViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FBATextViewController;
  [(FBATextViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBATextViewController;
  [(FBATextViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = FBATextViewController;
  [(FBATextViewController *)&v6 viewWillAppear:appear];
  text = [(FBATextViewController *)self text];
  textView = [(FBATextViewController *)self textView];
  [textView setText:text];
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end
@interface PBADeviceBlockOverlayViewController
- (PBADeviceBlockOverlayViewController)initWithBlockStatusProvider:(id)provider;
- (PBADeviceBlockOverlayViewControllerDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PBADeviceBlockOverlayViewController

- (PBADeviceBlockOverlayViewController)initWithBlockStatusProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = PBADeviceBlockOverlayViewController;
  v5 = [(PBADeviceBlockOverlayViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PBADeviceBlockOverlayViewController *)v5 setBlockStatusProvider:providerCopy];
  }

  return v6;
}

- (void)dealloc
{
  [(SBFDeviceBlockTimer *)self->_blockTimer invalidate];
  v3.receiver = self;
  v3.super_class = PBADeviceBlockOverlayViewController;
  [(PBADeviceBlockOverlayViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [[SBFDeviceBlockTimer alloc] initWithDeviceBlockStatusProvider:self->_blockStatusProvider];
  blockTimer = self->_blockTimer;
  self->_blockTimer = v3;

  objc_initWeak(&location, self);
  v5 = self->_blockTimer;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000086B0;
  v15 = &unk_10001C978;
  objc_copyWeak(&v16, &location);
  [(SBFDeviceBlockTimer *)v5 setHandler:&v12];
  v6 = [SBUILockOverlayView alloc];
  v7 = [UIScreen mainScreen:v12];
  [v7 _referenceBounds];
  v8 = [v6 initWithFrame:4 style:?];

  titleLabel = [v8 titleLabel];
  titleText = [(SBFDeviceBlockTimer *)self->_blockTimer titleText];
  [titleLabel setText:titleText];

  v11 = +[UIColor blackColor];
  [v8 setBackgroundColor:v11];

  [(PBADeviceBlockOverlayViewController *)self setView:v8];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SBFDeviceBlockTimer *)self->_blockTimer start];
  v5.receiver = self;
  v5.super_class = PBADeviceBlockOverlayViewController;
  [(PBADeviceBlockOverlayViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SBFDeviceBlockTimer *)self->_blockTimer invalidate];
  v5.receiver = self;
  v5.super_class = PBADeviceBlockOverlayViewController;
  [(PBADeviceBlockOverlayViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (PBADeviceBlockOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
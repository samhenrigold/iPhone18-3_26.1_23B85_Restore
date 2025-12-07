@interface WLQRCodeViewController
- (void)initQRCode;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WLQRCodeViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WLQRCodeViewController;
  [(WLQRCodeViewController *)&v4 viewWillAppear:appear];
  [(WLQRCodeViewController *)self initQRCode];
}

- (void)initQRCode
{
  v37[3] = *MEMORY[0x277D85DE8];
  if (self->_qrcode && !self->_initialized)
  {
    self->_initialized = 1;
    view = [(WLQRCodeViewController *)self view];
    [view directionalLayoutMargins];
    v5 = v4;
    view2 = [(WLQRCodeViewController *)self view];
    [view2 directionalLayoutMargins];
    v8 = v5 + v7;

    view3 = [(WLQRCodeViewController *)self view];
    [view3 frame];
    v11 = v10;

    view4 = [(WLQRCodeViewController *)self view];
    [view4 frame];
    v14 = v13;

    if (v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15 - v8;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      v18 = 3.0;
    }

    else
    {
      v18 = 1.70000005;
    }

    v19 = floor(floor((v16 - floor(v16 / v18)) * 0.5) * 0.5);
    v36 = [(WLQRCode *)self->_qrcode createQRCodeImage:?];
    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WLQRCodeViewController *)self contentView];
    [contentView addSubview:v20];

    v31 = MEMORY[0x277CCAAD0];
    topAnchor = [v20 topAnchor];
    contentView2 = [(WLQRCodeViewController *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v19];
    v37[0] = v32;
    bottomAnchor = [v20 bottomAnchor];
    contentView3 = [(WLQRCodeViewController *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v19];
    v37[1] = v25;
    centerXAnchor = [v20 centerXAnchor];
    contentView4 = [(WLQRCodeViewController *)self contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v37[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [v31 activateConstraints:v30];
  }
}

@end
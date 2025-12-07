@interface PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController;
  [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)&v7 loadView];
  view = [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)self view];
  [view setAutoresizesSubviews:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  indicator = self->_indicator;
  self->_indicator = v5;

  [view addSubview:self->_indicator];
  [(UIActivityIndicatorView *)self->_indicator startAnimating];
}

- (void)viewWillLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController;
  [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)&v30 viewWillLayoutSubviews];
  view = [(PKIssuerProvisioningExtensionAuthorizationPlaceholderViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  indicator = self->_indicator;
  [(UIActivityIndicatorView *)indicator frame];
  v22.n128_u64[0] = v21;
  v24.n128_u64[0] = v23;
  v25.n128_f64[0] = v13;
  v26.n128_f64[0] = v15;
  v27.n128_f64[0] = v17;
  v28.n128_f64[0] = v19;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v22, v24, v25, v26, v27, v28, v29);
  [(UIActivityIndicatorView *)indicator setFrame:?];
}

@end
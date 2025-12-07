@interface SKUIITunesPassLearnMoreAlertDelegate
+ (BOOL)shouldShowAlertForRedeem:(id)redeem configuration:(id)configuration;
+ (void)beginThrottleInterval;
- (SKUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)configuration clientContext:(id)context;
- (UIViewController)presentingViewController;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)show;
@end

@implementation SKUIITunesPassLearnMoreAlertDelegate

- (SKUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)configuration clientContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIITunesPassLearnMoreAlertDelegate *)v9 initWithRedeemConfiguration:v10 clientContext:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIITunesPassLearnMoreAlertDelegate;
  v17 = [(SKUIITunesPassLearnMoreAlertDelegate *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientContext, context);
    objc_storeStrong(&v18->_redeemConfiguration, configuration);
  }

  return v18;
}

+ (void)beginThrottleInterval
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIITunesPassLearnMoreAlertDelegate beginThrottleInterval]";
}

+ (BOOL)shouldShowAlertForRedeem:(id)redeem configuration:(id)configuration
{
  configurationCopy = configuration;
  redeemCopy = redeem;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIITunesPassLearnMoreAlertDelegate *)v7 shouldShowAlertForRedeem:v8 configuration:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  iTunesPassConfiguration = [configurationCopy ITunesPassConfiguration];
  learnMoreAlertView = [iTunesPassConfiguration learnMoreAlertView];

  [redeemCopy ITunesPassLearnMoreAlertInterval];
  v18 = v17;

  if (v18 >= 0.0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [standardUserDefaults objectForKey:@"SKUILastITunesPassLearnMoreAlertTime"];

    if (objc_opt_respondsToSelector())
    {
      v22 = MEMORY[0x277CBEAA8];
      [v21 doubleValue];
      v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
      [v23 timeIntervalSinceNow];
      if (v24 > -v18)
      {

        learnMoreAlertView = 0;
      }
    }

    v19 = learnMoreAlertView != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)show
{
  iTunesPassConfiguration = [(SKUIRedeemConfiguration *)self->_redeemConfiguration ITunesPassConfiguration];
  object = [iTunesPassConfiguration learnMoreAlertView];

  [object setDelegate:self];
  objc_setAssociatedObject(object, "com.apple.StoreKitUI.SKUIITunesPassLearnMoreAlertDelegate", self, 1);
  [object show];
  [objc_opt_class() beginThrottleInterval];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  object = view;
  if ([object cancelButtonIndex] != index)
  {
    presentingViewController = [(SKUIITunesPassLearnMoreAlertDelegate *)self presentingViewController];
    if (presentingViewController)
    {
      v7 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreViewController);
      [(SKUIRedeemStepViewController *)v7 setClientContext:self->_clientContext];
      [(SKUIRedeemStepViewController *)v7 setConfiguration:self->_redeemConfiguration];
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [presentingViewController presentViewController:v8 animated:1 completion:0];
    }
  }

  [object setDelegate:0];
  objc_setAssociatedObject(object, "com.apple.StoreKitUI.SKUIITunesPassLearnMoreAlertDelegate", 0, 1);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)initWithRedeemConfiguration:(uint64_t)a3 clientContext:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIITunesPassLearnMoreAlertDelegate initWithRedeemConfiguration:clientContext:]";
}

+ (void)shouldShowAlertForRedeem:(uint64_t)a3 configuration:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIITunesPassLearnMoreAlertDelegate shouldShowAlertForRedeem:configuration:]";
}

@end
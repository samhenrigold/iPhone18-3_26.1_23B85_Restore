@interface ICSCarPlayServicesController
- (void)acquireAssertionWithActivation:(BOOL)activation;
- (void)invalidateAssertion;
- (void)setAllowsBanners:(BOOL)banners;
@end

@implementation ICSCarPlayServicesController

- (void)invalidateAssertion
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    assertion = [(ICSCarPlayServicesController *)self assertion];
    v6 = 138412290;
    v7 = assertion;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating CarPlay assertion: %@", &v6, 0xCu);
  }

  assertion2 = [(ICSCarPlayServicesController *)self assertion];
  [assertion2 invalidate];

  [(ICSCarPlayServicesController *)self setAssertion:0];
}

- (void)acquireAssertionWithActivation:(BOOL)activation
{
  activationCopy = activation;
  assertion = [(ICSCarPlayServicesController *)self assertion];
  if (assertion)
  {
    v6 = activationCopy;
  }

  else
  {
    v6 = 1;
  }

  assertion2 = [(ICSCarPlayServicesController *)self assertion];

  if (!assertion2)
  {
    v9 = sub_100004F84(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Acquiring and activating CarPlay assertion", &v14, 2u);
    }

    v10 = [[CRSInCallAssertion alloc] initWithReason:@"incoming call"];
    [(ICSCarPlayServicesController *)self setAssertion:v10];
  }

  v11 = sub_100004F84(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    assertion3 = [(ICSCarPlayServicesController *)self assertion];
    v14 = 138412290;
    v15 = assertion3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@", &v14, 0xCu);
  }

  if (v6)
  {
    assertion4 = [(ICSCarPlayServicesController *)self assertion];
    [assertion4 activate];
  }
}

- (void)setAllowsBanners:(BOOL)banners
{
  bannersCopy = banners;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = bannersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting banners allowed %d on CarPlay assertion", v7, 8u);
  }

  assertion = [(ICSCarPlayServicesController *)self assertion];
  [assertion setAllowsBanners:bannersCopy];
}

@end
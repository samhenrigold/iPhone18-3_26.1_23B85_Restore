@interface UIViewController(AuthenticationServicesExtrasIPI)
- (void)setAs_navigationItem:()AuthenticationServicesExtrasIPI;
@end

@implementation UIViewController(AuthenticationServicesExtrasIPI)

- (void)setAs_navigationItem:()AuthenticationServicesExtrasIPI
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [UIViewController(AuthenticationServicesExtrasIPI) setAs_navigationItem:v2];
  }
}

@end
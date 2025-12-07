@interface OnboardingBuddySetupViewModel
- (int64_t)loadingStatus;
- (void)setLoadingStatus:(int64_t)status;
@end

@implementation OnboardingBuddySetupViewModel

- (int64_t)loadingStatus
{
  swift_getKeyPath(aH_27, a2);
  swift_getKeyPath(asc_1A3A865A0);
  sub_1A3A2EA60();
  sub_1A3A2F480();

  return v3;
}

- (void)setLoadingStatus:(int64_t)status
{
  swift_getKeyPath(aH_27, a2);
  swift_getKeyPath(asc_1A3A865A0);
  sub_1A3A2EA60();
  sub_1A3A2F480();

  swift_getKeyPath(aH_27);
  swift_getKeyPath(asc_1A3A865A0);
  sub_1A3A2EA60();
  sub_1A3A2F490();
  sub_1A3A1F220(v3);
}

@end
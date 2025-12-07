@interface DMCEnrollmentFlowController(Utilities)
@end

@implementation DMCEnrollmentFlowController(Utilities)

- (void)_fetchAppAttributesWithITunesItemID:()Utilities completionHandler:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [DMCEnrollmentFlowController(Utilities) _trustedErrors];
}

@end
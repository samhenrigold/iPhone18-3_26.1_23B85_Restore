@interface HFTriggerBuilder(AutomationBuilders)
- (BOOL)supportsHomeKitAutomationBuilders;
@end

@implementation HFTriggerBuilder(AutomationBuilders)

- (BOOL)supportsHomeKitAutomationBuilders
{
  trigger = [(HFTriggerBuilder *)self trigger];
  if (trigger)
  {
    v4 = trigger;
    trigger2 = [(HFTriggerBuilder *)self trigger];
    hf_copyAsBuilder = [trigger2 hf_copyAsBuilder];

    if (!hf_copyAsBuilder)
    {
      return 0;
    }
  }

  v7 = objc_msgSend_home(self);
  areAutomationBuildersSupported = [v7 areAutomationBuildersSupported];

  return areAutomationBuildersSupported;
}

@end
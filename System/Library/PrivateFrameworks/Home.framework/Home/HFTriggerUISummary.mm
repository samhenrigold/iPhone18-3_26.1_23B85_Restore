@interface HFTriggerUISummary
- (HFTriggerUISummary)initWithTrigger:(id)trigger inHome:(id)home forceDisabled:(BOOL)disabled;
- (HFTriggerUISummary)initWithTrigger:(id)trigger inHome:(id)home forceDisabled:(BOOL)disabled ignoringDisabled:(BOOL)ignoringDisabled;
- (void)_getTriggerName:(id)name home:(id)home;
- (void)_updateWithTrigger:(id)trigger inHome:(id)home forceDisabled:(BOOL)disabled ignoringDisabled:(BOOL)ignoringDisabled;
@end

@implementation HFTriggerUISummary

- (HFTriggerUISummary)initWithTrigger:(id)trigger inHome:(id)home forceDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  triggerCopy = trigger;
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HFTriggerUISummary;
  v10 = [(HFTriggerUISummary *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HFTriggerUISummary *)v10 _updateWithTrigger:triggerCopy inHome:homeCopy forceDisabled:disabledCopy ignoringDisabled:0];
  }

  return v11;
}

- (HFTriggerUISummary)initWithTrigger:(id)trigger inHome:(id)home forceDisabled:(BOOL)disabled ignoringDisabled:(BOOL)ignoringDisabled
{
  ignoringDisabledCopy = ignoringDisabled;
  disabledCopy = disabled;
  triggerCopy = trigger;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HFTriggerUISummary;
  v12 = [(HFTriggerUISummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(HFTriggerUISummary *)v12 _updateWithTrigger:triggerCopy inHome:homeCopy forceDisabled:disabledCopy ignoringDisabled:ignoringDisabledCopy];
  }

  return v13;
}

- (void)_updateWithTrigger:(id)trigger inHome:(id)home forceDisabled:(BOOL)disabled ignoringDisabled:(BOOL)ignoringDisabled
{
  ignoringDisabledCopy = ignoringDisabled;
  disabledCopy = disabled;
  triggerCopy = trigger;
  homeCopy = home;
  [(HFTriggerUISummary *)self _getTriggerName:triggerCopy home:homeCopy];
  isEnabled = [triggerCopy isEnabled];
  v13 = [HFTriggerActionSetsBuilder alloc];
  actionSets = [triggerCopy actionSets];
  v15 = [(HFTriggerActionSetsBuilder *)v13 initWithActionSets:actionSets inHome:homeCopy filterEmptyActionSets:1];

  actionSetsSummary = [(HFTriggerActionSetsBuilder *)v15 actionSetsSummary];
  objc_opt_class();
  v26 = triggerCopy;
  if (objc_opt_isKindOfClass())
  {
    v17 = v26;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  hf_remoteAccessState = [homeCopy hf_remoteAccessState];
  if (hf_remoteAccessState == 1 || [v18 triggerActivationState] == 1)
  {
    ignoringDisabledCopy = _HFLocalizedStringWithDefaultValue(@"HFTriggerDescriptionRemoteAccessStateNotCapable", @"HFTriggerDescriptionRemoteAccessStateNotCapable", 1);
  }

  else
  {
    ignoringDisabledCopy = [actionSetsSummary summaryText:isEnabled & !disabledCopy | ignoringDisabledCopy];
  }

  triggerDescription = self->_triggerDescription;
  self->_triggerDescription = ignoringDisabledCopy;

  summaryIconDescriptors = [actionSetsSummary summaryIconDescriptors];
  triggerSummaryIconDescriptors = self->_triggerSummaryIconDescriptors;
  self->_triggerSummaryIconDescriptors = summaryIconDescriptors;

  self->_triggerType = [v26 hf_triggerType];
  v24 = [HFTriggerIconFactory iconDescriptorForTrigger:v26];
  triggerIconDescriptor = self->_triggerIconDescriptor;
  self->_triggerIconDescriptor = v24;
}

- (void)_getTriggerName:(id)name home:(id)home
{
  nameCopy = name;
  homeCopy = home;
  configuredName = [nameCopy configuredName];
  self->_triggerNameIsConfigured = configuredName != 0;

  configuredName2 = [nameCopy configuredName];
  v9 = configuredName2;
  if (configuredName2)
  {
    name = configuredName2;
  }

  else
  {
    name = [nameCopy name];
  }

  triggerName = self->_triggerName;
  self->_triggerName = name;

  v12 = [nameCopy hf_naturalLanguageNameWithHome:homeCopy type:2];

  triggerNaturalLanguageTitle = self->_triggerNaturalLanguageTitle;
  self->_triggerNaturalLanguageTitle = v12;

  v14 = 32;
  if (self->_triggerNameIsConfigured)
  {
    v14 = 24;
  }

  objc_storeStrong(&self->_triggerDisplayTitle, *(&self->super.isa + v14));
  objc_storeStrong(&self->_triggerTitle, self->_triggerDisplayTitle);
}

@end
@interface WFStartTimerAction
- (id)parameterOverrides;
- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values;
- (id)sessionKitSessionConfiguration;
- (id)sessionKitSessionInvocationType;
- (void)getValueForParameterData:(id)data ofProcessedParameters:(id)parameters completionHandler:(id)handler;
@end

@implementation WFStartTimerAction

- (id)sessionKitSessionInvocationType
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  if (([currentDevice hasSystemAperture] & 1) != 0 || _os_feature_enabled_impl())
  {
    v3 = *MEMORY[0x277D7CBC0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sessionKitSessionConfiguration
{
  v8 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  if ([currentDevice hasSystemAperture] & 1) != 0 || (_os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x277D7C0E0]) initWithBundleIdentifier:@"com.apple.mobiletimerd" toastDurationPerRunSource:0];
  }

  else
  {
    v4 = getWFSessionKitLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[WFStartTimerAction sessionKitSessionConfiguration]";
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_DEFAULT, "%s Opting Start Timer out of session assertions because we're on a non-Dynamic Island device and they don't yet support banner presentations...", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

- (void)getValueForParameterData:(id)data ofProcessedParameters:(id)parameters completionHandler:(id)handler
{
  v48[1] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  handlerCopy = handler;
  dataCopy = data;
  name = [dataCopy name];
  v12 = [name isEqualToString:@"duration"];

  if (v12)
  {
    name2 = [dataCopy name];

    v14 = [parametersCopy objectForKey:name2];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    dataCopy = v15;

    magnitude = [dataCopy magnitude];
    [magnitude doubleValue];
    v18 = v17;

    if (v18 <= 0.0)
    {
      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277D7D0A0];
      v47 = *MEMORY[0x277CCA450];
      v36 = WFLocalizedString(@"Please provide a duration for the timer.");
      v48[0] = v36;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v38 = [v34 errorWithDomain:v35 code:5 userInfo:v37];
      handlerCopy[2](handlerCopy, 0, v38);
    }

    else
    {
      v19 = MEMORY[0x277D7C398];
      unitString = [dataCopy unitString];
      v21 = [v19 calendarUnitFromUnitString:unitString];

      date = [MEMORY[0x277CBEAA8] date];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      magnitude2 = [dataCopy magnitude];
      v25 = [currentCalendar dateByAddingUnit:v21 value:objc_msgSend(magnitude2 toDate:"integerValue") options:{date, 0}];

      [v25 timeIntervalSinceDate:date];
      v27 = v26;
      if (v26 >= 86400.0)
      {
        v39 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277D7D0A0];
        v45 = *MEMORY[0x277CCA450];
        v41 = WFLocalizedString(@"The timer's duration must be less than 24 hours.");
        v46 = v41;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v43 = [v39 errorWithDomain:v40 code:5 userInfo:v42];
        handlerCopy[2](handlerCopy, 0, v43);
      }

      else
      {
        v28 = objc_alloc(MEMORY[0x277CCAB10]);
        seconds = [MEMORY[0x277CCADD0] seconds];
        v30 = [v28 initWithDoubleValue:seconds unit:v27];

        v31 = objc_alloc(MEMORY[0x277D23958]);
        durationValueType = [MEMORY[0x277D23890] durationValueType];
        v33 = [v31 initWithValue:v30 valueType:durationValueType];
        (handlerCopy)[2](handlerCopy, v33, 0);
      }
    }
  }

  else
  {
    v44.receiver = self;
    v44.super_class = WFStartTimerAction;
    [(WFAppIntentExecutionAction *)&v44 getValueForParameterData:dataCopy ofProcessedParameters:parametersCopy completionHandler:handlerCopy];
  }
}

- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values
{
  v15[1] = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = intentCopy;
  type = [v6 type];
  label = [v6 label];
  if (label)
  {
  }

  else if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v11 = [(WFStartTimerAction *)self parameterForKey:@"duration"];
    objc_msgSend_duration(v6);
    v12 = [v11 stateForDuration:?];
    v14 = @"WFDuration";
    serializedRepresentation = [v12 serializedRepresentation];
    v15[0] = serializedRepresentation;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

LABEL_8:

  return v9;
}

- (id)parameterOverrides
{
  v18[6] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WFStartTimerAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v15 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v17[0] = *MEMORY[0x277D7CDF8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x277D7A6E8];
  v18[0] = v5;
  v18[1] = v6;
  v7 = *MEMORY[0x277D7CEB0];
  v17[1] = *MEMORY[0x277D7CF10];
  v17[2] = v7;
  v8 = *MEMORY[0x277D7CC50];
  v16[0] = *MEMORY[0x277D7CC58];
  v16[1] = v8;
  v16[2] = *MEMORY[0x277D7CC48];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v10 = *MEMORY[0x277D7CE68];
  v18[2] = v9;
  v18[3] = @"WFDuration";
  v11 = *MEMORY[0x277D7CEC8];
  v17[3] = v10;
  v17[4] = v11;
  v12 = WFLocalizedStringResourceWithKey(@"For how long?", @"For how long?");
  v17[5] = *MEMORY[0x277D7CEA8];
  v18[4] = v12;
  v18[5] = &unk_28509B060;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:6];
  WFAddEntriesToDictionary();

  return v3;
}

@end
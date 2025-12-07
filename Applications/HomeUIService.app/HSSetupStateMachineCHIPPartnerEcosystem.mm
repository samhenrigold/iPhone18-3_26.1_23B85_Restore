@interface HSSetupStateMachineCHIPPartnerEcosystem
- (BOOL)_sync_shouldSkipStep:(int64_t)step withConfiguration:(id)configuration;
- (int64_t)stepFollowingStep:(int64_t)step withConfiguration:(id)configuration;
@end

@implementation HSSetupStateMachineCHIPPartnerEcosystem

- (int64_t)stepFollowingStep:(int64_t)step withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  v6 = configurationCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!v8)
    {
      sub_10007A644(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  pairingError = [v8 pairingError];

  if (!pairingError)
  {
    v12 = sub_10004C888(v10);
    v13 = [NSNumber numberWithInteger:step];
    v14 = [v12 indexOfObject:v13];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10007A760(v15);
      }
    }

    else
    {
      v16 = v14 + 1;
      if (v16 < [v12 count])
      {
        v17 = [v12 objectAtIndexedSubscript:v16];
        intValue = [v17 intValue];

        if (intValue >= 8)
        {
          [v8 setIsReadyToPair:1];
        }

        v19 = [v12 objectAtIndexedSubscript:v16];
        intValue2 = [v19 intValue];

        goto LABEL_20;
      }

      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10007A6DC(v15);
      }
    }

    intValue2 = 58;
LABEL_20:

    goto LABEL_21;
  }

  intValue2 = 58;
LABEL_21:

  return intValue2;
}

- (BOOL)_sync_shouldSkipStep:(int64_t)step withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  v6 = configurationCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!v8)
    {
      sub_10007A644(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (step > 5)
  {
    if (step == 6)
    {
      matterDeviceSetupRequest = [v8 matterDeviceSetupRequest];
      topology = [matterDeviceSetupRequest topology];
      homes = [topology homes];
      if (homes)
      {
        matterDeviceSetupRequest2 = [v8 matterDeviceSetupRequest];
        topology2 = [matterDeviceSetupRequest2 topology];
        homes2 = [topology2 homes];
        v9 = [homes2 count] < 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      if (step != 13)
      {
        if (step == 26)
        {
          v9 = [HSPCNetworkCredentialManagementViewController shouldSkipForConfig:v8];
        }

        goto LABEL_30;
      }

      matterDeviceSetupRequest = [v8 matterDeviceSetupRequest];
      topology = [matterDeviceSetupRequest topology];
      homes = [topology homes];
      v9 = [homes count] == 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  if ((step - 2) < 2)
  {
    setupDescription = [v8 setupDescription];
    setupAccessoryPayload = [setupDescription setupAccessoryPayload];

    if (!setupAccessoryPayload)
    {
      delegate = [v8 delegate];
      matterDeviceSetupRequest = [delegate stateMachineConfigurationGetDiscoveredAccessory:v8];

      v9 = matterDeviceSetupRequest != 0;
LABEL_29:

      goto LABEL_30;
    }

LABEL_21:
    v9 = 1;
    goto LABEL_30;
  }

  if (step == 1 || step == 4)
  {
    setupDescription2 = [v8 setupDescription];
    setupAccessoryPayload2 = [setupDescription2 setupAccessoryPayload];

    if (!setupAccessoryPayload2)
    {
      delegate2 = [v8 delegate];
      matterDeviceSetupRequest = [delegate2 stateMachineConfigurationGetDiscoveredAccessory:v8];

      delegate3 = [v8 delegate];
      topology = [delegate3 stateMachineConfigurationGetSetupCode:v8];

      v9 = matterDeviceSetupRequest && ![matterDeviceSetupRequest requiresSetupCode] || objc_msgSend(topology, "length") != 0;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

LABEL_30:

  return v9;
}

@end
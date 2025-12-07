@interface LACDTOSensorTrustVerifyService
- (BOOL)shouldVerifySensorTrustWithFeatureState:(id)state trustState:(id)trustState;
- (id)verifySensorTrustWithFeatureState:(id)state trustState:(id)trustState repairState:(id)repairState;
@end

@implementation LACDTOSensorTrustVerifyService

- (BOOL)shouldVerifySensorTrustWithFeatureState:(id)state trustState:(id)trustState
{
  v24 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  trustStateCopy = trustState;
  isEnabled = [stateCopy isEnabled];
  if (isEnabled)
  {
    isDisapproved = [trustStateCopy isDisapproved];
    if (isDisapproved)
    {
      v9 = LACLogDTOSensor(isDisapproved);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = &unk_1F26936E8;
LABEL_7:
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Sensor trust verification finished with code: %{public}@", &v22, 0xCu);
      }
    }

    else
    {
      installedSensorID = [trustStateCopy installedSensorID];
      v13 = [installedSensorID length];

      if (!v13)
      {
        v9 = LACLogDTOSensor(v14);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v22 = 138543362;
        v23 = &unk_1F2693700;
        goto LABEL_7;
      }

      installedSensorID2 = [trustStateCopy installedSensorID];
      trustedSensorID = [trustStateCopy trustedSensorID];
      v17 = [installedSensorID2 isEqual:trustedSensorID];

      if (v17)
      {
        v9 = LACLogDTOSensor(v18);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v22 = 138543362;
        v23 = &unk_1F2693718;
        goto LABEL_7;
      }

      requirements = [stateCopy requirements];
      hasBiometricEnrollments = [requirements hasBiometricEnrollments];

      if (!hasBiometricEnrollments)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v9 = LACLogDTOSensor(v21);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = &unk_1F2693730;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = LACLogDTOSensor(isEnabled);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = &unk_1F26936D0;
      goto LABEL_7;
    }
  }

LABEL_8:

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)verifySensorTrustWithFeatureState:(id)state trustState:(id)trustState repairState:(id)repairState
{
  v21 = *MEMORY[0x1E69E9840];
  trustStateCopy = trustState;
  repairStateCopy = repairState;
  stateCopy = state;
  v11 = [[LACDTOMutableSensorTrustState alloc] initWithTrustState:trustStateCopy];
  v12 = [(LACDTOSensorTrustVerifyService *)self shouldVerifySensorTrustWithFeatureState:stateCopy trustState:trustStateCopy];

  v13 = trustStateCopy;
  if (v12)
  {
    repairFlag = [repairStateCopy repairFlag];
    v15 = LACLogDTOSensor(repairFlag);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (repairFlag == 3)
    {
      if (v16)
      {
        v19 = 138543362;
        v20 = &unk_1F2693748;
        _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Sensor trust verification finished with code: %{public}@", &v19, 0xCu);
      }

      [(LACDTOMutableSensorTrustState *)v11 disapprove];
    }

    else
    {
      if (v16)
      {
        v19 = 138543362;
        v20 = &unk_1F2693760;
        _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Sensor trust verification finished with code: %{public}@", &v19, 0xCu);
      }
    }

    v13 = v11;
  }

  v17 = v13;

  return v13;
}

@end
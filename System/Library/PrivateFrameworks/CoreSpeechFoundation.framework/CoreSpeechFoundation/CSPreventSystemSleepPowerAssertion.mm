@interface CSPreventSystemSleepPowerAssertion
- (CSPreventSystemSleepPowerAssertion)initWithTimeOut:(double)out;
- (void)_acquireAssertionForType:(__CFString *)type withTimeout:(double)timeout assertionId:(unsigned int *)id details:(__CFString *)details;
- (void)_releaseAssertionForAssertionId:(unsigned int *)id details:(__CFString *)details;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CSPreventSystemSleepPowerAssertion

- (void)_releaseAssertionForAssertionId:(unsigned int *)id details:(__CFString *)details
{
  v12 = *MEMORY[0x1E69E9840];
  if (*id)
  {
    v6 = IOPMAssertionRelease(*id);
    v7 = CSLogContextFacilityCoreSpeech;
    if (v6)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315395;
        v9 = "[CSPreventSystemSleepPowerAssertion _releaseAssertionForAssertionId:details:]";
        v10 = 2113;
        detailsCopy2 = details;
        _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Failed to released power assertion for %{private}@", &v8, 0x16u);
      }
    }

    else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315395;
      v9 = "[CSPreventSystemSleepPowerAssertion _releaseAssertionForAssertionId:details:]";
      v10 = 2113;
      detailsCopy2 = details;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Successfully released power assertion for %{private}@", &v8, 0x16u);
    }

    *id = 0;
  }
}

- (void)_acquireAssertionForType:(__CFString *)type withTimeout:(double)timeout assertionId:(unsigned int *)id details:(__CFString *)details
{
  v26 = *MEMORY[0x1E69E9840];
  *id = 0;
  if (timeout == 0.0)
  {
    v10 = IOPMAssertionCreateWithName(type, 0xFFu, @"com.apple.corespeech.powerassertion", id);
  }

  else
  {
    v10 = IOPMAssertionCreateWithDescription(type, @"com.apple.corespeech.powerassertion", details, 0, 0, timeout, @"TimeoutActionRelease", id);
  }

  if (*id)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = IOPMAssertionSetProperty(*id, @"AllowsDeviceRestart", *MEMORY[0x1E695E4D0]);
    v14 = CSLogContextFacilityCoreSpeech;
    if (v13)
    {
      v15 = v13;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315395;
        v21 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
        v22 = 1025;
        LODWORD(detailsCopy2) = v15;
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s IOPMAssertionSetProperty failed : %{private}d", &v20, 0x12u);
        v14 = CSLogContextFacilityCoreSpeech;
      }
    }

    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (timeout == 0.0)
    {
      if (!v16)
      {
        return;
      }

      v20 = 136315395;
      v21 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
      v22 = 2113;
      detailsCopy2 = details;
      v17 = "%s Taking power assertion %{private}@";
      v18 = v14;
      v19 = 22;
    }

    else
    {
      if (!v16)
      {
        return;
      }

      v20 = 136315651;
      v21 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
      v22 = 2113;
      detailsCopy2 = details;
      v24 = 2049;
      timeoutCopy = timeout;
      v17 = "%s Taking power assertion %{private}@ for a max of %{private}f seconds";
      v18 = v14;
      v19 = 32;
    }

    _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, v17, &v20, v19);
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Could not take power assertion", &v20, 0xCu);
    }

    [(CSPreventSystemSleepPowerAssertion *)self _releaseAssertionForAssertionId:id details:details];
  }
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  p_preventUserIdleSystemSleepAssertionId = &self->_preventUserIdleSystemSleepAssertionId;
  if (self->_preventUserIdleSystemSleepAssertionId)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSPreventSystemSleepPowerAssertion invalidate]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s UserIdleSystemSleepAssertion", &v5, 0xCu);
    }

    [(CSPreventSystemSleepPowerAssertion *)self _releaseAssertionForAssertionId:p_preventUserIdleSystemSleepAssertionId details:@"PreventUserIdleSystemSleep"];
  }
}

- (void)dealloc
{
  [(CSPreventSystemSleepPowerAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSPreventSystemSleepPowerAssertion;
  [(CSPreventSystemSleepPowerAssertion *)&v3 dealloc];
}

- (CSPreventSystemSleepPowerAssertion)initWithTimeOut:(double)out
{
  v7.receiver = self;
  v7.super_class = CSPreventSystemSleepPowerAssertion;
  v4 = [(CSPreventSystemSleepPowerAssertion *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeoutInterval = out;
    v4->_preventUserIdleSystemSleepAssertionId = 0;
    [(CSPreventSystemSleepPowerAssertion *)v4 _acquireAssertionForType:@"PreventUserIdleSystemSleep" withTimeout:&v4->_preventUserIdleSystemSleepAssertionId assertionId:@"PreventUserIdleSystemSleep" details:out];
  }

  return v5;
}

@end
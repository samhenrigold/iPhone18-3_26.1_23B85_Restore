@interface BYCapabilities
- (BOOL)canShowAppleIDScreen;
- (BOOL)canShowFaceIDScreen;
- (BOOL)canShowPasscodeScreen;
- (BOOL)canShowPaymentScreen;
- (BOOL)canShowSiriScreen;
- (BOOL)canShowTouchIDScreen;
- (BOOL)eligibleForChlorine;
- (BOOL)hasEligibleEnrolledIdentityForPeriocularFaceIDEnrollment;
- (BOOL)isAppAnalyticsRestricted;
- (BOOL)isCloudAnalyticsRestricted;
- (BOOL)isDeviceAnalyticsRestricted;
- (BOOL)isPearlEnrolled;
- (BOOL)isScreenTimeRestricted;
- (BOOL)isSiriRestricted;
- (BOOL)isTouchIDEnrolled;
- (BOOL)supportsKappaDetection;
- (BOOL)supportsPeriocularFaceID;
- (id)_paymentScreenRequirements;
- (void)eligibilitySetDeviceLocale:(id)locale;
- (void)eligibleForChlorine;
@end

@implementation BYCapabilities

- (BOOL)isTouchIDEnrolled
{
  if (![(BYCapabilities *)self supportsTouchID])
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getBiometricKitClass_softClass;
  v12 = getBiometricKitClass_softClass;
  if (!getBiometricKitClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getBiometricKitClass_block_invoke;
    v8[3] = &unk_1E7D02730;
    v8[4] = &v9;
    __getBiometricKitClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  manager = [v2 manager];
  v5 = [manager identities:0];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)isPearlEnrolled
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(BYCapabilities *)self supportsPearl])
  {
    return 0;
  }

  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v12 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v12];
  v5 = v12;

  if (!v4 || v5)
  {
    v9 = _BYLoggingFacility(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "BYCapabilities: Failed to fetch BKDevice: %@", buf, 0xCu);
    }

    v8 = 0;
    v7 = v4;
  }

  else
  {
    v11 = 0;
    v7 = [v4 identitiesForUser:getuid() error:&v11];
    v8 = [v7 count] != 0;
    v5 = v4;
  }

  return v8;
}

- (BOOL)supportsKappaDetection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getSOSUtilitiesClass_softClass;
  v9 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSOSUtilitiesClass_block_invoke;
    v5[3] = &unk_1E7D02730;
    v5[4] = &v6;
    __getSOSUtilitiesClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 isKappaDetectionSupportedOnPhone];
}

- (BOOL)canShowSiriScreen
{
  if (+[BYManagedAppleIDBootstrap isMultiUser])
  {
    LOBYTE(mgHasSiriCapability) = 0;
  }

  else
  {
    mgHasSiriCapability = [(BYCapabilities *)self mgHasSiriCapability];
    if (mgHasSiriCapability)
    {
      LOBYTE(mgHasSiriCapability) = ![(BYCapabilities *)self isSiriRestricted];
    }
  }

  return mgHasSiriCapability;
}

- (BOOL)canShowPaymentScreen
{
  _paymentScreenRequirements = [(BYCapabilities *)self _paymentScreenRequirements];
  v4 = (![(BYCapabilities *)self _paymentScreenRequirementsIncludePasscode:_paymentScreenRequirements]|| [(BYCapabilities *)self canShowPasscodeScreen]) && (![(BYCapabilities *)self _paymentScreenRequirementsIncludeiCloud:_paymentScreenRequirements]|| [(BYCapabilities *)self canShowAppleIDScreen]) && [(BYCapabilities *)self mgHasSecureElement];

  return v4;
}

- (id)_paymentScreenRequirements
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getPKSetupAssistantContextClass_softClass;
  v18 = getPKSetupAssistantContextClass_softClass;
  if (!getPKSetupAssistantContextClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getPKSetupAssistantContextClass_block_invoke;
    v13 = &unk_1E7D02730;
    v14 = &v15;
    __getPKSetupAssistantContextClass_block_invoke(&v10);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v4 = [[v2 alloc] initWithSetupAssistantAsFollowupAction:1];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getPKPaymentSetupAssistantControllerClass_softClass;
  v18 = getPKPaymentSetupAssistantControllerClass_softClass;
  if (!getPKPaymentSetupAssistantControllerClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getPKPaymentSetupAssistantControllerClass_block_invoke;
    v13 = &unk_1E7D02730;
    v14 = &v15;
    __getPKPaymentSetupAssistantControllerClass_block_invoke(&v10);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [[v5 alloc] initWithSetupAssistantContext:v4];
  v10 = 0;
  [v7 setupAssistantNeedsToRunReturningRequirements:&v10];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];

  return v8;
}

- (BOOL)canShowTouchIDScreen
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE90]] == 2)
  {

    return 0;
  }

  v4 = +[BYManagedAppleIDBootstrap isMultiUser];

  if (v4)
  {
    return 0;
  }

  return [(BYCapabilities *)self mgHasMesa];
}

- (BOOL)canShowFaceIDScreen
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE90]] == 2)
  {

    return 0;
  }

  v4 = +[BYManagedAppleIDBootstrap isMultiUser];

  if (v4)
  {
    return 0;
  }

  return [(BYCapabilities *)self supportsPearl];
}

- (BOOL)canShowPasscodeScreen
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADF10]] == 2)
  {
    LOBYTE(v3) = 0;
LABEL_6:

    return v3;
  }

  v4 = +[BYManagedAppleIDBootstrap isMultiUser];

  if (!v4)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v3 = [mEMORY[0x1E69ADFB8] isPasscodeSet] ^ 1;
    goto LABEL_6;
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)canShowAppleIDScreen
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] != 2;

  return v3;
}

- (BOOL)isSiriRestricted
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADDA8]] == 2;

  return v3;
}

- (BOOL)isDeviceAnalyticsRestricted
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE40]];

  mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [mEMORY[0x1E69ADFB8]2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE48]];

  if (v5 == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isAppAnalyticsRestricted
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADD88]];

  return v3;
}

- (BOOL)isCloudAnalyticsRestricted
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] == 2;

  return v3;
}

- (BOOL)isScreenTimeRestricted
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE50]] == 2;

  return v3;
}

- (BOOL)eligibleForChlorine
{
  domain_answer = os_eligibility_get_domain_answer();
  v3 = domain_answer;
  v4 = _BYLoggingFacility(domain_answer);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(BYCapabilities *)v3 eligibleForChlorine];
  }

  return 0;
}

- (void)eligibilitySetDeviceLocale:(id)locale
{
  if (locale)
  {
    v3 = xpc_string_create([locale UTF8String]);
    v4 = os_eligibility_set_input();
    if (v4)
    {
      v5 = v4;
      v6 = _BYLoggingFacility(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(BYCapabilities *)v5 eligibilitySetDeviceLocale:v6];
      }
    }
  }
}

- (BOOL)hasEligibleEnrolledIdentityForPeriocularFaceIDEnrollment
{
  v17 = *MEMORY[0x1E69E9840];
  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v14 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v14];
  v5 = v14;

  if (!v4 || v5)
  {
    v7 = _BYLoggingFacility(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch BKDevice: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v13 = 0;
    v7 = [v4 identitiesForUser:getuid() error:&v13];
    v5 = v13;
    v8 = _BYLoggingFacility(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Periocular check identities: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_3];
    v10 = [v7 filteredArrayUsingPredicate:v9];
    v11 = [v10 count] != 0;
  }

  return v11;
}

- (BOOL)supportsPeriocularFaceID
{
  v17 = *MEMORY[0x1E69E9840];
  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v14 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v14];
  v5 = v14;

  if (!v4 || v5)
  {
    v7 = _BYLoggingFacility(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch BKDevice: %@", buf, 0xCu);
    }

    bOOLValue = 0;
  }

  else
  {
    v13 = 0;
    v7 = [v4 supportsPeriocularEnrollmentWithError:&v13];
    v8 = v13;
    v5 = v8;
    if (v8)
    {
      v9 = _BYLoggingFacility(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to fetch device support for Periocular error:%@", buf, 0xCu);
      }
    }

    v10 = _BYLoggingFacility(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "periocularSupported: %@", buf, 0xCu);
    }

    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (void)eligibleForChlorine
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to get eligibility for chlorine with error %d", v2, 8u);
}

- (void)eligibilitySetDeviceLocale:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to set eligibility device locale with error %d", v2, 8u);
}

@end
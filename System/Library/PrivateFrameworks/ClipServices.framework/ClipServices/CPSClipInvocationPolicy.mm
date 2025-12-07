@interface CPSClipInvocationPolicy
+ (id)eligiblePolicy;
+ (id)ineligiblePolicyWithReason:(int64_t)reason;
+ (id)invocationPolicyWithAMSDict:(id)dict;
+ (void)requestAccountPolicyForClipMetadata:(id)metadata withCompletion:(id)completion;
- (CPSClipInvocationPolicy)initWithCoder:(id)coder;
- (CPSClipInvocationPolicy)initWithEligible:(BOOL)eligible reason:(int64_t)reason;
- (NSString)localizedTitle;
- (id)localizedMessageForClipMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSClipInvocationPolicy

- (CPSClipInvocationPolicy)initWithEligible:(BOOL)eligible reason:(int64_t)reason
{
  v10.receiver = self;
  v10.super_class = CPSClipInvocationPolicy;
  v6 = [(CPSClipInvocationPolicy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_eligible = eligible;
    v6->_reason = reason;
    v8 = v6;
  }

  return v7;
}

+ (id)eligiblePolicy
{
  v2 = [[self alloc] initWithEligible:1 reason:0];

  return v2;
}

+ (id)ineligiblePolicyWithReason:(int64_t)reason
{
  v3 = [[self alloc] initWithEligible:0 reason:reason];

  return v3;
}

+ (void)requestAccountPolicyForClipMetadata:(id)metadata withCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  v8 = CPSBypassAccountEligibilityCheck();
  if (v8)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_INFO, "%{public}@ (%p): Bypassing account policy check.", buf, 0x16u);
    }

    sharedConnection = +[CPSClipInvocationPolicy eligiblePolicy];
    completionCopy[2](completionCopy, sharedConnection);
  }

  else
  {
    v13 = CPSAccountPolicyOverride();
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v13, v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v16)
      {
        v17 = v15;
        *buf = 138543874;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v35 = v13;
        _os_log_impl(&dword_2436ED000, v17, OS_LOG_TYPE_INFO, "%{public}@ (%p): Use policy override from user defaults: value = %ld ", buf, 0x20u);
      }

      sharedConnection = [CPSClipInvocationPolicy ineligiblePolicyWithReason:v13];
      completionCopy[2](completionCopy, sharedConnection);
    }

    else
    {
      if (v16)
      {
        v18 = v15;
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_2436ED000, v18, OS_LOG_TYPE_INFO, "%{public}@ (%p): Determining account policy.", buf, 0x16u);
      }

      v30 = 0;
      v31 = &v30;
      v32 = 0x2050000000;
      v19 = getMCProfileConnectionClass_softClass_0;
      v33 = getMCProfileConnectionClass_softClass_0;
      if (!getMCProfileConnectionClass_softClass_0)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getMCProfileConnectionClass_block_invoke_0;
        v35 = &unk_278DCDC00;
        v36 = &v30;
        __getMCProfileConnectionClass_block_invoke_0(buf);
        v19 = v31[3];
      }

      v20 = v19;
      _Block_object_dispose(&v30, 8);
      sharedConnection = [v19 sharedConnection];
      if ([sharedConnection isAppClipsAllowed])
      {
        hasFullAppInstalledOnSystem = [metadataCopy hasFullAppInstalledOnSystem];
        if (hasFullAppInstalledOnSystem)
        {
          v23 = CPS_LOG_CHANNEL_PREFIXClipServices(hasFullAppInstalledOnSystem, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = v23;
            v25 = objc_opt_class();
            *buf = 138543618;
            *&buf[4] = v25;
            *&buf[12] = 2048;
            *&buf[14] = self;
            _os_log_impl(&dword_2436ED000, v24, OS_LOG_TYPE_INFO, "%{public}@ (%p): Bypassing account policy check because full app is already installed.", buf, 0x16u);
          }

          v26 = +[CPSClipInvocationPolicy eligiblePolicy];
          completionCopy[2](completionCopy, v26);
        }

        else
        {
          v26 = objc_alloc_init(MEMORY[0x277CEC320]);
          [v26 setLookupFamilyInfoIfNecessary:1];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke;
          v27[3] = &unk_278DCEA18;
          selfCopy = self;
          v28 = completionCopy;
          [v26 statusWithCompletion:v27];
        }
      }

      else
      {
        v26 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:6];
        completionCopy[2](completionCopy, v26);
      }
    }
  }
}

void __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v9)
  {
    v11 = *(a1 + 40);
    v12 = v8;
    v25 = 138543874;
    v26 = v11;
    v27 = 2048;
    v28 = objc_opt_class();
    v29 = 2048;
    v30 = [v5 accountStatus];
    _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_INFO, "%{public}@ (%p): Obtained ASDAccountStatusCode: %ld", &v25, 0x20u);
  }

  if (!v5 || v6)
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke_cold_1(a1, v15, v6);
    }

    v13 = *(a1 + 32);
    v14 = 12;
  }

  else
  {
    if (([v5 hasErrorStatus] & 1) == 0)
    {
      v13 = *(a1 + 32);
      v16 = +[CPSClipInvocationPolicy eligiblePolicy];
      goto LABEL_13;
    }

    if ([v5 hasResponseFlag:1])
    {
      v13 = *(a1 + 32);
      v14 = 1;
    }

    else if ([v5 hasResponseFlag:32])
    {
      v13 = *(a1 + 32);
      v14 = 4;
    }

    else if ([v5 hasResponseFlag:16])
    {
      v13 = *(a1 + 32);
      v14 = 9;
    }

    else if ([v5 hasResponseFlag:64])
    {
      v13 = *(a1 + 32);
      v14 = 10;
    }

    else if ([v5 hasResponseFlag:4])
    {
      v13 = *(a1 + 32);
      v14 = 11;
    }

    else if ([v5 hasResponseFlag:256])
    {
      v13 = *(a1 + 32);
      v14 = 3;
    }

    else
    {
      v18 = [v5 hasResponseFlag:128];
      if (v18)
      {
        v13 = *(a1 + 32);
        v14 = 2;
      }

      else
      {
        v20 = CPS_LOG_CHANNEL_PREFIXClipServices(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 40);
          v22 = v20;
          v23 = objc_opt_class();
          v24 = [v5 accountStatus];
          v25 = 138543874;
          v26 = v21;
          v27 = 2048;
          v28 = v23;
          v29 = 2048;
          v30 = v24;
          _os_log_impl(&dword_2436ED000, v22, OS_LOG_TYPE_INFO, "%{public}@ (%p): Unhandled ASDAccountStatusCode encountered while determining account policy. Account status: %ld", &v25, 0x20u);
        }

        v13 = *(a1 + 32);
        v14 = 15;
      }
    }
  }

  v16 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:v14];
LABEL_13:
  v17 = v16;
  (*(v13 + 16))(v13, v16);
}

+ (id)invocationPolicyWithAMSDict:(id)dict
{
  v25 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices(dictCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v19 = 138543618;
    selfCopy2 = objc_opt_class();
    v21 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "%{public}@ (%p): Determining clip policy.", &v19, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277CEC388]) initWithDictionary:dictCopy];

  v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = objc_opt_class();
    responseCode = [v8 responseCode];
    v19 = 138543874;
    selfCopy2 = self;
    v21 = 2048;
    selfCopy = v13;
    v23 = 2048;
    v24 = responseCode;
    _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_INFO, "%{public}@ (%p): Obtained ASDClipRestrictionsTask response code: %ld", &v19, 0x20u);
  }

  if (CPSAMSRestrictionsCodeOverride() == 14)
  {
    goto LABEL_6;
  }

  if ([v8 hasErrorStatus])
  {
    if ([v8 hasResponseFlag:1])
    {
      v15 = 9;
      goto LABEL_7;
    }

    if ([v8 hasResponseFlag:2])
    {
      v15 = 5;
      goto LABEL_7;
    }

    if (![v8 hasResponseFlag:4])
    {
      v15 = 15;
      goto LABEL_7;
    }

LABEL_6:
    v15 = 14;
LABEL_7:
    v16 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:v15];
    goto LABEL_12;
  }

  v16 = +[CPSClipInvocationPolicy eligiblePolicy];
LABEL_12:
  v17 = v16;

  return v17;
}

- (NSString)localizedTitle
{
  v3 = self->_reason - 1;
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = _CPSLocalizedString(off_278DCEA50[v3], &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
  }

  return v4;
}

- (id)localizedMessageForClipMetadata:(id)metadata
{
  metadataCopy = metadata;
  switch(self->_reason)
  {
    case 1:
      v5 = @"To use this app clip, you need to sign in with your Apple Account first.";
      goto LABEL_16;
    case 2:
      v5 = @"Before you can proceed, you must read and accept the new Terms and Conditions in the App Store.";
      goto LABEL_16;
    case 3:
      v5 = @"View and correct the problem in your Billing Info. If you cancel you may not be able to buy until this billing issue has been resolved.";
      goto LABEL_16;
    case 4:
      v5 = @"To ask permission to buy the app for this app clip, open the App Store";
      goto LABEL_16;
    case 5:
      v5 = @"To use this app clip, you first need to verify your age in the App Store";
      goto LABEL_16;
    case 6:
      v5 = @"Due to restrictions set for this device, app clips cannot be used";
      goto LABEL_16;
    case 7:
      v5 = @"App clips are not available with a managed Apple Account";
      goto LABEL_16;
    case 8:
      v5 = @"This app clip is not currently available in your country or region";
      goto LABEL_16;
    case 9:
      v5 = @"Due to restrictions set for this device, this app clip cannot be used";
      goto LABEL_16;
    case 0xALL:
      v5 = @"App clips are not available in your region";
      goto LABEL_16;
    case 0xBLL:
      v5 = @"App clips are not available with a restricted Apple Account";
      goto LABEL_16;
    case 0xCLL:
    case 0xDLL:
    case 0xFLL:
      v5 = @"App Clip Unavailable";
LABEL_16:
      v9 = _CPSLocalizedString(v5, &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
      break;
    case 0xELL:
      v6 = MEMORY[0x277CCACA8];
      v7 = _CPSLocalizedString(@"This app clip requires iOS %@ or later", &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
      clipMinimumOSVersion = [metadataCopy clipMinimumOSVersion];
      v9 = [v6 stringWithFormat:v7, clipMinimumOSVersion];

      break;
    default:
      v9 = 0;
      break;
  }

  return v9;
}

- (CPSClipInvocationPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPSClipInvocationPolicy;
  v5 = [(CPSClipInvocationPolicy *)&v8 init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"CPSClipInvocationPolicyKeyReason"];
    v5->_eligible = [coderCopy decodeBoolForKey:@"CPSClipInvocationPolicyKeyEligible"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInteger:reason forKey:@"CPSClipInvocationPolicyKeyReason"];
  [coderCopy encodeBool:self->_eligible forKey:@"CPSClipInvocationPolicyKeyEligible"];
}

void __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [a3 cps_privacyPreservingDescription];
  v8 = 138543874;
  v9 = v4;
  v10 = 2048;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_2436ED000, v5, OS_LOG_TYPE_ERROR, "%{public}@ (%p): Error determining account policy: %@", &v8, 0x20u);
}

@end
@interface SHSDualSIMToneHelper
+ (BOOL)hasMultipleCTSubscriptionsInUse;
+ (BOOL)shouldShowSIMBasedToneCustomizationForAlertType:(int64_t)type;
+ (id)fetchCTSubscriptionsInUse;
+ (id)fetchLocalizedPhoneNumberForContext:(id)context;
+ (id)fetchShortLabelForContext:(id)context;
@end

@implementation SHSDualSIMToneHelper

+ (id)fetchCTSubscriptionsInUse
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = _SHSCTClient(self);
  v19 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v19];
  v4 = v19;

  v5 = SHSLogForCategory(0);
  subscriptionsInUse2 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SHSDualSIMToneHelper fetchCTSubscriptionsInUse];
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionsInUse = [v3 subscriptionsInUse];
      *buf = 136315394;
      v22 = "+[SHSDualSIMToneHelper fetchCTSubscriptionsInUse]";
      v23 = 2112;
      v24 = subscriptionsInUse;
      _os_log_impl(&dword_265896000, subscriptionsInUse2, OS_LOG_TYPE_DEFAULT, "%s: Received subscriptionsInUse: %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    subscriptionsInUse2 = [v3 subscriptionsInUse];
    v9 = [subscriptionsInUse2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(subscriptionsInUse2);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (([v13 isSimHidden] & 1) == 0 && (objc_msgSend(v13, "isSimDataOnly") & 1) == 0)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [subscriptionsInUse2 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

+ (id)fetchShortLabelForContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = _SHSCTClient(contextCopy);
  v10 = 0;
  v5 = [v4 getShortLabel:contextCopy error:&v10];
  v6 = v10;

  v7 = 0;
  if (!v6)
  {
    v8 = SHSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "+[SHSDualSIMToneHelper fetchShortLabelForContext:]";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = contextCopy;
      _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s: Received shortLabel: %@ for Context: %@", buf, 0x20u);
    }

    v7 = v5;
  }

  return v7;
}

+ (id)fetchLocalizedPhoneNumberForContext:(id)context
{
  contextCopy = context;
  v4 = _SHSCTClient(contextCopy);
  v24 = 0;
  v5 = [v4 getPhoneNumber:contextCopy error:&v24];
  v6 = v24;

  if (v5)
  {
    number = [v5 number];
    if (!number)
    {
      v8 = SHSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
      }

      v9 = &stru_28772CD00;
      goto LABEL_26;
    }
  }

  else
  {
    v10 = SHSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
    }

    number = 0;
  }

  v8 = number;
  v11 = _SHSCTClient(v8);
  v23 = 0;
  v12 = [v11 getMobileSubscriberHomeCountryList:contextCopy error:&v23];
  v13 = v23;

  firstObject = &stru_28772CD00;
  if (!v13)
  {
    firstObject = [v12 firstObject];
  }

  v15 = CFPhoneNumberCreate();
  if (v15)
  {
    v16 = v15;
    String = CFPhoneNumberCreateString();

    if (!String)
    {
      v18 = SHSLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
      }
    }

    CFRelease(v16);
  }

  else
  {
    v19 = SHSLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
    }

    String = v8;
  }

  v20 = [(__CFString *)String length];
  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = &stru_28772CD00;
  }

  if (v20)
  {
    v21 = String;
  }

  v9 = v21;

LABEL_26:

  return v9;
}

+ (BOOL)shouldShowSIMBasedToneCustomizationForAlertType:(int64_t)type
{
  v4 = [self alertTypeSupportsSIMBasedToneCustomization:type];
  if (v4)
  {

    LOBYTE(v4) = [self hasMultipleCTSubscriptionsInUse];
  }

  return v4;
}

+ (BOOL)hasMultipleCTSubscriptionsInUse
{
  fetchCTSubscriptionsInUse = [self fetchCTSubscriptionsInUse];
  v3 = [fetchCTSubscriptionsInUse count] > 1;

  return v3;
}

@end
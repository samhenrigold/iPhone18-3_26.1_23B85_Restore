@interface CKSettingsMMSHelper
+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d;
@end

@implementation CKSettingsMMSHelper

+ (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReadMMSDefaultFromCBEnabled = [mEMORY[0x277D1A9B8] isReadMMSDefaultFromCBEnabled];

  if (isReadMMSDefaultFromCBEnabled)
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v11 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

    if (v11 || (IMSharedHelperDeviceHasMultipleActiveSubscriptions() & 1) == 0 && ([MEMORY[0x277D1A908] sharedInstance], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "ctSubscriptionInfo"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "subscriptions"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v11))
    {
      mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
      v13 = [mEMORY[0x277D1A908]2 copyCarrierBundleValueForSubscriptionContext:v11 keyHierarchy:&unk_2856EB970 defaultValue:0 valueIfError:0];

      if (v13)
      {
        v14 = [v13 valueForKey:@"MMSDefaultEnabled"];
        v15 = v14;
        if (v14)
        {
          bOOLValue = [v14 BOOLValue];
        }

        else
        {
          bOOLValue = 1;
        }
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end
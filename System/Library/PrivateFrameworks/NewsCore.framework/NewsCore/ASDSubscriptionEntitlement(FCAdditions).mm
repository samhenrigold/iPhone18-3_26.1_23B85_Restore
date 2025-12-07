@interface ASDSubscriptionEntitlement(FCAdditions)
- (id)description;
- (id)servicesBundlePurchaseID;
@end

@implementation ASDSubscriptionEntitlement(FCAdditions)

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  inAppAdamID = [self inAppAdamID];
  offerID = [self offerID];
  if ([self isTrialPeriod])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([self isPurchaser])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v2 stringWithFormat:@"{purchaseId=%@, offerId=%@, isTrialPeriod=%@, isPurchaser=%@}", inAppAdamID, offerID, v5, v6];

  return v7;
}

- (id)servicesBundlePurchaseID
{
  objc_opt_class();
  subscriptionBundleID = [self subscriptionBundleID];
  if (subscriptionBundleID)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = subscriptionBundleID;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    if ([v5 intValue])
    {
      stringValue = [v5 stringValue];
    }

    else
    {
      stringValue = 0;
    }
  }

  else
  {
    objc_opt_class();
    subscriptionBundleID2 = [self subscriptionBundleID];
    if (subscriptionBundleID2)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = subscriptionBundleID2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    stringValue = v8;
  }

  return stringValue;
}

@end
@interface ASDSubscriptionEntitlement
- (ASDSubscriptionEntitlement)initWithCoder:(id)coder;
- (ASDSubscriptionEntitlement)initWithDictionary:(id)dictionary forAppAdamID:(id)d segment:(unint64_t)segment hasFamily:(BOOL)family;
- (BOOL)autoRenewEnabled;
- (BOOL)isInGracePeriod;
- (BOOL)isNewsAppPurchase;
- (BOOL)isOfferPeriod;
- (BOOL)isPurchaser;
- (BOOL)isTrialPeriod;
- (NSDate)expiryDate;
- (NSDate)startDate;
- (NSNumber)appAdamID;
- (NSNumber)appVersion;
- (NSNumber)chargeStoreFrontID;
- (NSNumber)entitlementSourceAdamID;
- (NSNumber)familyID;
- (NSNumber)familyRank;
- (NSNumber)featureAccessTypeID;
- (NSNumber)freeTrialPeriodID;
- (NSNumber)inAppAdamID;
- (NSNumber)initialPurchaseTimestamp;
- (NSNumber)originalPurchaseDownloadID;
- (NSNumber)promoScenarioID;
- (NSNumber)purchasabilityType;
- (NSNumber)purchaseDownloadID;
- (NSNumber)quantity;
- (NSNumber)serviceBeginsTimestamp;
- (NSNumber)subscriptionBundleID;
- (NSString)chargeCountryCode;
- (NSString)chargeCurrencyCode;
- (NSString)entitlementOriginType;
- (NSString)externalSubscriptionID;
- (NSString)inAppVersion;
- (NSString)offerID;
- (NSString)poolType;
- (NSString)productCode;
- (NSString)vendorAdHocOfferID;
- (NSString)vendorID;
- (id)_dateFromDateString:(uint64_t)string;
- (id)_valueForKey:(uint64_t)key ofType:;
@end

@implementation ASDSubscriptionEntitlement

- (ASDSubscriptionEntitlement)initWithDictionary:(id)dictionary forAppAdamID:(id)d segment:(unint64_t)segment hasFamily:(BOOL)family
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ASDSubscriptionEntitlement;
  v12 = [(ASDSubscriptionEntitlement *)&v18 init];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [dictionaryCopy mutableCopy];
    [v14 setObject:dCopy forKeyedSubscript:@"appAdamId"];
    v15 = [v14 copy];
    dictionary = v12->_dictionary;
    v12->_dictionary = v15;

    v12->_segment = segment;
    v12->_hasFamily = family;

    objc_autoreleasePoolPop(v13);
  }

  return v12;
}

- (NSNumber)appAdamID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (id)_valueForKey:(uint64_t)key ofType:
{
  if (self)
  {
    v3 = [*(self + 8) valueForKey:a2];
    v4 = [v3 copy];

    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)appVersion
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (BOOL)autoRenewEnabled
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (NSString)chargeCountryCode
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)chargeCurrencyCode
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)chargeStoreFrontID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)entitlementOriginType
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)entitlementSourceAdamID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSDate)expiryDate
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  v5 = [(ASDSubscriptionEntitlement *)self _dateFromDateString:v4];

  return v5;
}

- (id)_dateFromDateString:(uint64_t)string
{
  v2 = 0;
  if (string && a2)
  {
    v3 = MEMORY[0x1E696AB78];
    v4 = a2;
    v5 = objc_alloc_init(v3);
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v5 setLocale:v6];
    [v5 setDateFormat:@"EEE MMM dd HH:mm:ss z yyyy"];
    v2 = [v5 dateFromString:v4];
  }

  return v2;
}

- (NSString)externalSubscriptionID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)familyID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)familyRank
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)featureAccessTypeID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)freeTrialPeriodID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)inAppAdamID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)inAppVersion
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)initialPurchaseTimestamp
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (BOOL)isTrialPeriod
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isOfferPeriod
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPurchaser
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isNewsAppPurchase
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isInGracePeriod
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (NSString)offerID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)originalPurchaseDownloadID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)poolType
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)productCode
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)promoScenarioID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)purchasabilityType
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)purchaseDownloadID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)serviceBeginsTimestamp
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSDate)startDate
{
  v3 = objc_opt_class();
  v4 = [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
  v5 = [(ASDSubscriptionEntitlement *)self _dateFromDateString:v4];

  return v5;
}

- (NSNumber)subscriptionBundleID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSNumber)quantity
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)vendorAdHocOfferID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (NSString)vendorID
{
  v3 = objc_opt_class();

  return [(ASDSubscriptionEntitlement *)self _valueForKey:v3 ofType:?];
}

- (ASDSubscriptionEntitlement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDSubscriptionEntitlement;
  v5 = [(ASDSubscriptionEntitlement *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end
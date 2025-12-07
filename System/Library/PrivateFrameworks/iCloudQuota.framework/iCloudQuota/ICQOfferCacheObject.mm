@interface ICQOfferCacheObject
- (ICQOfferCacheObject)initWithDaemonOffer:(id)offer bundleIdentifier:(id)identifier;
- (id)offer;
@end

@implementation ICQOfferCacheObject

- (ICQOfferCacheObject)initWithDaemonOffer:(id)offer bundleIdentifier:(id)identifier
{
  offerCopy = offer;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = ICQOfferCacheObject;
  v9 = [(ICQOfferCacheObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonOffer, offer);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
  }

  return v10;
}

- (id)offer
{
  daemonOffer = [(ICQOfferCacheObject *)self daemonOffer];
  bundleIdentifier = [(ICQOfferCacheObject *)self bundleIdentifier];
  if (daemonOffer)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 isEqualToString:v8];

    v9 = objc_alloc(objc_opt_class());
    serverDictionary = [daemonOffer serverDictionary];
    accountAltDSID = [daemonOffer accountAltDSID];
    notificationID = [daemonOffer notificationID];
    retrievalDate = [daemonOffer retrievalDate];
    [daemonOffer callbackInterval];
    v15 = v14;
    v16 = [daemonOffer appLaunchLinkForBundleID:bundleIdentifier];
    v17 = [v9 initWithServerDictionary:serverDictionary accountAltDSID:accountAltDSID notificationID:notificationID retrievalDate:retrievalDate callbackInterval:v16 appLaunchLink:bundleIdentifier bundleIdentifier:v15];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
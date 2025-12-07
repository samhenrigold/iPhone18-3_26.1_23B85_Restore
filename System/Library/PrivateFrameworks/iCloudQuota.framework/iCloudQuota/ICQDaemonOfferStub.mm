@interface ICQDaemonOfferStub
- (Class)offerClass;
- (ICQDaemonOfferCriteria)criteria;
- (ICQDaemonOfferStub)initWithServerDictionary:(id)dictionary;
- (NSDictionary)offerResetPayload;
- (NSString)offerId;
- (NSString)offerResetURL;
- (id)persistedOffer;
- (int64_t)requestType;
- (void)offerResetURL;
@end

@implementation ICQDaemonOfferStub

- (ICQDaemonOfferStub)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICQDaemonOfferStub;
  v5 = [(ICQDaemonOfferStub *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    serverDict = v5->_serverDict;
    v5->_serverDict = v6;
  }

  return v5;
}

- (NSString)offerId
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_serverDict, a2, @"offerId");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_288431E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (ICQDaemonOfferCriteria)criteria
{
  serverDictionary = [(ICQDaemonOfferStub *)self serverDictionary];
  v3 = objc_msgSend_objectForKeyedSubscript_(serverDictionary);

  v4 = [[ICQDaemonOfferCriteria alloc] initWithServerDictionary:v3];

  return v4;
}

- (Class)offerClass
{
  if (![(ICQDaemonOfferStub *)self isBuddyOffer]&& ![(ICQDaemonOfferStub *)self isPremiumOffer]&& ![(ICQDaemonOfferStub *)self isDefaultOffer])
  {
    [(ICQDaemonOfferStub *)self isEventOffer];
  }

  v3 = objc_opt_class();

  return v3;
}

- (id)persistedOffer
{
  offerClass = [(ICQDaemonOfferStub *)self offerClass];

  return [(objc_class *)offerClass persistedObject];
}

- (int64_t)requestType
{
  if ([(ICQDaemonOfferStub *)self isBuddyOffer])
  {
    return 4;
  }

  if ([(ICQDaemonOfferStub *)self isPremiumOffer])
  {
    return 2;
  }

  if ([(ICQDaemonOfferStub *)self isDefaultOffer])
  {
    return 1;
  }

  if ([(ICQDaemonOfferStub *)self isEventOffer])
  {
    return 5;
  }

  return 3;
}

- (NSString)offerResetURL
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_serverDict, a2, @"offerResetURL");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICQDaemonOfferStub *)v2 offerResetURL];
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (NSDictionary)offerResetPayload
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_serverDict, a2, @"offerResetPayload");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICQDaemonOfferStub *)v2 offerResetURL];
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)offerResetURL
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0_2(&dword_275572000, v2, v3, "Expected String for offerResetURL got %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end
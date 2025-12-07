@interface VSSubscriptionSource
+ (id)currentSource;
+ (id)subscriptionSourceForAppWithBundleID:(id)d;
+ (id)subscriptionSourceForWebsiteWithDomainName:(id)name;
+ (id)subscriptionSourceForWebsiteWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (VSSubscriptionSource)init;
- (VSSubscriptionSource)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSSubscriptionSource

+ (id)currentSource
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [VSOptional optionalWithObject:bundleIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__VSSubscriptionSource_currentSource__block_invoke;
  v9[3] = &unk_278B74240;
  v9[4] = &v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__VSSubscriptionSource_currentSource__block_invoke_2;
  v8[3] = &unk_278B74318;
  v8[4] = &v10;
  [v4 conditionallyUnwrapObject:v9 otherwise:v8];

  v5 = v11[5];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The source parameter must not be nil."];
    v5 = v11[5];
  }

  v6 = v5;

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __37__VSSubscriptionSource_currentSource__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:a2];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __37__VSSubscriptionSource_currentSource__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v2 processName];

  v3 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:v7];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)subscriptionSourceForWebsiteWithURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
  {
    lCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The webURL parameter must not be nil."];
  }

  v6 = VSDefaultLogObject(lCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[VSSubscriptionSource subscriptionSourceForWebsiteWithURL:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "%s: Generated webURL: %@", &v12, 0x16u);
  }

  host = [v5 host];
  v8 = [VSOptional optionalWithObject:host];

  forceUnwrapObject = [v8 forceUnwrapObject];
  v10 = [self subscriptionSourceForWebsiteWithDomainName:forceUnwrapObject];

  return v10;
}

+ (id)subscriptionSourceForWebsiteWithDomainName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy)
  {
    nameCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The domainName parameter must not be nil."];
  }

  v6 = VSDefaultLogObject(nameCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[VSSubscriptionSource subscriptionSourceForWebsiteWithDomainName:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  v7 = objc_alloc_init(self);
  [v7 setKind:1];
  [v7 setIdentifier:v5];

  return v7;
}

+ (id)subscriptionSourceForAppWithBundleID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bundleID parameter must not be nil."];
  }

  v6 = VSDefaultLogObject(dCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[VSSubscriptionSource subscriptionSourceForAppWithBundleID:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  v7 = objc_alloc_init(self);
  [v7 setKind:0];
  [v7 setIdentifier:v5];

  return v7;
}

- (VSSubscriptionSource)init
{
  v6.receiver = self;
  v6.super_class = VSSubscriptionSource;
  v2 = [(VSSubscriptionSource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSSubscriptionSourceValueType(v2);
    VSValueTypeInit(v4, v3);
  }

  return v3;
}

- (VSSubscriptionSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSSubscriptionSource;
  v5 = [(VSSubscriptionSource *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSSubscriptionSourceValueType(v5);
    VSValueTypeInitWithCoder(v7, v6, coderCopy);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSSubscriptionSourceValueType(coderCopy);
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSSubscriptionSourceValueType(self);
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSSubscriptionSourceValueType(self);
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSSubscriptionSourceValueType(equalCopy);
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSSubscriptionSourceValueType(self);
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end
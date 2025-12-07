@interface WFSettingsIPV6
+ (id)automaticConfig;
+ (id)linkLocalConfig;
- (NSString)description;
- (WFSettingsIPV6)initWithDictionary:(id)dictionary;
- (WFSettingsIPV6)initWithMethod:(int64_t)method addresses:(id)addresses prefixLengths:(id)lengths router:(id)router;
@end

@implementation WFSettingsIPV6

+ (id)automaticConfig
{
  v2 = [[WFSettingsIPV6 alloc] initWithMethod:1 addresses:0 prefixLengths:0 router:0];

  return v2;
}

+ (id)linkLocalConfig
{
  v2 = [[WFSettingsIPV6 alloc] initWithMethod:2 addresses:0 prefixLengths:0 router:0];

  return v2;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@- ", v5];

  items = [(WFSettingsIPV6 *)self items];
  v7 = [items objectForKey:*MEMORY[0x277CE1760]];
  [string appendFormat:@"ConfigMethod: %@ ", v7];

  [string appendString:@"| Addresses: "];
  addresses = [(WFSettingsIPV6 *)self addresses];

  if (addresses)
  {
    addresses2 = [(WFSettingsIPV6 *)self addresses];
    v10 = [addresses2 description];
    [string appendFormat:@"%@ ", v10];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  [string appendString:@"| Router: "];
  router = [(WFSettingsIPV6 *)self router];

  if (router)
  {
    router2 = [(WFSettingsIPV6 *)self router];
    [string appendFormat:@"%@ ", router2];
  }

  else
  {
    [string appendString:@"(None) "];
  }

  return string;
}

- (WFSettingsIPV6)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = WFSettingsIPV6;
  v6 = [(WFSettingsIPV6 *)&v25 init];
  v7 = v6;
  v8 = 0;
  if (!dictionaryCopy || !v6)
  {
    router = v6;
    v7 = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&v6->_items, dictionary);
  v9 = [(NSDictionary *)v7->_items objectForKey:*MEMORY[0x277CE1760]];
  v8 = v9;
  if (!v9)
  {
    v18 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(1uLL);
    v23 = v22;
    if (WFCurrentLogLevel(v22, v24) && v18)
    {
      if (os_log_type_enabled(v18, v23))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v18, v23, "Missing kSCPropNetIPv6ConfigMethod in dictionary.", buf, 2u);
      }

      v8 = 0;
    }

    goto LABEL_16;
  }

  if (([v9 isEqualToString:*MEMORY[0x277CE1840]] & 1) == 0)
  {
    if ([v8 isEqualToString:*MEMORY[0x277CE1850]])
    {
      v10 = 3;
      goto LABEL_10;
    }

    if ([v8 isEqualToString:*MEMORY[0x277CE1848]])
    {
      v10 = 2;
      goto LABEL_10;
    }

    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
    {
      *buf = 138543362;
      v27 = v8;
      _os_log_impl(&dword_273ECD000, v18, v20, "Uknown IPv6 config method %{public}@", buf, 0xCu);
    }

LABEL_16:

    router = v7;
    v7 = 0;
    goto LABEL_11;
  }

  v10 = 1;
LABEL_10:
  v7->_method = v10;
  v11 = [(NSDictionary *)v7->_items objectForKey:*MEMORY[0x277CE1778]];
  prefixLengths = v7->_prefixLengths;
  v7->_prefixLengths = v11;

  v13 = [(NSDictionary *)v7->_items objectForKey:*MEMORY[0x277CE1758]];
  addresses = v7->_addresses;
  v7->_addresses = v13;

  v15 = [(NSDictionary *)v7->_items objectForKey:*MEMORY[0x277CE1780]];
  router = v7->_router;
  v7->_router = v15;
LABEL_11:

  return v7;
}

- (WFSettingsIPV6)initWithMethod:(int64_t)method addresses:(id)addresses prefixLengths:(id)lengths router:(id)router
{
  v33 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  lengthsCopy = lengths;
  routerCopy = router;
  v30.receiver = self;
  v30.super_class = WFSettingsIPV6;
  v13 = [(WFSettingsIPV6 *)&v30 init];
  if (v13)
  {
    v14 = MEMORY[0x277CE1840];
    switch(method)
    {
      case 0:
      case 4:
      case 5:
        v15 = WFLogForCategory(0);
        v16 = OSLogForWFLogLevel(1uLL);
        if (!WFCurrentLogLevel(v16, v17) || !v15 || !os_log_type_enabled(v15, v16))
        {
          goto LABEL_13;
        }

        *buf = 134349056;
        methodCopy = method;
        v18 = "Unsupported WFIPv6ConfigMethod used %{public}ld";
        v19 = v15;
        v20 = v16;
        v21 = 12;
        goto LABEL_12;
      case 1:
        goto LABEL_18;
      case 2:
        v14 = MEMORY[0x277CE1848];
        goto LABEL_18;
      case 3:
        v14 = MEMORY[0x277CE1850];
LABEL_18:
        v25 = *v14;
        if (v25)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:v25 forKey:*MEMORY[0x277CE1760]];
          if (lengthsCopy)
          {
            [dictionary setObject:lengthsCopy forKey:*MEMORY[0x277CE1778]];
          }

          if (addressesCopy)
          {
            [dictionary setObject:addressesCopy forKey:*MEMORY[0x277CE1758]];
          }

          if (routerCopy)
          {
            [dictionary setObject:routerCopy forKey:*MEMORY[0x277CE1780]];
          }

          v24 = dictionary;
          items = v13->_items;
          v13->_items = v24;
        }

        else
        {
          v24 = 0;
LABEL_15:
          items = v13;
          v13 = 0;
        }

        break;
      default:
        if (method == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = WFLogForCategory(0);
          v22 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel(v22, v23) && v15 && os_log_type_enabled(v15, v22))
          {
            *buf = 0;
            v18 = "Unknown WFIPv6ConfigMethod used";
            v19 = v15;
            v20 = v22;
            v21 = 2;
LABEL_12:
            _os_log_impl(&dword_273ECD000, v19, v20, v18, buf, v21);
          }

LABEL_13:
        }

        v24 = 0;
        v25 = 0;
        goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
    items = 0;
  }

  v28 = v13;
  return v28;
}

@end
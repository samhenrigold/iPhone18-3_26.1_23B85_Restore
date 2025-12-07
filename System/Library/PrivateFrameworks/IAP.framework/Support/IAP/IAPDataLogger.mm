@interface IAPDataLogger
+ (id)sanitizeString:(id)string;
+ (void)AggAccAttach:(id)attach WithManufacturer:(id)manufacturer;
+ (void)AggAccDetach:(id)detach WithManufacturer:(id)manufacturer AndConnectionTime:(unint64_t)time;
+ (void)PowerlogAccAttach:(id)attach;
+ (void)PowerlogAccDetach:(id)detach AndConnectionTime:(unint64_t)time;
+ (void)PowerlogEASession:(id)session forAccessory:(id)accessory forProtocolID:(unsigned __int8)d forPortType:(unsigned __int8)type isSessionOpen:(BOOL)open;
@end

@implementation IAPDataLogger

+ (id)sanitizeString:(id)string
{
  v4 = objc_alloc_init(NSMutableCharacterSet);
  [v4 formUnionWithCharacterSet:{+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet")}];
  [v4 formUnionWithCharacterSet:{+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet")}];
  [v4 addCharactersInString:@"_-.!"];
  v5 = [[NSString alloc] initWithData:objc_msgSend(string encoding:{"dataUsingEncoding:allowLossyConversion:", 1, 1), 1}];
  v6 = [objc_msgSend(v5 componentsSeparatedByCharactersInSet:{objc_msgSend(v4, "invertedSet")), "componentsJoinedByString:", &stru_100119FF8}];

  return v6;
}

+ (void)AggAccAttach:(id)attach WithManufacturer:(id)manufacturer
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"accessory.attach.%@.%@", [self sanitizeString:manufacturer], objc_msgSend(self, "sanitizeString:", attach));

  _ADClientAddValueForScalarKey(v4, 1);
}

+ (void)AggAccDetach:(id)detach WithManufacturer:(id)manufacturer AndConnectionTime:(unint64_t)time
{
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"accessory.usage.%@.%@", [self sanitizeString:manufacturer], objc_msgSend(self, "sanitizeString:", detach));
  v10.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v8 = gettimeofday(&v10, 0);
  if (v10.tv_sec < time)
  {
    __break(0x5515u);
  }

  else
  {
    v9.n128_f64[0] = [self sanitizeData:v10.tv_sec - time];
    v8 = v7;
  }

  _ADClientPushValueForDistributionKey(v8, v9);
}

+ (void)PowerlogAccAttach:(id)attach
{
  v16[0] = IAPAppAccessoryNameKey;
  v16[1] = IAPAppAccessoryManufacturerKey;
  v16[2] = IAPAppAccessoryModelNumberKey;
  v16[3] = IAPAppAccessoryFirmwareRevisionKey;
  v16[4] = IAPAppAccessoryHardwareRevisionKey;
  v16[5] = IAPAppAccessoryProtocolsKey;
  v16[6] = IAPAppAccessoryPreferredAppKey;
  v16[7] = IAPAppAccessoryConnectionTimeInSecKey;
  v4 = [NSArray arrayWithObjects:v16 count:8];
  v5 = objc_alloc_init(NSMutableDictionary);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([attach objectForKey:v10])
        {
          [v5 setObject:objc_msgSend(attach forKey:{"objectForKey:", v10), v10}];
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v5 setObject:&__kCFBooleanTrue forKey:IAPAppAccessoryConnectedKey];
  PLLogRegisteredEvent();
}

+ (void)PowerlogAccDetach:(id)detach AndConnectionTime:(unint64_t)time
{
  v20[0] = IAPAppAccessoryNameKey;
  v20[1] = IAPAppAccessoryManufacturerKey;
  v20[2] = IAPAppAccessoryModelNumberKey;
  v20[3] = IAPAppAccessoryFirmwareRevisionKey;
  v20[4] = IAPAppAccessoryHardwareRevisionKey;
  v20[5] = IAPAppAccessoryProtocolsKey;
  v20[6] = IAPAppAccessoryPreferredAppKey;
  v20[7] = IAPAppAccessoryConnectionTimeInSecKey;
  v6 = [NSArray arrayWithObjects:v20 count:8];
  v7 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([detach objectForKey:v12])
        {
          [v7 setObject:objc_msgSend(detach forKey:{"objectForKey:", v12), v12}];
        }
      }

      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v14.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v14, 0);
  if (v14.tv_sec < time)
  {
    __break(0x5515u);
  }

  time = [NSNumber numberWithLong:v14.tv_sec - time];
  [v7 setObject:time forKey:IAPAppAccessoryUsageTimeInSecsKey];
  [v7 setObject:&__kCFBooleanFalse forKey:IAPAppAccessoryConnectedKey];
  PLLogRegisteredEvent();
}

+ (void)PowerlogEASession:(id)session forAccessory:(id)accessory forProtocolID:(unsigned __int8)d forPortType:(unsigned __int8)type isSessionOpen:(BOOL)open
{
  openCopy = open;
  typeCopy = type;
  dCopy = d;
  v12 = objc_alloc_init(NSMutableDictionary);
  if (session)
  {
    sessionCopy = session;
  }

  else
  {
    sessionCopy = @"Unknown process";
  }

  v32 = v12;
  [v12 setObject:sessionCopy forKey:IAPEASessionAppBundleIDKey];
  v14 = [accessory objectForKey:IAPAppAccessoryProtocolsKey];
  keyEnumerator = [v14 keyEnumerator];
  while (1)
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v17 = nextObject;
    if ([objc_msgSend(v14 objectForKey:{nextObject), "isEqualToNumber:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", dCopy)}])
    {
      [v32 setObject:v17 forKey:IAPEASessionProtocolKey];
      v18 = [NSString stringWithString:v17];
      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_9:
  [v32 setObject:objc_msgSend(accessory forKey:{"objectForKey:", IAPAppAccessoryNameKey), IAPAppAccessoryNameKey}];
  v19 = [NSNumber numberWithUnsignedInt:typeCopy];
  [v32 setObject:v19 forKey:IAPAccessoryPortTypeKey];
  if (!openCopy)
  {
    [v32 setObject:&__kCFBooleanFalse forKey:IAPEASessionIsSessionOpenKey];
    v26 = [accessory objectForKey:IAPEASessionOpenedTimesKey];
    if (v26)
    {
      v27 = v18 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_21;
    }

    v28 = v26;
    v33.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v33.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v33, 0);
    tv_sec = v33.tv_sec;
    v30 = [objc_msgSend(v28 objectForKey:{v18), "longValue"}];
    if (__OFSUB__(tv_sec, v30))
    {
      __break(0x5515u);
      return;
    }

    v23 = [NSNumber numberWithLong:tv_sec - v30];
    v25 = IAPEASessionUsageTimeInSecsKey;
    v24 = v32;
LABEL_20:
    [v24 setObject:v23 forKey:v25];
    goto LABEL_21;
  }

  [v32 setObject:&__kCFBooleanTrue forKey:IAPEASessionIsSessionOpenKey];
  if (accessory && v18)
  {
    v33.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v33.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v33, 0);
    v20 = IAPEASessionOpenedTimesKey;
    v21 = [accessory objectForKey:IAPEASessionOpenedTimesKey];
    if (!v21)
    {
      v31 = objc_alloc_init(NSMutableDictionary);
      [v31 setObject:+[NSNumber numberWithLong:](NSNumber forKey:{"numberWithLong:", v33.tv_sec), v18}];
      [accessory setObject:v31 forKey:v20];

      goto LABEL_21;
    }

    v22 = v21;
    v23 = [NSNumber numberWithLong:v33.tv_sec];
    v24 = v22;
    v25 = v18;
    goto LABEL_20;
  }

LABEL_21:
  PLLogRegisteredEvent();
}

@end
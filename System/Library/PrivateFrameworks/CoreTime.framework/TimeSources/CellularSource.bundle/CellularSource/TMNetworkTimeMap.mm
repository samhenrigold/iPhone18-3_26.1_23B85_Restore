@interface TMNetworkTimeMap
- (BOOL)timeZone:(id)zone matchesMcc:(int)mcc;
- (BOOL)timeZone:(id)zone matchesOffset:(int)offset dst:(BOOL)dst date:(id)date;
- (BOOL)timeZone:(id)zone matchesOffset:(int)offset dst:(BOOL)dst mcc:(int)mcc time:(double)time;
- (TMNetworkTimeMap)initWithDictionary:(id)dictionary;
- (TMNetworkTimeMap)initWithUrl:(id)url;
- (id)etcGmtZoneForOffset:(int)offset dst:(BOOL)dst mcc:(int)mcc time:(double)time;
- (id)timeZonesWithMcc:(int)mcc;
- (id)timeZonesWithOffset:(int)offset dst:(BOOL)dst mcc:(int)mcc time:(double)time;
- (void)dealloc;
@end

@implementation TMNetworkTimeMap

- (TMNetworkTimeMap)initWithUrl:(id)url
{
  if (url)
  {
    url = [NSDictionary dictionaryWithContentsOfURL:?];
  }

  return [(TMNetworkTimeMap *)self initWithDictionary:url];
}

- (TMNetworkTimeMap)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = TMNetworkTimeMap;
  v4 = [(TMNetworkTimeMap *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TMNetworkTimeMap *)v4 setNetworkMap:dictionary];
  }

  return v5;
}

- (void)dealloc
{
  [(TMNetworkTimeMap *)self setNetworkMap:0];
  v3.receiver = self;
  v3.super_class = TMNetworkTimeMap;
  [(TMNetworkTimeMap *)&v3 dealloc];
}

- (BOOL)timeZone:(id)zone matchesOffset:(int)offset dst:(BOOL)dst mcc:(int)mcc time:(double)time
{
  v7 = *&mcc;
  dstCopy = dst;
  v9 = *&offset;
  v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:time];
  v13 = [-[TMNetworkTimeMap timeZonesWithMcc:](self timeZonesWithMcc:{v7), "containsObject:", zone}];
  if (v13)
  {

    LOBYTE(v13) = [(TMNetworkTimeMap *)self timeZone:zone matchesOffset:v9 dst:dstCopy date:v12];
  }

  return v13;
}

- (BOOL)timeZone:(id)zone matchesMcc:(int)mcc
{
  if (!mcc)
  {
    return 1;
  }

  v5 = [(TMNetworkTimeMap *)self timeZonesWithMcc:*&mcc];
  if (![v5 count])
  {
    return 1;
  }

  return [v5 containsObject:zone];
}

- (id)timeZonesWithOffset:(int)offset dst:(BOOL)dst mcc:(int)mcc time:(double)time
{
  v6 = *&mcc;
  dstCopy = dst;
  v8 = *&offset;
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:time];
  v11 = [(TMNetworkTimeMap *)self timeZonesWithMcc:v6];
  v12 = [v11 mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (![(TMNetworkTimeMap *)self timeZone:v17 matchesOffset:v8 dst:dstCopy date:v10])
        {
          [v12 removeObject:v17];
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if ([v12 count])
  {
    return v12;
  }

  return 0;
}

- (id)etcGmtZoneForOffset:(int)offset dst:(BOOL)dst mcc:(int)mcc time:(double)time
{
  dstCopy = dst;
  v9 = *&offset;
  v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v12 = [(NSDictionary *)[(TMNetworkTimeMap *)self networkMap] objectForKey:&stru_8608];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v20 + 1) + 8 * v16);
      if ([(TMNetworkTimeMap *)self timeZone:v17 matchesOffset:v9 dst:0 date:v11])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v18 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      v25 = v9;
      v26 = 1024;
      v27 = dstCopy;
      v28 = 1024;
      mccCopy = mcc;
      v30 = 2048;
      timeCopy = time;
      _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to map to Etc/GMT+? value with offset %d dst %d mcc %d %.2f", buf, 0x1Eu);
    }

    return 0;
  }

  return v17;
}

- (id)timeZonesWithMcc:(int)mcc
{
  v3 = [(NSDictionary *)[(TMNetworkTimeMap *)self networkMap] objectForKey:[[NSNumber numberWithInt:?]]];

  return [NSOrderedSet orderedSetWithArray:v3];
}

- (BOOL)timeZone:(id)zone matchesOffset:(int)offset dst:(BOOL)dst date:(id)date
{
  dstCopy = dst;
  v9 = [NSTimeZone timeZoneWithName:zone];
  result = 0;
  if (v9)
  {
    v10 = v9;
    if ([(NSTimeZone *)v9 secondsFromGMTForDate:date]== (60 * offset) && [(NSTimeZone *)v10 isDaylightSavingTimeForDate:date]== dstCopy)
    {
      return 1;
    }
  }

  return result;
}

@end
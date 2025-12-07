@interface CCIDFiAndDi
+ (NSArray)DIndexes;
+ (NSArray)FIndexes;
+ (id)createWithFIndexDIndex:(unsigned __int8)index;
+ (id)getDTable;
+ (id)getFTable;
+ (unsigned)Di:(unsigned __int8)di;
+ (unsigned)Fi:(unsigned __int8)fi;
+ (unsigned)fMax:(unsigned int)max;
+ (unsigned)fMaxForFDIndex:(unsigned int)index Fi:(unsigned int *)fi Di:(unsigned int *)di;
- (CCIDFiAndDi)initWithFIndex:(unsigned __int8)index DIndex:(unsigned __int8)dIndex;
- (id)description;
- (unsigned)bpsMax;
@end

@implementation CCIDFiAndDi

+ (id)getFTable
{
  if (qword_10002C048 != -1)
  {
    sub_100017710();
  }

  v3 = qword_10002C040;

  return v3;
}

+ (id)getDTable
{
  if (qword_10002C058 != -1)
  {
    sub_100017724();
  }

  v3 = qword_10002C050;

  return v3;
}

+ (NSArray)FIndexes
{
  v2 = +[CCIDFiAndDi getFTable];
  allKeys = [v2 allKeys];

  return allKeys;
}

+ (NSArray)DIndexes
{
  v2 = +[CCIDFiAndDi getDTable];
  allKeys = [v2 allKeys];

  return allKeys;
}

+ (unsigned)Fi:(unsigned __int8)fi
{
  fiCopy = fi;
  v4 = +[CCIDFiAndDi getFTable];
  allKeys = [v4 allKeys];
  v6 = [NSNumber numberWithUnsignedChar:fiCopy];
  v7 = [allKeys containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v9 = sub_100012974(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100017738();
    }
  }

  v10 = +[CCIDFiAndDi getFTable];
  v11 = [NSNumber numberWithUnsignedChar:fiCopy];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 objectAtIndexedSubscript:0];
  unsignedIntValue = [v13 unsignedIntValue];

  return unsignedIntValue;
}

+ (unsigned)Di:(unsigned __int8)di
{
  diCopy = di;
  v4 = +[CCIDFiAndDi getDTable];
  allKeys = [v4 allKeys];
  v6 = [NSNumber numberWithUnsignedChar:diCopy];
  v7 = [allKeys containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v9 = sub_100012974(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000177B4();
    }
  }

  v10 = +[CCIDFiAndDi getDTable];
  v11 = [NSNumber numberWithUnsignedChar:diCopy];
  v12 = [v10 objectForKeyedSubscript:v11];
  unsignedIntValue = [v12 unsignedIntValue];

  return unsignedIntValue;
}

+ (unsigned)fMaxForFDIndex:(unsigned int)index Fi:(unsigned int *)fi Di:(unsigned int *)di
{
  indexCopy = index;
  v8 = [CCIDFiAndDi Fi:index >> 4];
  v9 = [CCIDFiAndDi Di:indexCopy & 0xF];
  *fi = [CCIDFiAndDi Fi:v8];
  *di = [CCIDFiAndDi Di:v9];

  return [CCIDFiAndDi fMax:v8];
}

+ (id)createWithFIndexDIndex:(unsigned __int8)index
{
  v3 = [[CCIDFiAndDi alloc] initWithFIndex:index >> 4 DIndex:index & 0xF];

  return v3;
}

+ (unsigned)fMax:(unsigned int)max
{
  v3 = *&max;
  v4 = +[CCIDFiAndDi getFTable];
  allKeys = [v4 allKeys];
  v6 = [NSNumber numberWithUnsignedInt:v3];
  v7 = [allKeys containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v9 = sub_100012974(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001781C(v3, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = +[CCIDFiAndDi getFTable];
  v17 = [NSNumber numberWithUnsignedInt:v3];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = [v18 objectAtIndexedSubscript:1];
  [v19 floatValue];
  v21 = v20;

  return v21;
}

- (CCIDFiAndDi)initWithFIndex:(unsigned __int8)index DIndex:(unsigned __int8)dIndex
{
  dIndexCopy = dIndex;
  indexCopy = index;
  v21.receiver = self;
  v21.super_class = CCIDFiAndDi;
  v6 = [(CCIDFiAndDi *)&v21 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = +[CCIDFiAndDi getFTable];
  allKeys = [v7 allKeys];
  v9 = [NSNumber numberWithUnsignedChar:indexCopy];
  v10 = [allKeys containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v18 = sub_100012974(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100017888();
    }

    goto LABEL_12;
  }

  v12 = +[CCIDFiAndDi getDTable];
  allKeys2 = [v12 allKeys];
  v14 = [NSNumber numberWithUnsignedChar:dIndexCopy];
  v15 = [allKeys2 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v19 = sub_100012974(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000177B4();
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v6->_fIndexDIndex = dIndexCopy | (16 * indexCopy);
  v6->_Fi = [CCIDFiAndDi Fi:indexCopy];
  v6->_Di = [CCIDFiAndDi Di:dIndexCopy];
  v6->_fMax = [CCIDFiAndDi fMax:indexCopy];
LABEL_5:
  v17 = v6;
LABEL_13:

  return v17;
}

- (unsigned)bpsMax
{
  v3 = 1000 * [(CCIDFiAndDi *)self fMax];
  v4 = [(CCIDFiAndDi *)self Fi];
  return v3 / (v4 / [(CCIDFiAndDi *)self Di]);
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ index: 0x%.2x ", -[CCIDFiAndDi fIndexDIndex](self, "fIndexDIndex")];
  [v3 appendFormat:@"Di: %2d ", -[CCIDFiAndDi Di](self, "Di")];
  [v3 appendFormat:@"Fi: %4d ", -[CCIDFiAndDi Fi](self, "Fi")];
  objc_msgSend(v3, "appendFormat:", @"(%.3f kbps at 4.0MHz, "), -[CCIDFiAndDi baseBps](self, "baseBps") * 0.001;
  [v3 appendFormat:@"%.3f kbps for fMax: %.1fMHz }"], -[CCIDFiAndDi bpsMax](self, "bpsMax") * 0.001, -[CCIDFiAndDi fMax](self, "fMax") * 0.001);

  return v3;
}

@end
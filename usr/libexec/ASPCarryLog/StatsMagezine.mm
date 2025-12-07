@interface StatsMagezine
- (BOOL)doesStatIdExistOnDevice:(int64_t)device timeAgo:(unsigned int)ago;
- (BOOL)doesStatIdExistOnDeviceForArr:(int64_t)arr startIdx:(unsigned int)idx endIdx:(unsigned int)endIdx timeAgo:(unsigned int)ago;
- (StatsMagezine)initWithNandDriver:(id)driver;
- (float)_getStatsVal:(int64_t)val :(int64_t)a4;
- (float)_getStatsVal:(int64_t)val startIdx:(unsigned int)idx endIdx:(unsigned int)endIdx :(int64_t)a6;
- (float)getStatsDelta:(int64_t)delta :(unsigned int)a4;
- (float)getStatsDeltaForArr:(int64_t)arr startIdx:(unsigned int)idx endIdx:(unsigned int)endIdx :(unsigned int)a6;
- (void)_lazyLoadStatsDict:(unsigned int)dict;
@end

@implementation StatsMagezine

- (StatsMagezine)initWithNandDriver:(id)driver
{
  driverCopy = driver;
  v11.receiver = self;
  v11.super_class = StatsMagezine;
  v6 = [(StatsMagezine *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    statsDictDict = v6->_statsDictDict;
    v6->_statsDictDict = v7;

    objc_storeStrong(&v6->_nandDriver, driver);
    v9 = v6;
  }

  return v6;
}

- (void)_lazyLoadStatsDict:(unsigned int)dict
{
  v3 = *&dict;
  statsDictDict = [(StatsMagezine *)self statsDictDict];
  v6 = [NSNumber numberWithUnsignedInt:v3];
  v7 = [statsDictDict objectForKey:v6];

  if (!v7)
  {
    nandDriver = [(StatsMagezine *)self nandDriver];
    v8 = [nandDriver nandStats_get_hoursAgo:v3];
    statsDictDict2 = [(StatsMagezine *)self statsDictDict];
    v10 = [NSNumber numberWithUnsignedInt:v3];
    [statsDictDict2 setObject:v8 forKeyedSubscript:v10];
  }
}

- (float)_getStatsVal:(int64_t)val :(int64_t)a4
{
  [(StatsMagezine *)self _lazyLoadStatsDict:a4];
  statsDictDict = [(StatsMagezine *)self statsDictDict];
  v8 = [NSNumber numberWithInteger:a4];
  v9 = [statsDictDict objectForKeyedSubscript:v8];
  v10 = [NSNumber numberWithInteger:val];
  v11 = [v9 objectForKeyedSubscript:v10];

  objc_opt_class();
  v12 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v11 floatValue];
    v12 = v13;
  }

  return v12;
}

- (float)_getStatsVal:(int64_t)val startIdx:(unsigned int)idx endIdx:(unsigned int)endIdx :(int64_t)a6
{
  [(StatsMagezine *)self _lazyLoadStatsDict:a6];
  statsDictDict = [(StatsMagezine *)self statsDictDict];
  v12 = [NSNumber numberWithInteger:a6];
  v13 = [statsDictDict objectForKeyedSubscript:v12];
  v14 = [NSNumber numberWithInteger:val];
  v15 = [v13 objectForKeyedSubscript:v14];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = 0.0;
  if (idx <= endIdx && (isKindOfClass & 1) != 0)
  {
    v18 = 0;
    while (1)
    {
      v19 = v18;
      v18 = [v15 objectAtIndexedSubscript:idx];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v18 floatValue];
      v17 = v17 + v20;
      if (++idx > endIdx)
      {
        goto LABEL_8;
      }
    }

    v17 = 0.0;
LABEL_8:
  }

  return v17;
}

- (float)getStatsDelta:(int64_t)delta :(unsigned int)a4
{
  [(StatsMagezine *)self _getStatsVal:delta];
  v8 = v7;
  if (a4)
  {
    [(StatsMagezine *)self _getStatsVal:delta];
    return v8 - v9;
  }

  return v8;
}

- (float)getStatsDeltaForArr:(int64_t)arr startIdx:(unsigned int)idx endIdx:(unsigned int)endIdx :(unsigned int)a6
{
  v7 = *&endIdx;
  v8 = *&idx;
  [(StatsMagezine *)self _getStatsVal:arr startIdx:*&idx endIdx:*&endIdx];
  v12 = v11;
  if (a6)
  {
    [(StatsMagezine *)self _getStatsVal:arr startIdx:v8 endIdx:v7];
    return v12 - v13;
  }

  return v12;
}

- (BOOL)doesStatIdExistOnDevice:(int64_t)device timeAgo:(unsigned int)ago
{
  v4 = *&ago;
  [(StatsMagezine *)self _lazyLoadStatsDict:*&ago];
  statsDictDict = [(StatsMagezine *)self statsDictDict];
  v8 = [NSNumber numberWithUnsignedInt:v4];
  v9 = [statsDictDict objectForKeyedSubscript:v8];
  v10 = [NSNumber numberWithInteger:device];
  v11 = [v9 objectForKeyedSubscript:v10];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)doesStatIdExistOnDeviceForArr:(int64_t)arr startIdx:(unsigned int)idx endIdx:(unsigned int)endIdx timeAgo:(unsigned int)ago
{
  if (idx <= endIdx)
  {
    v8 = *&ago;
    [(StatsMagezine *)self _lazyLoadStatsDict:*&ago];
    statsDictDict = [(StatsMagezine *)self statsDictDict];
    v13 = [NSNumber numberWithUnsignedInt:v8];
    v14 = [statsDictDict objectForKeyedSubscript:v13];
    v15 = [NSNumber numberWithInteger:arr];
    v7 = [v14 objectForKeyedSubscript:v15];

    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && [v7 count] > endIdx;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6;
}

@end
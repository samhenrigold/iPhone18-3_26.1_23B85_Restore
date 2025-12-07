@interface FCCKOrderFeedUtilities
+ (id)orderFeedIDFromFeedID:(id)d;
+ (id)orderFeedRequestForFeedID:(id)d feedRange:(id)range;
+ (int64_t)_feedBinFromFeedID:(id)d;
+ (unint64_t)_orderFeedTopKFromBin:(int64_t)bin timeInterval:(double)interval;
@end

@implementation FCCKOrderFeedUtilities

+ (id)orderFeedRequestForFeedID:(id)d feedRange:(id)range
{
  rangeCopy = range;
  dCopy = d;
  v8 = [self _feedBinFromFeedID:dCopy];
  v9 = objc_alloc_init(FCCKOrderFeedRequest);
  v10 = [self orderFeedIDFromFeedID:dCopy];

  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v11, v10, 8);
  }

  v12 = [rangeCopy top];
  order = [v12 order];
  if (v9)
  {
    v9->_maxOrder = order;
  }

  bottom = [rangeCopy bottom];
  order2 = [bottom order];
  if (v9)
  {
    v9->_minOrder = order2 + 1;
  }

  [rangeCopy timeInterval];
  v17 = v16;

  v18 = [self _orderFeedTopKFromBin:v8 timeInterval:v17];
  if (v9)
  {
    v9->_topK = v18;
  }

  return v9;
}

+ (id)orderFeedIDFromFeedID:(id)d
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"@A";
  v8[1] = @"@B";
  v3 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v5 = [v3 arrayWithObjects:v8 count:2];
  v6 = [dCopy fc_stringByReplacingOccurrencesOfStrings:v5 withString:&stru_1F2DC7DC0];

  return v6;
}

+ (int64_t)_feedBinFromFeedID:(id)d
{
  dCopy = d;
  if ([dCopy containsString:@"@A"])
  {
    v4 = 1;
  }

  else if ([dCopy containsString:@"@B"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (unint64_t)_orderFeedTopKFromBin:(int64_t)bin timeInterval:(double)interval
{
  v15 = *MEMORY[0x1E69E9840];
  if (interval > 604800.0)
  {
    return 0;
  }

  if (!bin)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
      v7 = 136315906;
      v8 = "+[FCCKOrderFeedUtilities _orderFeedTopKFromBin:timeInterval:]";
      v9 = 2080;
      v10 = "FCCKOrderFeedUtilities.m";
      v11 = 1024;
      v12 = 93;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
    }

    return 0;
  }

  if (bin == 1)
  {
    v5 = 86400.0;
    return vcvtpd_u64_f64(interval / v5 * 12.0);
  }

  if (bin != 2)
  {
    return 0;
  }

  v5 = 3600.0;
  return vcvtpd_u64_f64(interval / v5 * 12.0);
}

@end
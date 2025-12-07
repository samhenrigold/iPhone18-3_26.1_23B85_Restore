@interface _DASLimitsUtilities
+ (int64_t)bitmaskForLimitationName:(id)name;
@end

@implementation _DASLimitsUtilities

+ (int64_t)bitmaskForLimitationName:(id)name
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"Configuration";
  v9[1] = @"ActivityRate";
  v10[0] = &unk_1F2ED4988;
  v10[1] = &unk_1F2ED49A0;
  v9[2] = @"ProcessRate";
  v9[3] = @"Runtime";
  v10[2] = &unk_1F2ED49B8;
  v10[3] = &unk_1F2ED49D0;
  v3 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:v9 count:4];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

  if (v6)
  {
    v7 = 1 << [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end
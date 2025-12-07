@interface ATXGamePlayKitRandomDistribution
+ (id)d20;
+ (id)d6;
+ (id)distributionForDieWithSideCount:(int64_t)count;
+ (id)distributionWithLowestValue:(int64_t)value highestValue:(int64_t)highestValue;
- (ATXGamePlayKitRandomDistribution)init;
- (ATXGamePlayKitRandomDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
@end

@implementation ATXGamePlayKitRandomDistribution

- (ATXGamePlayKitRandomDistribution)init
{
  v3 = +[ATXGamePlayKitRandomSource sharedRandom];
  v4 = [(ATXGamePlayKitRandomDistribution *)self initWithRandomSource:v3 lowestValue:0 highestValue:0];

  return v4;
}

- (ATXGamePlayKitRandomDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = ATXGamePlayKitRandomDistribution;
  v10 = [(ATXGamePlayKitRandomDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_source, source);
    v11->_lowest = value;
    v11->_highest = highestValue;
  }

  return v11;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  v17[3] = *MEMORY[0x277D85DE8];
  lowest = self->_lowest;
  v6 = lowest & ~(lowest >> 63);
  if (v6 > bound)
  {
    v9 = MEMORY[0x277CBEAD8];
    v16[0] = @"lowestInclusive";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v17[0] = v10;
    v16[1] = @"highestInclusive";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_highest];
    v17[1] = v11;
    v16[2] = @"upper";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bound];
    v17[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v14 = [v9 exceptionWithName:*MEMORY[0x277CBE660] reason:@"upper bound provided is less than lowestInclusive" userInfo:v13];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v7 = self->_highest & ~(self->_highest >> 63);
  if (v7 >= bound - 1)
  {
    v7 = bound - 1;
  }

  return [(ATXGamePlayKitRandom *)self->_source nextIntWithUpperBound:v7 - lowest + 1]+ v6;
}

+ (id)distributionWithLowestValue:(int64_t)value highestValue:(int64_t)highestValue
{
  v7 = objc_opt_new();
  v8 = [[self alloc] initWithRandomSource:v7 lowestValue:value highestValue:highestValue];

  return v8;
}

+ (id)distributionForDieWithSideCount:(int64_t)count
{
  v5 = objc_opt_new();
  v6 = [[self alloc] initWithRandomSource:v5 lowestValue:1 highestValue:count];

  return v6;
}

+ (id)d6
{
  v3 = objc_opt_new();
  v4 = [[self alloc] initWithRandomSource:v3 lowestValue:1 highestValue:6];

  return v4;
}

+ (id)d20
{
  v3 = objc_opt_new();
  v4 = [[self alloc] initWithRandomSource:v3 lowestValue:1 highestValue:20];

  return v4;
}

@end
@interface KNAnimationRandomGenerator
+ (id)randomGeneratorFromPluginContext:(id)context;
+ (id)randomGeneratorWithSeed:(id)seed;
+ (void)configureFromUserDefaults;
- (KNAnimationRandomGenerator)initWithSeed:(id)seed;
- (double)doubleBetween:(double)between :(double)a4;
- (double)randomDouble;
- (int64_t)intBetween:(int64_t)between :(int64_t)a4;
- (void)dealloc;
- (void)setSeed:(unint64_t)seed;
@end

@implementation KNAnimationRandomGenerator

+ (void)configureFromUserDefaults
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v2 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationRandomGenerator configureFromUserDefaults]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm"];
    [v2 handleFailureInFunction:v4 file:v3 lineNumber:42 isFatal:0 description:"This operation must only be performed on the main thread."];

    [MEMORY[0x277D81150] logFullBacktrace];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  byte_280A3BFA0 = [standardUserDefaults BOOLForKey:@"RandomNumberSeedAlwaysZero"];
  byte_280A3BFA1 = [standardUserDefaults BOOLForKey:@"RandomNumberSeedAlwaysRandom"];
}

- (KNAnimationRandomGenerator)initWithSeed:(id)seed
{
  seedCopy = seed;
  v8.receiver = self;
  v8.super_class = KNAnimationRandomGenerator;
  v5 = [(KNAnimationRandomGenerator *)&v8 init];
  if (v5)
  {
    if (byte_280A3BFA0)
    {
      integerValue = 0;
    }

    else if (byte_280A3BFA1 == 1 || !seedCopy)
    {
      integerValue = arc4random_uniform(0x7FFFFFFFu);
    }

    else
    {
      integerValue = [seedCopy integerValue];
    }

    [(KNAnimationRandomGenerator *)v5 setSeed:integerValue];
  }

  return v5;
}

+ (id)randomGeneratorFromPluginContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isBuild])
  {
    buildAttributes = [contextCopy buildAttributes];
    v5 = [buildAttributes objectForKeyedSubscript:@"KNBuildCustomAttributesRandomNumberSeed"];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  if ([contextCopy isTransition])
  {
    buildAttributes = [contextCopy transitionAttributes];
    v5 = [buildAttributes objectForKeyedSubscript:@"KNTransitionCustomAttributesRandomNumberSeed"];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  v7 = [[KNAnimationRandomGenerator alloc] initWithSeed:v6];

  return v7;
}

+ (id)randomGeneratorWithSeed:(id)seed
{
  seedCopy = seed;
  v4 = [[KNAnimationRandomGenerator alloc] initWithSeed:seedCopy];

  return v4;
}

- (void)dealloc
{
  randGenerator = self->_randGenerator;
  if (randGenerator)
  {
    MEMORY[0x277C8F960](randGenerator, 0x1000C40B98A05D4);
  }

  v4.receiver = self;
  v4.super_class = KNAnimationRandomGenerator;
  [(KNAnimationRandomGenerator *)&v4 dealloc];
}

- (void)setSeed:(unint64_t)seed
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v6 = 0;
    v7 = 0;
    operator new();
  }

  TSCERandGenerator::setNewDocumentSeed(randGenerator);
  self->_seed = seed;
}

- (double)randomDouble
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRandomGenerator randomDouble]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:113 isFatal:0 description:{"invalid nil value for '%{public}s'", "_randGenerator"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    randGenerator = self->_randGenerator;
  }

  TSCERandGenerator::randomDouble(randGenerator);
  return result;
}

- (int64_t)intBetween:(int64_t)between :(int64_t)a4
{
  if (!self->_randGenerator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRandomGenerator intBetween::]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:119 isFatal:0 description:{"invalid nil value for '%{public}s'", "_randGenerator"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (between >= a4)
  {
    betweenCopy = a4;
  }

  else
  {
    betweenCopy = between;
  }

  if (between <= a4)
  {
    betweenCopy2 = a4;
  }

  else
  {
    betweenCopy2 = between;
  }

  if (betweenCopy <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRandomGenerator intBetween::]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:132 isFatal:0 description:{"Random generator int between value less that INT_MIN is undefined : %ld.", betweenCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (betweenCopy2 >= 0x80000000)
  {
    v15 = MEMORY[0x277D81150];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRandomGenerator intBetween::]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:133 isFatal:0 description:{"Random generator int between value greater than INT_MAX is undefined : %ld.", betweenCopy2}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  TSCERandGenerator::randWithMinMax(self->_randGenerator, betweenCopy, betweenCopy2);
  return vcvtmd_s64_f64(v18);
}

- (double)doubleBetween:(double)between :(double)a4
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRandomGenerator doubleBetween::]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:142 isFatal:0 description:{"invalid nil value for '%{public}s'", "_randGenerator"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    randGenerator = self->_randGenerator;
  }

  if (between >= a4)
  {
    betweenCopy = a4;
  }

  else
  {
    betweenCopy = between;
  }

  if (between >= a4)
  {
    a4 = between;
  }

  TSCERandGenerator::randomDouble(randGenerator);
  v13 = a4 * v12;
  v14 = betweenCopy * v12;
  v15 = betweenCopy + v13 - v14;
  result = betweenCopy + v13 - v14;
  if (betweenCopy >= 0.0 != a4 < 0.0)
  {
    return v15;
  }

  return result;
}

@end
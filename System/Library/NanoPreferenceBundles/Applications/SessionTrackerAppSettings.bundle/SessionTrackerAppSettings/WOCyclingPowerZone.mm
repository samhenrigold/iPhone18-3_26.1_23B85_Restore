@interface WOCyclingPowerZone
- (BOOL)isEmpty;
- (BOOL)isFTPRange;
- (HKQuantity)lowerBound;
- (HKQuantity)upperBound;
- (WOCyclingPowerZone)init;
- (double)percentageLowerBound;
- (double)percentageUpperBound;
- (int64_t)index;
@end

@implementation WOCyclingPowerZone

- (HKQuantity)lowerBound
{
  selfCopy = self;
  v3 = sub_223F4();

  return v3;
}

- (HKQuantity)upperBound
{
  selfCopy = self;
  v3 = sub_22404();

  return v3;
}

- (double)percentageLowerBound
{
  sub_22714();
  selfCopy = self;
  sub_22414();
  sub_22704();
  v5 = v4;

  return v5;
}

- (double)percentageUpperBound
{
  sub_22714();
  selfCopy = self;
  sub_22414();
  sub_22704();
  v5 = v4;

  return v5;
}

- (int64_t)index
{
  selfCopy = self;
  v3 = sub_22734();

  return v3;
}

- (BOOL)isEmpty
{
  selfCopy = self;
  v3 = sub_22424();

  return v3 & 1;
}

- (BOOL)isFTPRange
{
  selfCopy = self;
  sub_22414();
  v4 = v3;
  v6 = v5;

  return v6 > 1.0 && v4 <= 1.0;
}

- (WOCyclingPowerZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface WOFunctionalThresholdPower
- (BOOL)isAvailable;
- (HKQuantity)quantity;
- (NSDate)creationDate;
- (WOFunctionalThresholdPower)init;
- (double)value;
@end

@implementation WOFunctionalThresholdPower

- (HKQuantity)quantity
{
  v3 = objc_opt_self();
  selfCopy = self;
  wattUnit = [v3 wattUnit];
  sub_22594();
  v7 = [objc_opt_self() quantityWithUnit:wattUnit doubleValue:v6];

  return v7;
}

- (BOOL)isAvailable
{
  selfCopy = self;
  v3 = sub_22564();

  return v3 & 1;
}

- (NSDate)creationDate
{
  v3 = sub_22254();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_22574();

  v8.super.isa = sub_22224().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (double)value
{
  selfCopy = self;
  sub_22594();
  v4 = v3;

  return v4;
}

- (WOFunctionalThresholdPower)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
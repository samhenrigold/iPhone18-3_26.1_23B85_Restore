@interface LKAUpgradeOutcomeReport
- (LKAUpgradeOutcomeReport)initWithOutcome:(int)outcome attributes:(id)attributes;
@end

@implementation LKAUpgradeOutcomeReport

- (LKAUpgradeOutcomeReport)initWithOutcome:(int)outcome attributes:(id)attributes
{
  v4 = *&outcome;
  attributesCopy = attributes;
  v10.receiver = self;
  v10.super_class = LKAUpgradeOutcomeReport;
  v7 = [(LKAUpgradeOutcomeReport *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(LKAUpgradeOutcomeReport *)v7 setOutcome:v4];
    [(LKAUpgradeOutcomeReport *)v8 setAttributes:attributesCopy];
  }

  return v8;
}

@end
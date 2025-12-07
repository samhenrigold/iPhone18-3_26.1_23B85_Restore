@interface SiriAnalyticsSensitiveConditionsLedger
- (SiriAnalyticsSensitiveConditionsLedger)initWithClockIdentifier:(id)identifier metastore:(id)metastore;
- (void)endWithSensitiveCondition:(int)condition at:(unint64_t)at;
- (void)startWithSensitiveCondition:(int)condition at:(unint64_t)at;
@end

@implementation SiriAnalyticsSensitiveConditionsLedger

- (SiriAnalyticsSensitiveConditionsLedger)initWithClockIdentifier:(id)identifier metastore:(id)metastore
{
  v5 = sub_1D992AE84();
  MEMORY[0x1EEE9AC00](*(*(v5 - 8) + 64));
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  return SensitiveConditionsLedger.init(clockIdentifier:metastore:)(v7, metastore);
}

- (void)startWithSensitiveCondition:(int)condition at:(unint64_t)at
{
  v5 = *&condition;
  selfCopy = self;
  sub_1D98B1998(v5, at);
}

- (void)endWithSensitiveCondition:(int)condition at:(unint64_t)at
{
  v5 = *&condition;
  selfCopy = self;
  sub_1D98B23F0(v5, at);
}

@end
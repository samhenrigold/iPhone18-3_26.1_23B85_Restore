@interface STASFitnessIntelligenceConnection
- (STASFitnessIntelligenceConnection)init;
@end

@implementation STASFitnessIntelligenceConnection

- (STASFitnessIntelligenceConnection)init
{
  v3 = sub_227C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227B4();
  (*(v4 + 32))(self + OBJC_IVAR___STASFitnessIntelligenceConnection_bridgedValue, v6, v3);
  v7 = type metadata accessor for FitnessIntelligenceConnectionBridge(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(STASFitnessIntelligenceConnection *)&v9 init];
}

@end
@interface CTIPSQLDBClient
- (CTIPSQLDBClient)init;
- (id)fetchResultsForUseCase:(id)case withQuery:(id)query;
@end

@implementation CTIPSQLDBClient

- (id)fetchResultsForUseCase:(id)case withQuery:(id)query
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_100056B44(v5, v7, v8, v10);

  type metadata accessor for CTFlightInfo(v12);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (CTIPSQLDBClient)init
{
  v3.receiver = self;
  v3.super_class = CTIPSQLDBClient;
  return [(CTIPSQLDBClient *)&v3 init];
}

@end
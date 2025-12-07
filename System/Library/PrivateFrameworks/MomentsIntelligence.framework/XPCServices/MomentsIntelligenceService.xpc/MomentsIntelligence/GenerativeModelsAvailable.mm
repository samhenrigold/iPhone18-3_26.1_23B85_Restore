@interface GenerativeModelsAvailable
+ (BOOL)isGenerativeModelAvailable;
- (_TtC26MomentsIntelligenceService25GenerativeModelsAvailable)init;
@end

@implementation GenerativeModelsAvailable

+ (BOOL)isGenerativeModelAvailable
{
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeModelsAvailability();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v7 + 8))(v9, v6);
  GenerativeModelsAvailability.availability.getter();
  (*(v11 + 8))(v13, v10);
  LOBYTE(v6) = (*(v3 + 88))(v5, v2) == enum case for GenerativeModelsAvailability.Availability.available(_:);
  (*(v3 + 8))(v5, v2);
  return v6;
}

- (_TtC26MomentsIntelligenceService25GenerativeModelsAvailable)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeModelsAvailable();
  return [(GenerativeModelsAvailable *)&v3 init];
}

@end
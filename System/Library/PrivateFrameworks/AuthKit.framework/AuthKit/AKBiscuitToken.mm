@interface AKBiscuitToken
- (AKBiscuitToken)init;
- (AKBiscuitToken)initWithIdentifier:(int64_t)identifier value:(id)value;
- (NSString)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKBiscuitToken

- (NSString)value
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (AKBiscuitToken)initWithIdentifier:(int64_t)identifier value:(id)value
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___AKBiscuitToken_identifier) = identifier;
  v7 = (self + OBJC_IVAR___AKBiscuitToken_value);
  *v7 = v6;
  v7[1] = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BiscuitToken();
  return [(AKBiscuitToken *)&v10 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(self + OBJC_IVAR___AKBiscuitToken_identifier);
  coderCopy = coder;
  selfCopy = self;
  v7 = String._bridgeToObjectiveC()();
  [coderCopy encodeInteger:v4 forKey:v7];

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  [coderCopy encodeObject:v8 forKey:v9];
}

- (AKBiscuitToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
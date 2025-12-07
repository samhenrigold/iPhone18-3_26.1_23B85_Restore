@interface REMResolutionTokenMap
+ (id)newObjectFromJSONObject:(id)object;
+ (id)objc_newObjectFromJSONString:(id)string;
- (id)objc_toJSONString;
@end

@implementation REMResolutionTokenMap

+ (id)newObjectFromJSONObject:(id)object
{
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  sub_10072AC10(v3);
  v5 = v4;
  v3, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

- (id)objc_toJSONString
{
  selfCopy = self;
  sub_1001E1D20();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)objc_newObjectFromJSONString:(id)string
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_10072B05C(v3, v5);
  v5, v7, v8, v9, v10, v11, v12, v13;

  return v6;
}

@end
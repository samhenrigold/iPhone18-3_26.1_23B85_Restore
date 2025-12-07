@interface Recipe_CJKOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation Recipe_CJKOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5.super.isa;
}

- (id)featureValueForName:(id)name
{
  v3 = [*self->provider featureValueForName:name];

  return v3;
}

@end
@interface RDMergePolicy
+ (id)defaultMergePolicy;
- (BOOL)resolveConflicts:(id)conflicts error:(id *)error;
@end

@implementation RDMergePolicy

+ (id)defaultMergePolicy
{
  v2 = [objc_allocWithZone(self) initWithMergeType:2];

  return v2;
}

- (BOOL)resolveConflicts:(id)conflicts error:(id *)error
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100490C3C(v5);
  v5, v7, v8, v9, v10, v11, v12, v13;

  return 1;
}

@end
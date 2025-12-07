@interface __RKEntityAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntityAction

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  type metadata accessor for __RKEntityAction();
  v3 = swift_allocObject();

  __RKEntityAction.init(targetEntity:)(v4);
  return v3;
}

@end
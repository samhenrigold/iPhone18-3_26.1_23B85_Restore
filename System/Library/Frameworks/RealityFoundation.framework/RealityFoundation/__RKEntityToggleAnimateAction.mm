@interface __RKEntityToggleAnimateAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntityToggleAnimateAction

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  type metadata accessor for __RKEntityToggleAnimateAction();
  *(swift_allocObject() + 264) = 0;

  return __RKEntityAnimateAction.init(targetEntity:)();
}

@end
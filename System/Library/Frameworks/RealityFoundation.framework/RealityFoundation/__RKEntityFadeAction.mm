@interface __RKEntityFadeAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntityFadeAction

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  type metadata accessor for __RKEntityFadeAction();
  *(swift_allocObject() + 108) = *self->duration;

  return __RKEntityAction.init(targetEntity:)(v4);
}

@end
@interface __RKEntitySetOpacityAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntitySetOpacityAction

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  v4 = *self->duration;
  v5 = *self->opacity;
  type metadata accessor for __RKEntitySetOpacityAction();
  swift_allocObject();

  return __RKEntitySetOpacityAction.init(targetEntity:duration:opacity:)(v6, v4, v5);
}

@end
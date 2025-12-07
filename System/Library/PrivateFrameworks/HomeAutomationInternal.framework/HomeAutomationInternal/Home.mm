@interface Home
- (id)copyWithZone:(void *)zone;
@end

@implementation Home

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  type metadata accessor for Home(0);
  v4 = swift_allocObject();
  sub_2529E65BC(v3);
  return v4;
}

@end
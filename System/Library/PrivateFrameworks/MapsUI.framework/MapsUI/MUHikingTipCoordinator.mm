@interface MUHikingTipCoordinator
- (MUHikingTipCoordinator)init;
- (MUHikingTipCoordinator)initWithMapService:(id)service locationDelegate:(id)delegate mapAccessProvider:(id)provider presenter:(id)presenter;
@end

@implementation MUHikingTipCoordinator

- (MUHikingTipCoordinator)initWithMapService:(id)service locationDelegate:(id)delegate mapAccessProvider:(id)provider presenter:(id)presenter
{
  serviceCopy = service;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_1C571371C(serviceCopy, delegate, provider, presenter);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

- (MUHikingTipCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
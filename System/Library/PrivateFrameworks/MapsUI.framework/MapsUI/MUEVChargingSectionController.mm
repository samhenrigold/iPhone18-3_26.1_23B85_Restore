@interface MUEVChargingSectionController
- (BOOL)hasContent;
- (BOOL)isActive;
- (MUEVChargingSectionController)initWithMapItem:(id)item;
- (MUPlaceSectionControllerDelegate)delegate;
- (NSArray)sectionViews;
- (void)setActive:(BOOL)active;
- (void)setDelegate:(id)delegate;
@end

@implementation MUEVChargingSectionController

- (BOOL)isActive
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MUPlaceSectionController *)&v3 isActive];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MUPlaceSectionController *)&v7 setActive:activeCopy];
  v5 = *&v4[OBJC_IVAR___MUEVChargingSectionController_viewModel];
  v6 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  *(v5 + v6) = activeCopy;
}

- (NSArray)sectionViews
{
  sub_1C570CB68();

  v2 = sub_1C584F750();

  return v2;
}

- (BOOL)hasContent
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
  if (v2 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

- (MUPlaceSectionControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  delegate = [(MUPlaceSectionController *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  EVChargingSectionController.delegate.setter(delegate);
}

- (MUEVChargingSectionController)initWithMapItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
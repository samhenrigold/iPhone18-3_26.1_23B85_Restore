@interface RTSettingsMapView.Coordinator
- (_TtCV19CoreRoutineSettings17RTSettingsMapView11Coordinator)init;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
@end

@implementation RTSettingsMapView.Coordinator

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_91AC(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (_TtCV19CoreRoutineSettings17RTSettingsMapView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface RaceMapViewDelegate
- (_TtC9WorkoutUI19RaceMapViewDelegate)init;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
@end

@implementation RaceMapViewDelegate

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized RaceMapViewDelegate.mapView(_:rendererFor:)(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized RaceMapViewDelegate.mapView(_:viewFor:)(annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (_TtC9WorkoutUI19RaceMapViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
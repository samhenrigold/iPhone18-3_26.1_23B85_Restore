@interface SafetyCacheMapView.Coordinator
- (_TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator)init;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (uint64_t)mapView:didDeselectAnnotationView:;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
@end

@implementation SafetyCacheMapView.Coordinator

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_2646ECD08(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_2646F5B10(viewCopy);
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_2646F5DD4(annotationViewCopy);
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_2646F67C4(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (_TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)mapView:didDeselectAnnotationView:
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  v4 = sub_264783E14();
  v5 = sub_2647859F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_264605000, v4, v5, "#SafetyCacheMapView, didDeselect is called.", v6, 2u);
    MEMORY[0x266740650](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end
@interface AirTagMapViewController
- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithCoder:(id)coder;
- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AirTagMapViewController

- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapView;
  v5 = [objc_allocWithZone(MKMapView) init];
  *(&self->super.super.super.isa + v4) = v5;

  type metadata accessor for AirTagMapViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)loadView
{
  selfCopy = self;
  sub_1000161D4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AirTagMapViewController();
  v4 = v8.receiver;
  [(AirTagMapViewController *)&v8 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapAnnotation];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapView];
    v7 = v5;
    [v6 addAnnotation:{v7, v8.receiver, v8.super_class}];
    [v6 selectAnnotation:v7 animated:appearCopy];

    v4 = v7;
  }
}

- (_TtC21FindMyRemoteUIService23AirTagMapViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_10001656C(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

@end
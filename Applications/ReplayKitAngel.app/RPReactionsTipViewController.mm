@interface RPReactionsTipViewController
- (_TtC14ReplayKitAngel28RPReactionsTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)prepareForPopoverPresentation:;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RPReactionsTipViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100031810();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100031C9C(disappear);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000343E0();
}

- (_TtC14ReplayKitAngel28RPReactionsTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)prepareForPopoverPresentation:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000301D0();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100010E34(0xD000000000000021, 0x800000010004DA00, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_1000114A8(v8);
  }

  return (*(v1 + 8))(v3, v0);
}

@end
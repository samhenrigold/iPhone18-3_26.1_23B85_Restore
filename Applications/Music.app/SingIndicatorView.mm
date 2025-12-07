@interface SingIndicatorView
- (_TtC5Music17SingIndicatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)showSingIndicator;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SingIndicatorView

- (void)showSingIndicator
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  selfCopy = self;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = selfCopy;
  sub_1001F4CB8(0, 0, v4, &unk_100EBF450, v8);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10035CA90(selfCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10035CEF4(change);
}

- (_TtC5Music17SingIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
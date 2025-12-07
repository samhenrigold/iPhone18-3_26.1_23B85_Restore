@interface DisplayLink
- (_TtC23MonogramPosterExtension11DisplayLink)init;
- (void)frameWithDisplaylink:(id)displaylink;
@end

@implementation DisplayLink

- (void)frameWithDisplaylink:(id)displaylink
{
  swift_getKeyPath();
  swift_getKeyPath();
  displaylinkCopy = displaylink;
  selfCopy = self;
  v7 = displaylinkCopy;
  sub_100026720();
  type metadata accessor for DisplayLink(0);
  sub_10000F2D8();
  sub_1000266D0();
  sub_1000266E0();
}

- (_TtC23MonogramPosterExtension11DisplayLink)init
{
  v3 = sub_100003598(&qword_100041540, &qword_100029668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC23MonogramPosterExtension11DisplayLink__update;
  v12 = 0;
  sub_100003598(&qword_100041538, &qword_1000295C8);
  sub_100026700();
  (*(v4 + 32))(self + v7, v6, v3);
  *(&self->super.isa + OBJC_IVAR____TtC23MonogramPosterExtension11DisplayLink_displayLink) = 0;
  v8 = type metadata accessor for DisplayLink(0);
  v11.receiver = self;
  v11.super_class = v8;
  return [(DisplayLink *)&v11 init];
}

@end
@interface ClockPosterExtensionController
- (void)dealloc;
@end

@implementation ClockPosterExtensionController

- (void)dealloc
{
  v3 = sub_100008A28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  selfCopy = self;
  sub_1000089F8();
  v13 = &OBJC_PROTOCOL___PREditingDelegate;
  v8 = swift_dynamicCastObjCProtocolConditional();
  v9 = &enum case for ClockLogger.Role.render(_:);
  if (v8)
  {
    v9 = &enum case for ClockLogger.Role.edit(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  sub_100008A48();

  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for ClockPosterExtensionController();
  v12.receiver = selfCopy;
  v12.super_class = v10;
  [(ClockPosterExtensionController *)&v12 dealloc];
}

@end
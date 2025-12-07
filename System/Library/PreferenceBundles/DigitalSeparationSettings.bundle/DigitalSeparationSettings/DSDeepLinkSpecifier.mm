@interface DSDeepLinkSpecifier
- (DSDeepLinkSpecifier)init;
- (DSDeepLinkSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
- (NSURL)inputURL;
- (void)setInputURL:(id)l;
@end

@implementation DSDeepLinkSpecifier

- (NSURL)inputURL
{
  v3 = sub_5210(&qword_166F0, &qword_C6C0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  sub_5650(self + v7, v6);
  v8 = sub_8808();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    sub_87E8(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (void)setInputURL:(id)l
{
  v5 = sub_5210(&qword_166F0, &qword_C6C0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  if (l)
  {
    sub_87F8();
    v9 = sub_8808();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_8808();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  swift_beginAccess();
  selfCopy = self;
  sub_5860(v8, self + v11);
  swift_endAccess();
}

- (DSDeepLinkSpecifier)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___DSDeepLinkSpecifier_inputURL;
  v5 = sub_8808();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR___DSDeepLinkSpecifier_relay;
  *(self + v6) = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(DSDeepLinkSpecifier *)&v9 init];
  [(DSDeepLinkSpecifier *)v7 setProperty:*(v7 + OBJC_IVAR___DSDeepLinkSpecifier_relay) forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  return v7;
}

- (DSDeepLinkSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_8AA8();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
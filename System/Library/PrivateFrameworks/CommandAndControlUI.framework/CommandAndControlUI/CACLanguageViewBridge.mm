@interface CACLanguageViewBridge
- (_TtP19CommandAndControlUI23CACLanguageViewDelegate_)delegate;
- (id)makeLanguageUI;
- (id)makeLanguageUIWithLocales:(id)locales;
- (void)setDelegate:(id)delegate;
- (void)updateDownloadStatusWith:(id)with;
- (void)updateInstallationStatusWith:(id)with;
@end

@implementation CACLanguageViewBridge

- (_TtP19CommandAndControlUI23CACLanguageViewDelegate_)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (id)makeLanguageUI
{
  selfCopy = self;

  sub_243BC7B88(0, v14);
  v11 = v14[4];
  v12 = v14[5];
  v13 = v15;
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6640, &qword_243BD1CD0));
  sub_243BC71C8(v14, v6);
  v4 = sub_243BD0A98();

  sub_243BCBF8C(v14);

  return v4;
}

- (id)makeLanguageUIWithLocales:(id)locales
{
  if (locales)
  {
    v4 = sub_243BD0E48();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_243BC911C(v4);

  return v6;
}

- (void)updateInstallationStatusWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_243BC9460(withCopy);
}

- (void)updateDownloadStatusWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v5 = sub_243BCB2B0(withCopy);
  if (v6)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243BD1690;
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    *(inited + 48) = v11;
    *(inited + 56) = v12 & 1;

    sub_243BCF364(inited);

    swift_setDeallocating();
    sub_243BC8994(inited + 32);
  }

  else
  {
  }
}

@end
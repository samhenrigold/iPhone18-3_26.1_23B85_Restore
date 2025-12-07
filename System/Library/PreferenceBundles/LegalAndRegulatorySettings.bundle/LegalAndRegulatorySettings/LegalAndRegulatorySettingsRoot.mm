@interface LegalAndRegulatorySettingsRoot
- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithCoder:(id)coder;
- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation LegalAndRegulatorySettingsRoot

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C90();
}

- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion
{
  sub_1884(&qword_C450, &qword_3630);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = l;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_31BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_3640;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_3650;
  v13[5] = v12;
  lCopy = l;
  selfCopy = self;
  sub_2974(0, 0, v8, &unk_3660, v13);
}

- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_315C();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
    bundleCopy = bundle;
    name = sub_314C();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(LegalAndRegulatorySettingsRoot *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(LegalAndRegulatorySettingsRoot *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end
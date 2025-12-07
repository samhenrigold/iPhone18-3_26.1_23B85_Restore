@interface JSUserObject
- (BOOL)isFitnessAppInstallationAllowed;
- (BOOL)isManagedAppleID;
- (BOOL)isUnderThirteen;
- (NSString)dsid;
- (_TtC27AppStoreComponentsDaemonKit12JSUserObject)init;
- (id)accountCachedServerDataBoolForKey:(id)key;
- (id)accountCachedServerDataIntForKey:(id)key;
- (id)accountCachedServerDataStringForKey:(id)key;
- (id)cookieForUrlWithName:(id)name :(id)a4;
- (id)cookiesForUrl:(id)url;
@end

@implementation JSUserObject

- (NSString)dsid
{
  selfCopy = self;
  sub_2226C25A4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_22273916C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isManagedAppleID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *&self->accounts[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 16]);
  selfCopy = self;
  sub_2227384EC();
  v7 = sub_222738CFC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {

    sub_222660468(v5, &unk_27D013A90, &unk_222741DC0);
    return 0;
  }

  else
  {
    swift_getKeyPath();
    sub_222738CBC();

    v9 = v11[15];
    (*(v8 + 8))(v5, v7);
  }

  return v9;
}

- (BOOL)isUnderThirteen
{
  selfCopy = self;
  v3 = sub_2226C295C();

  return v3 & 1;
}

- (BOOL)isFitnessAppInstallationAllowed
{
  selfCopy = self;
  v3 = sub_2226C2BA8(selfCopy);

  return v3 & 1;
}

- (id)cookiesForUrl:(id)url
{
  v4 = sub_22273919C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_2226C2FE0(v4, v6);

  if (v8)
  {
    sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    v9 = sub_22273936C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cookieForUrlWithName:(id)name :(id)a4
{
  v5 = sub_22273919C();
  v7 = v6;
  v8 = sub_22273919C();
  v10 = v9;
  selfCopy = self;
  v12 = sub_2226C3498(v5, v7, v8, v10);

  return v12;
}

- (id)accountCachedServerDataStringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_2226C7848(keyCopy);

  return v6;
}

- (id)accountCachedServerDataBoolForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_2226C7F0C(keyCopy);

  return v6;
}

- (id)accountCachedServerDataIntForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_2226C85D0(keyCopy);

  return v6;
}

- (_TtC27AppStoreComponentsDaemonKit12JSUserObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface LegacyProfilesAdapter
- (_TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter)init;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler;
- (void)endProcessingConfigurations:(BOOL)configurations scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation LegacyProfilesAdapter

- (_TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter)init
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LegacyProfilesAdapter(ObjectType, v3, v4);
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter_profilesController] = 0;
  *&v6[OBJC_IVAR____TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey] = 0;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = [(LegacyProfilesAdapter *)&v9 init];
  swift_deallocPartialClassInstance();
  return v7;
}

- (id)configurationClasses
{
  sub_1000012FC(&qword_1000106C0, &qword_100009040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100008FF0;
  *(v2 + 32) = sub_1000079D8(0, &qword_1000106C8, RMModelLegacyProfileDeclaration_ptr);
  sub_1000012FC(&qword_100010698, &qword_100009000);
  v3.super.isa = sub_10000869C().super.isa;

  return v3.super.isa;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000012FC(&qword_100010758, &qword_1000090C8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = scope;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1000086CC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100009180;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100009188;
  v13[5] = v12;
  selfCopy = self;
  sub_100003A10(0, 0, v8, &unk_100009190, v13);
}

- (void)endProcessingConfigurations:(BOOL)configurations scope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000012FC(&qword_100010758, &qword_1000090C8);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = configurations;
  *(v12 + 24) = scope;
  *(v12 + 32) = v11;
  *(v12 + 40) = self;
  v13 = sub_1000086CC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100009160;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100009168;
  v15[5] = v14;
  selfCopy = self;
  sub_100003A10(0, 0, v10, &unk_100009170, v15);
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000012FC(&qword_100010758, &qword_1000090C8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = scope;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1000086CC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100009140;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100009148;
  v13[5] = v12;
  selfCopy = self;
  sub_100003A10(0, 0, v8, &unk_100009150, v13);
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000012FC(&qword_100010758, &qword_1000090C8);
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = key;
  v14[4] = scope;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_1000086CC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100009120;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100009128;
  v17[5] = v16;
  configurationCopy = configuration;
  keyCopy = key;
  selfCopy = self;
  sub_100003A10(0, 0, v12, &unk_100009130, v17);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000012FC(&qword_100010758, &qword_1000090C8);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = scope;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_1000086CC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000090D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000090E8;
  v15[5] = v14;
  keyCopy = key;
  selfCopy = self;
  sub_100003A10(0, 0, v10, &unk_1000090F8, v15);
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v3 = *(self + OBJC_IVAR____TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter_profilesController);
  if (v3)
  {
    selfCopy = self;
    configurationCopy = configuration;
    v6 = selfCopy;
    v7 = v3;
    store = [configurationCopy store];
    declaration = [configurationCopy declaration];
    v10 = [v7 declarationKeyForStore:store declaration:declaration];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return self;
}

@end
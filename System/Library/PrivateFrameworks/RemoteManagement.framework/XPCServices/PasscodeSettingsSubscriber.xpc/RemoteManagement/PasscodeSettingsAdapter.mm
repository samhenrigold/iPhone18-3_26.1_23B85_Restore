@interface PasscodeSettingsAdapter
- (_TtC26PasscodeSettingsSubscriber23PasscodeSettingsAdapter)init;
- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation PasscodeSettingsAdapter

- (id)configurationClasses
{
  sub_1000014B8(&qword_100014870, &qword_10000B600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10000B5C0;
  *(v2 + 32) = sub_100005FF4(0, &qword_100014878, RMModelPasscodeSettingsDeclaration_ptr);
  sub_1000014B8(&qword_100014858, &qword_10000B6E0);
  v3.super.isa = sub_10000AB0C().super.isa;

  return v3.super.isa;
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v4 = objc_opt_self();
  v5 = qword_100014848;
  configurationCopy = configuration;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_10000AA7C();
  v8 = [v4 newDeclarationKeyWithSubscriberIdentifier:v7 reference:configurationCopy];

  return v8;
}

- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error
{
  sub_1000042C0();
  sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
  sub_10000603C();
  v4.super.isa = sub_10000AB6C().super.isa;

  return v4.super.isa;
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000014B8(&qword_100014908, &qword_10000B678);
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = key;
  v14[4] = scope;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_10000AB5C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000B6C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000B6D0;
  v17[5] = v16;
  configurationCopy = configuration;
  keyCopy = key;
  selfCopy = self;
  sub_100008414(0, 0, v12, &unk_10000B6D8, v17);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000014B8(&qword_100014908, &qword_10000B678);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = scope;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_10000AB5C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000B6A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000B6B0;
  v15[5] = v14;
  keyCopy = key;
  selfCopy = self;
  sub_100008414(0, 0, v10, &unk_10000B6B8, v15);
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  sub_1000014B8(&qword_100014908, &qword_10000B678);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = scope;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_10000AB5C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000B688;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000B690;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100008414(0, 0, v10, &unk_10000B698, v15);
}

- (_TtC26PasscodeSettingsSubscriber23PasscodeSettingsAdapter)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PasscodeSettingsAdapter(self, a2, v2);
  return [(PasscodeSettingsAdapter *)&v4 init];
}

@end
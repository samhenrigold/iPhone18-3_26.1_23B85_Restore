@interface ManagedSettingsAdapter
- (_TtC25ManagedSettingsSubscriber22ManagedSettingsAdapter)init;
- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)endProcessingConfigurations:(BOOL)configurations scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation ManagedSettingsAdapter

- (id)configurationClasses
{
  sub_100001550(&unk_10001C940, &unk_1000121B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000121A0;
  *(v2 + 32) = sub_10000B858(0, &unk_10001CCB0, RMModelConfigurationDynamic_ptr);
  sub_100001550(&qword_10001CAD0, &qword_100012920);
  v3.super.isa = sub_10001158C().super.isa;

  return v3.super.isa;
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v4 = objc_opt_self();
  configurationCopy = configuration;
  v6 = sub_10001147C();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:configurationCopy];

  return v7;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler
{
  v7 = sub_100001550(&qword_10001CAB0, &qword_100012850);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = scope;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000115EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100012908;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100012910;
  v15[5] = v14;
  selfCopy = self;
  sub_1000068DC(0, 0, v10, &unk_100012918, v15);
}

- (void)endProcessingConfigurations:(BOOL)configurations scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = sub_100001550(&qword_10001CAB0, &qword_100012850);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = configurations;
  *(v14 + 24) = scope;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_1000115EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000128E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000128F0;
  v17[5] = v16;
  selfCopy = self;
  sub_1000068DC(0, 0, v12, &unk_1000128F8, v17);
}

- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error
{
  sub_100008A14(scope);
  sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
  sub_10000B164();
  v4.super.isa = sub_1000115FC().super.isa;

  return v4.super.isa;
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  v11 = sub_100001550(&qword_10001CAB0, &qword_100012850);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = key;
  v16[4] = scope;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1000115EC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000128C8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1000128D0;
  v19[5] = v18;
  configurationCopy = configuration;
  keyCopy = key;
  selfCopy = self;
  sub_1000068DC(0, 0, v14, &unk_1000128D8, v19);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = sub_100001550(&qword_10001CAB0, &qword_100012850);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = key;
  v14[3] = scope;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1000115EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000128A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000128B0;
  v17[5] = v16;
  keyCopy = key;
  selfCopy = self;
  sub_1000068DC(0, 0, v12, &unk_1000128B8, v17);
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = sub_100001550(&qword_10001CAB0, &qword_100012850);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = scope;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1000115EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100012860;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100012870;
  v17[5] = v16;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1000068DC(0, 0, v12, &unk_100012880, v17);
}

- (_TtC25ManagedSettingsSubscriber22ManagedSettingsAdapter)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ManagedSettingsAdapter(self, a2, v2);
  return [(ManagedSettingsAdapter *)&v4 init];
}

@end
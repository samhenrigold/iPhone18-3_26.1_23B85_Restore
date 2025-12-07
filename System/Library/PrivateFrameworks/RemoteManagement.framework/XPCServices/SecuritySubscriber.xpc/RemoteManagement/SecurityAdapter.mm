@interface SecurityAdapter
- (_TtC18SecuritySubscriber15SecurityAdapter)init;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation SecurityAdapter

- (id)configurationClasses
{
  sub_100001480(&qword_100018850, &unk_10000F260);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10000F300;
  *(v2 + 32) = sub_1000097C0(0, &qword_100018858, RMModelSecurityCertificateDeclaration_ptr);
  *(v2 + 40) = sub_1000097C0(0, &qword_100018860, RMModelSecurityIdentityDeclaration_ptr);
  sub_100001480(&qword_100018910, &qword_10000F430);
  v3.super.isa = sub_10000E6A8().super.isa;

  return v3.super.isa;
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  sub_100001480(&qword_1000188F0, &qword_10000F3A8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = scope;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_10000E728();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10000F418;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10000F420;
  v13[5] = v12;
  selfCopy = self;
  sub_10000AA8C(0, 0, v8, &unk_10000F428, v13);
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  sub_100001480(&qword_1000188F0, &qword_10000F3A8);
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = key;
  v14[4] = scope;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_10000E728();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F3F8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000F400;
  v17[5] = v16;
  configurationCopy = configuration;
  keyCopy = key;
  selfCopy = self;
  sub_10000AA8C(0, 0, v12, &unk_10000F408, v17);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  sub_100001480(&qword_1000188F0, &qword_10000F3A8);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = scope;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_10000E728();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000F3D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F3E0;
  v15[5] = v14;
  keyCopy = key;
  selfCopy = self;
  sub_10000AA8C(0, 0, v10, &unk_10000F3E8, v15);
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v4 = objc_opt_self();
  configurationCopy = configuration;
  v6 = sub_10000E5D8();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:configurationCopy];

  return v7;
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  sub_100001480(&qword_1000188F0, &qword_10000F3A8);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = scope;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_10000E728();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000F3B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F3C0;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_10000AA8C(0, 0, v10, &unk_10000F3C8, v15);
}

- (_TtC18SecuritySubscriber15SecurityAdapter)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SecurityAdapter(self, a2, v2);
  return [(SecurityAdapter *)&v4 init];
}

@end
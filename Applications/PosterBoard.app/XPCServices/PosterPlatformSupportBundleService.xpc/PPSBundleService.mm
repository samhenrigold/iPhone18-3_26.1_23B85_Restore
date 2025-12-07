@interface PPSBundleService
- (_TtC34PosterPlatformSupportBundleService16PPSBundleService)init;
- (void)hostConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion;
- (void)switcherConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion;
@end

@implementation PPSBundleService

- (void)hostConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion
{
  sub_100001F80(&qword_10000C9C0, &qword_100007268);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = l;
  v14[3] = configuration;
  v14[4] = role;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_1000064A0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000072E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000072E8;
  v17[5] = v16;
  lCopy = l;
  configurationCopy = configuration;
  roleCopy = role;
  selfCopy = self;
  sub_1000024E8(0, 0, v12, &unk_1000072F0, v17);
}

- (void)switcherConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion
{
  sub_100001F80(&qword_10000C9C0, &qword_100007268);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = l;
  v14[3] = configuration;
  v14[4] = role;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_1000064A0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100007278;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100007288;
  v17[5] = v16;
  lCopy = l;
  configurationCopy = configuration;
  roleCopy = role;
  selfCopy = self;
  sub_1000024E8(0, 0, v12, &unk_100007298, v17);
}

- (_TtC34PosterPlatformSupportBundleService16PPSBundleService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PPSBundleService();
  return [(PPSBundleService *)&v3 init];
}

@end
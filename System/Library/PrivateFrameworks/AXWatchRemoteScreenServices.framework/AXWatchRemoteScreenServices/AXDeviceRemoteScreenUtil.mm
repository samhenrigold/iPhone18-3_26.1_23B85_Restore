@interface AXDeviceRemoteScreenUtil
+ (AXDeviceRemoteScreenUtil)sharedInstance;
+ (NSString)AXWatchRemoteScreenFeatureDomain;
+ (NSString)AXWatchRemoteScreenFeatureKey;
- (BOOL)isPairedGizmoSupportedWithDeviceID:(id)d;
- (BOOL)isTwiceFeatureOn;
- (id)currentPairedGizmo;
- (id)localizedStingStringWithKey:(id)key;
- (id)localizedStringWithKey:(id)key;
- (id)pairedGizmoName;
- (void)logInactiveSession;
- (void)logSessionErrorWithErrorName:(id)name;
- (void)logSessionIntervalBeforeDate:(id)date afterDate:(id)afterDate;
@end

@implementation AXDeviceRemoteScreenUtil

+ (AXDeviceRemoteScreenUtil)sharedInstance
{
  if (qword_2814FB9E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2814FB9E8;

  return v3;
}

+ (NSString)AXWatchRemoteScreenFeatureDomain
{
  v2 = sub_23D6C6058();

  return v2;
}

+ (NSString)AXWatchRemoteScreenFeatureKey
{
  v2 = sub_23D6C6058();

  return v2;
}

- (BOOL)isTwiceFeatureOn
{
  v4[3] = &type metadata for AXDeviceRemoteScreenUtil.AXWatchRemoteScreenFeatureFlags;
  v4[4] = sub_23D6C4E9C();
  v2 = sub_23D6C5FE8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

- (id)localizedStringWithKey:(id)key
{
  swift_getObjectType();
  sub_23D6C6068();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  selfCopy = self;
  bundleForClass_ = [v5 bundleForClass_];
  v8 = sub_23D6C6058();
  v9 = sub_23D6C6058();
  v10 = [bundleForClass_ localizedStringForKey:v8 value:0 table:v9];

  sub_23D6C6068();

  v11 = sub_23D6C6058();

  return v11;
}

- (id)localizedStingStringWithKey:(id)key
{
  v4 = sub_23D6C6068();
  v6 = v5;
  selfCopy = self;
  _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC20localizedStingString3keyS2S_tF_0(v4, v6);

  v8 = sub_23D6C6058();

  return v8;
}

- (BOOL)isPairedGizmoSupportedWithDeviceID:(id)d
{
  v4 = sub_23D6C6068();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC22isPairedGizmoSupported8deviceIDSbSS_tF_0(v4, v6);

  return v4 & 1;
}

- (id)pairedGizmoName
{
  _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC15pairedGizmoNameSSSgyF_0();
  if (v2)
  {
    v3 = sub_23D6C6058();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)currentPairedGizmo
{
  v2 = sub_23D6C4FD0();

  return v2;
}

- (void)logSessionIntervalBeforeDate:(id)date afterDate:(id)afterDate
{
  v5 = sub_23D6C5F98();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  sub_23D6C5F88();
  sub_23D6C5F88();
  selfCopy = self;
  sub_23D6C5F78();
  v14 = v13;
  sub_23D6C5F78();
  v16 = v14 - v15;
  v17 = sub_23D6C6058();
  v18 = swift_allocObject();
  *(v18 + 16) = selfCopy;
  *(v18 + 24) = v16;
  aBlock[4] = sub_23D6C5EA4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6BC530;
  aBlock[3] = &block_descriptor_38;
  v19 = _Block_copy(aBlock);
  v20 = selfCopy;

  AnalyticsSendEventLazy();
  _Block_release(v19);

  v21 = *(v6 + 8);
  v21(v9, v5);
  v21(v11, v5);
}

- (void)logSessionErrorWithErrorName:(id)name
{
  v4 = sub_23D6C6068();
  v6 = v5;
  selfCopy = self;
  v8 = sub_23D6C6058();
  v9 = swift_allocObject();
  v9[2] = selfCopy;
  v9[3] = v4;
  v9[4] = v6;
  v12[4] = sub_23D6C5EC0;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23D6BC530;
  v12[3] = &block_descriptor_31;
  v10 = _Block_copy(v12);
  v11 = selfCopy;

  AnalyticsSendEventLazy();

  _Block_release(v10);
}

- (void)logInactiveSession
{
  selfCopy = self;
  v3 = sub_23D6C6058();
  v4 = swift_allocObject();
  *(v4 + 16) = selfCopy;
  v7[4] = sub_23D6C5EB0;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23D6BC530;
  v7[3] = &block_descriptor_24;
  v5 = _Block_copy(v7);
  v6 = selfCopy;

  AnalyticsSendEventLazy();

  _Block_release(v5);
}

@end
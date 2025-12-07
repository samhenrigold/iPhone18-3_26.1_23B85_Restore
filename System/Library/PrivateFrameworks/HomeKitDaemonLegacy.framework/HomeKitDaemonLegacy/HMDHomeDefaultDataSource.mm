@interface HMDHomeDefaultDataSource
- (HMDDeviceLockStateDataSource)deviceLockStateDataSource;
- (HMDHomeDefaultDataSource)init;
- (id)makeCurrentUserWithUserPrivilege:(unint64_t)privilege home:(id)home;
- (id)makeHomeMetricsDispatcherWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)makeHomePresenceMonitor;
- (id)makeNaturalLightingCurveWriterWithHome:(id)home;
- (id)makeNotificationRegistry;
- (id)makeReportingSessionManager;
- (id)makeResidentDeviceManagerWithHomeUUID:(id)d;
- (id)makeSiriSecureAccessoryAccessControllerWithDataSource:(id)source;
- (id)makeSwiftExtensionsWithHome:(id)home;
@end

@implementation HMDHomeDefaultDataSource

- (HMDHomeDefaultDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeDefaultDataSource;
  return [(HMDHomeDefaultDataSource *)&v3 init];
}

- (HMDDeviceLockStateDataSource)deviceLockStateDataSource
{
  v2 = [objc_allocWithZone(HMDDeviceLockStateDataSource) init];

  return v2;
}

- (id)makeSwiftExtensionsWithHome:(id)home
{
  v4 = objc_allocWithZone(_s22DefaultSwiftExtensionsCMa());
  homeCopy = home;
  v6 = sub_253208B60(homeCopy);

  return v6;
}

- (id)makeNotificationRegistry
{
  v2 = [objc_allocWithZone(HMDNotificationRegistry) init];

  return v2;
}

- (id)makeResidentDeviceManagerWithHomeUUID:(id)d
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v7 = objc_opt_self();
  v8 = sub_253CCFF18();
  createManagerForHomeUUID_ = [v7 createManagerForHomeUUID_];

  (*(v4 + 8))(v6, v3);

  return createManagerForHomeUUID_;
}

- (id)makeCurrentUserWithUserPrivilege:(unint64_t)privilege home:(id)home
{
  v4 = [objc_opt_self() currentUserWithPrivilege:privilege forHome:home];

  return v4;
}

- (id)makeHomeMetricsDispatcherWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v9 = objc_allocWithZone(HMDHomeMetricsDispatcher);
  swift_unknownObjectRetain();
  v10 = sub_253CCFF18();
  v11 = [v9 initWithIdentifier:v10 logEventSubmitter:submitter];
  swift_unknownObjectRelease();

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)makeReportingSessionManager
{
  v2 = [objc_allocWithZone(HMDXPCMessageReportingSessionManager) init];

  return v2;
}

- (id)makeSiriSecureAccessoryAccessControllerWithDataSource:(id)source
{
  initWithDataSource_ = [objc_allocWithZone(HMDSiriSecureAccessoryAccessController) initWithDataSource_];

  return initWithDataSource_;
}

- (id)makeNaturalLightingCurveWriterWithHome:(id)home
{
  initWithHome_ = [objc_allocWithZone(HMDHomeNaturalLightingCurveWriter) initWithHome_];

  return initWithHome_;
}

- (id)makeHomePresenceMonitor
{
  v2 = [objc_allocWithZone(HMDHomePresenceMonitor) init];

  return v2;
}

@end
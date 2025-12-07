@interface HMDHomeDefaultDataSource
- (HMDDeviceLockStateDataSource)deviceLockStateDataSource;
- (HMDHomeDefaultDataSource)init;
- (HMDIDSIDQueryController)idsIDQueryController;
- (id)makeAccessoryMatterCapabilitiesForFilename:(int64_t)filename;
- (id)makeHomeActivityStateManagerWithHome:(id)home;
- (id)makeHomeMetricsDispatcherWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)makeHomePresenceMonitor;
- (id)makeModernMessagingHandlerWithMappings:(id)mappings;
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

- (HMDIDSIDQueryController)idsIDQueryController
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)makeSwiftExtensionsWithHome:(id)home
{
  v4 = objc_allocWithZone(_s22DefaultSwiftExtensionsCMa_0());
  homeCopy = home;
  v6 = sub_2297ACD98(homeCopy);

  return v6;
}

- (id)makeNotificationRegistry
{
  v2 = [objc_allocWithZone(HMDNotificationRegistry) init];

  return v2;
}

- (id)makeResidentDeviceManagerWithHomeUUID:(id)d
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v7 = objc_opt_self();
  v8 = sub_22A4DB77C();
  createManagerForHomeUUID_ = [v7 createManagerForHomeUUID_];

  (*(v4 + 8))(v6, v3);

  return createManagerForHomeUUID_;
}

- (id)makeHomeMetricsDispatcherWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v9 = objc_allocWithZone(HMDHomeMetricsDispatcher);
  swift_unknownObjectRetain();
  v10 = sub_22A4DB77C();
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

- (id)makeAccessoryMatterCapabilitiesForFilename:(int64_t)filename
{
  makeInstanceForAssetFilename_ = [objc_opt_self() makeInstanceForAssetFilename_];

  return makeInstanceForAssetFilename_;
}

- (id)makeModernMessagingHandlerWithMappings:(id)mappings
{
  sub_22A4DD49C();
  v3 = objc_allocWithZone(HMDModernMessagingHandler);
  v4 = sub_22A4DD47C();

  initForMappings_ = [v3 initForMappings_];

  return initForMappings_;
}

- (id)makeHomeActivityStateManagerWithHome:(id)home
{
  initWithHome_ = [objc_allocWithZone(HMDHomeActivityStateManager) initWithHome_];

  return initWithHome_;
}

- (id)makeHomePresenceMonitor
{
  v2 = [objc_allocWithZone(HMDHomePresenceMonitor) init];

  return v2;
}

@end
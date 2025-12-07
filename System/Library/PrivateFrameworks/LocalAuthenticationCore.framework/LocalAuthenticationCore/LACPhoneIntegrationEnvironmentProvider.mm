@interface LACPhoneIntegrationEnvironmentProvider
- (BOOL)isFeatureAvailable;
- (LACCompanionAuthenticationEnvironment)environment;
- (LACEligibilityHelping)eligibilityHelper;
- (LACPhoneIntegrationEnvironmentProvider)init;
- (LACPhoneIntegrationEnvironmentProvider)initWithEligibilityHelper:(id)helper sharingManager:(id)manager workQueue:(id)queue;
- (LACSharingManaging)sharingManager;
- (void)dealloc;
@end

@implementation LACPhoneIntegrationEnvironmentProvider

- (LACCompanionAuthenticationEnvironment)environment
{
  selfCopy = self;
  v3 = [objc_allocWithZone(LACCompanionAuthenticationEnvironment) initWithFeatureAvailable:-[LACPhoneIntegrationEnvironmentProvider isFeatureAvailable](selfCopy featureSupported:{sel_isFeatureAvailable), LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter() & 1}];

  return v3;
}

- (BOOL)isFeatureAvailable
{
  selfCopy = self;
  if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
  {
    hasPairedDevices = [(LACPhoneIntegrationEnvironmentProvider *)selfCopy hasPairedDevices];
  }

  else
  {
    hasPairedDevices = 0;
  }

  return hasPairedDevices;
}

- (LACSharingManaging)sharingManager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (LACEligibilityHelping)eligibilityHelper
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (LACPhoneIntegrationEnvironmentProvider)initWithEligibilityHelper:(id)helper sharingManager:(id)manager workQueue:(id)queue
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return LACPhoneIntegrationEnvironmentProvider.init(eligibilityHelper:sharingManager:work:)(helper, manager, queue);
}

- (void)dealloc
{
  selfCopy = self;
  AKSEventsUnregister();
  v3.receiver = selfCopy;
  v3.super_class = LACPhoneIntegrationEnvironmentProvider;
  [(LACPhoneIntegrationEnvironmentProvider *)&v3 dealloc];
}

- (LACPhoneIntegrationEnvironmentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
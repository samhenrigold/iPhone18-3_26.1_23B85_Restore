@interface HMDDemoModeManagerFactory
+ (id)demoManagerWithHomeManager:(id)manager messageDispatcher:(id)dispatcher;
+ (void)loadDemoModeConfiguration;
+ (void)saveDemoModeConfiguration;
- (HMDDemoModeManagerFactory)init;
@end

@implementation HMDDemoModeManagerFactory

+ (id)demoManagerWithHomeManager:(id)manager messageDispatcher:(id)dispatcher
{
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  v7 = sub_22988EE64(managerCopy, dispatcherCopy);

  return v7;
}

- (HMDDemoModeManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDDemoModeManagerFactory;
  return [(HMDDemoModeManagerFactory *)&v3 init];
}

+ (void)loadDemoModeConfiguration
{
  v0 = sub_22A4DD07C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v5 = sub_22A4DDCCC();
  v6 = sub_22A4DD05C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v6, v5, "Loading demo mode configuration", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for DemoModeManager();
  v8 = [objc_allocWithZone(HMDFileManager) init];
  sub_22988DE3C(v8);
}

+ (void)saveDemoModeConfiguration
{
  v0 = sub_22A4DD07C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  initializePaths();
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v5 = sub_22A4DDCCC();
  v6 = sub_22A4DD05C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v6, v5, "Saving demo mode configuration", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for DemoModeManager();
  v8 = [objc_allocWithZone(HMDFileManager) init];
  sub_22988E688(v8);
}

@end
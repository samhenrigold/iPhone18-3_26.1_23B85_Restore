@interface DBDashboardSceneManager
- (DBFocusMovementActionHandling)focusMovementActionHandler;
- (_TtC9DashBoard23DBDashboardSceneManager)init;
- (_TtC9DashBoard23DBDashboardSceneManager)initWithEnvironment:(id)environment iconProvider:(id)provider sceneWorkspaceIdentifier:(id)identifier;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneForApplicationEntity:(id)entity;
- (void)_updateWallpaper;
- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications;
- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change;
- (void)environmentConfiguration:(id)configuration mapsAppearanceStyleDidChange:(int64_t)change;
- (void)invalidate;
- (void)processMonitor:(id)monitor didHandleDeathOfBundleIdentifier:(id)identifier;
- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)startObservingNavigationApplicationProcesses;
- (void)thermalMonitorLevelDidChange:(id)change;
- (void)updateApplicationSceneFrames;
@end

@implementation DBDashboardSceneManager

- (id)sceneForApplicationEntity:(id)entity
{
  entityCopy = entity;
  selfCopy = self;
  v6 = DBDashboardSceneManager.sceneForApplicationEntity(_:)(entityCopy);

  return v6;
}

- (DBFocusMovementActionHandling)focusMovementActionHandler
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9DashBoard23DBDashboardSceneManager)initWithEnvironment:(id)environment iconProvider:(id)provider sceneWorkspaceIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return DBDashboardSceneManager.init(environment:iconProvider:sceneWorkspaceIdentifier:)(environment, provider, identifier);
}

- (void)updateApplicationSceneFrames
{
  selfCopy = self;
  DBDashboardSceneManager.updateApplicationSceneFrames()();
}

- (void)startObservingNavigationApplicationProcesses
{
  selfCopy = self;
  DBDashboardSceneManager.startObservingNavigationApplicationProcesses()();
}

- (_TtC9DashBoard23DBDashboardSceneManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  selfCopy = self;
  DBDashboardSceneManager.invalidate()();
}

- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications
{
  controllerCopy = controller;
  selfCopy = self;
  _s9DashBoard23DBDashboardSceneManagerC21applicationController_17addedApplications07updatedI007removedI0ySo013DBApplicationG0C_ShySo0L0CGA2LtF_0();
}

- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change
{
  selfCopy = self;
  v4 = sub_248383DC0();
  v5 = *sub_24827BD58();
  sub_248382A40(v4, &dword_248146000, v5, "Appearance style changed for environment, updating user interface style", 71, 2, MEMORY[0x277D84F90]);

  sub_2482B56AC();
}

- (void)environmentConfiguration:(id)configuration mapsAppearanceStyleDidChange:(int64_t)change
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_2482B91E8(change);
}

- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash
{
  v8 = sub_248383960();
  v10 = v9;
  monitorCopy = monitor;
  selfCopy = self;
  sub_2482B9D34(v8, v10, crash);
}

- (void)processMonitor:(id)monitor didHandleDeathOfBundleIdentifier:(id)identifier
{
  v6 = sub_248383960();
  v8 = v7;
  monitorCopy = monitor;
  selfCopy = self;
  sub_2482BA7B8(v6, v8);
}

- (void)thermalMonitorLevelDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DBDashboardSceneManager.thermalMonitorLevelDidChange(_:)(changeCopy);
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sub_24814FB28(0, &unk_27EE91610, 0x277CF0B58);
  sub_248151298(&qword_27EE90E30, &unk_27EE91610, 0x277CF0B58, MEMORY[0x277D85378]);
  v6 = sub_248383C80();
  sceneCopy = scene;
  selfCopy = self;
  DBDashboardSceneManager.scene(_:handle:)(sceneCopy, v6);
  v10 = v9;

  if (v10)
  {
    v11 = sub_248383C70();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  contextCopy = context;
  selfCopy = self;
  _s9DashBoard23DBDashboardSceneManagerC18sceneDidInvalidate_7contextySo7FBSceneC_So25FBSSceneTransitionContextCSgtF_0(invalidateCopy);
}

- (void)_updateWallpaper
{
  selfCopy = self;
  v2 = sub_248383DC0();
  v3 = *sub_24827BD58();
  sub_248382A40(v2, &dword_248146000, v3, "Wallpaper changed, updating black wallpaper mode", 48, 2, MEMORY[0x277D84F90]);

  sub_2482B56AC();
}

@end
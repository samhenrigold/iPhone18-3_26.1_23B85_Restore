@interface SceneDelegate
- (_TtC16MagnifierSupport13SceneDelegate)init;
- (uint64_t)sceneDidBecomeActive:;
- (uint64_t)sceneWillResignActive:;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidEnterBackground:;
- (void)sceneWillEnterForeground:;
- (void)setWindow:(id)window;
- (void)updateAppearanceForReduceTransparency:(id)transparency;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_257E4D800(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_257E4E0E4(activityCopy);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  itemCopy = item;
  selfCopy = self;
  sub_257E493A4(item);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_257BD2C2C(0, &qword_281543F58, 0x277D757D8);
  sub_257E4D770(&qword_281543F50, &qword_281543F58, 0x277D757D8);
  v6 = sub_257ECFA70();
  sceneCopy = scene;
  selfCopy = self;
  sub_257E49A10(sceneCopy, v6);
}

- (void)updateAppearanceForReduceTransparency:(id)transparency
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30, &qword_257EEBBA0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v15 - v10;
  if (transparency)
  {
    sub_257ECC7E0();
    v12 = sub_257ECC810();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_257ECC810();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  selfCopy = self;
  sub_257E4D264();

  sub_257BE4084(v11, &qword_27F8F9E30, &qword_257EEBBA0);
}

- (_TtC16MagnifierSupport13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

- (uint64_t)sceneDidBecomeActive:
{
  v0 = sub_257ECD990();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v16 = sub_257ECDA20();
  v17 = sub_257ECFBD0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_257BAC000, v16, v17, "Scene Became Active", v18, 2u);
    MEMORY[0x259C74820](v18, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v19 = sub_257ECD9C0();
  __swift_project_value_buffer(v19, qword_27F8F5D90);
  sub_257ECD980();
  v20 = sub_257ECD9A0();
  v21 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v20, v21, v23, "SceneBecameActive", "", v22, 2u);
    MEMORY[0x259C74820](v22, -1, -1);
  }

  return (*(v1 + 8))(v7, v0);
}

- (uint64_t)sceneWillResignActive:
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setShortcutItems_];

  sub_257ECD4E0();
  v9 = sub_257ECDA20();
  v10 = sub_257ECFBD0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_257BAC000, v9, v10, "Scene Will Resign Active", v11, 2u);
    MEMORY[0x259C74820](v11, -1, -1);
  }

  return (*(v1 + 8))(v7, v0);
}

- (void)sceneWillEnterForeground:
{
  v0 = sub_257ECD990();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v16 = sub_257ECDA20();
  v17 = sub_257ECFBD0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_257BAC000, v16, v17, "Scene Will Enter Foreground", v18, 2u);
    MEMORY[0x259C74820](v18, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v19 = sub_257ECD9C0();
  __swift_project_value_buffer(v19, qword_27F8F5D90);
  sub_257ECD980();
  v20 = sub_257ECD9A0();
  v21 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v20, v21, v23, "SceneEnterFG", "", v22, 2u);
    MEMORY[0x259C74820](v22, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice beginGeneratingDeviceOrientationNotifications];
}

- (void)sceneDidEnterBackground:
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, "Scene Did Enter Background", v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];
}

@end
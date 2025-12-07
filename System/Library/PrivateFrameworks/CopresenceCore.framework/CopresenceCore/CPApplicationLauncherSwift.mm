@interface CPApplicationLauncherSwift
- (CPApplicationLauncherSwift)init;
- (NSString)placementSceneIdentifier;
- (void)authorizePiPForActivitySession:(id)session completion:(id)completion;
- (void)launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion;
- (void)revokeBackgroundAuthorizationForBundleID:(id)d;
- (void)revokeBackgroundAuthorizationForSession:(id)session;
- (void)setPlacementSceneIdentifier:(id)identifier;
@end

@implementation CPApplicationLauncherSwift

- (NSString)placementSceneIdentifier
{
  v2 = (self + OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;

    v5 = MEMORY[0x1B270FF70](v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPlacementSceneIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  ApplicationLauncher.placementSceneIdentifier.setter(v4, v6);
}

- (void)launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  ApplicationLauncher.launchApplication(for:options:completion:)(session, options, v8, v9);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
  swift_unknownObjectRelease();
}

- (void)revokeBackgroundAuthorizationForBundleID:(id)d
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v7;
  v11[6] = v9;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)partial apply, v11);
}

- (void)revokeBackgroundAuthorizationForSession:(id)session
{
  swift_unknownObjectRetain();
  selfCopy = self;
  activity = [session activity];
  bundleIdentifier = [activity bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    (*((*MEMORY[0x1E69E7D40] & *selfCopy) + 0xD0))(v7, v9);
  }

  swift_unknownObjectRelease();
}

- (void)authorizePiPForActivitySession:(id)session completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = *(self + OBJC_IVAR___CPApplicationLauncherSwift_pegasusLaunchBehavior);
  if (v12)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = session;
    v14[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
    v14[7] = v11;
    swift_unknownObjectRetain_n();
    selfCopy = self;
    _Block_copy(v10);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in ApplicationLauncher.authorizePiP(for:completion:)partial apply, v14);

    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    selfCopy2 = self;
    _Block_copy(v10);
    (*(v10 + 2))(v10, 0, 0);

    _Block_release(v10);
    swift_unknownObjectRelease();
    v16 = selfCopy2;
  }
}

- (CPApplicationLauncherSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
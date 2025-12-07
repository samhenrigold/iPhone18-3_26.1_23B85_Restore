@interface PaidBundleBackgroundWorkerManager
- (_TtC7NewsUI233PaidBundleBackgroundWorkerManager)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
@end

@implementation PaidBundleBackgroundWorkerManager

- (_TtC7NewsUI233PaidBundleBackgroundWorkerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  v3 = qword_280E8D870;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61750;
  v5 = sub_219BF6214();
  sub_219BE5314("PaidBundleBackgroundWorkerManager: bundleSubscriptionDidSubscribe detected. Registering objects that need to do background work for paid bundle subscribers, the new issue checker, the AAM reporter, etc.", 202, 2, &dword_2186C1000, v4, v5, MEMORY[0x277D84F90]);
  sub_218A708D8(v6);
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  v3 = qword_280E8D870;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61750;
  v6 = sub_219BF6214();
  v7 = MEMORY[0x277D84F90];
  sub_219BE5314("PaidBundleBackgroundWorkerManager: bundleSubscriptionDidExpire detected. Deregistering objects that need to do background work for paid bundle subscribers, the new issue checker, the AAM reporter, etc.", 201, 2, &dword_2186C1000, v5, v6, MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_registeredWorkers;
  swift_beginAccess();
  *(&selfCopy->super.isa + v8) = v7;
}

@end
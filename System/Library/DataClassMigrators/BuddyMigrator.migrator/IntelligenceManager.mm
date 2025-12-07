@interface IntelligenceManager
- (_TtC13BuddyMigrator19IntelligenceManager)init;
- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags availabilityProvider:(id)provider stateProvider:(id)stateProvider preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)deviceProvider visualIntelligencePresentationManager:(id)manager;
- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)provider;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)enabled;
- (void)applyStashedNotificationOnboardingDefaults:(id)defaults;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)handler;
- (void)setDidShowIntelligencePaneInCurrentSession;
- (void)shouldShowIntelligenceWithServerCheck:(BOOL)check completionHandler:(id)handler;
- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)show completionHandler:(id)handler;
@end

@implementation IntelligenceManager

- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags availabilityProvider:(id)provider stateProvider:(id)stateProvider preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)deviceProvider visualIntelligencePresentationManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_128DC(flags, provider, stateProvider, preferencesCopy, chronicleCopy, manager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

- (_TtC13BuddyMigrator19IntelligenceManager)initWithFeatureFlags:(id)flags preferences:(id)preferences chronicle:(id)chronicle deviceProvider:(id)provider
{
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  return IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(flags, preferencesCopy, chronicleCopy, provider);
}

- (void)shouldShowIntelligenceWithServerCheck:(BOOL)check completionHandler:(id)handler
{
  v7 = sub_ED0C(&qword_30030, "&w");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = check;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_193D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D1F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D200;
  v15[5] = v14;
  selfCopy = self;
  sub_17E1C(0, 0, v10, &unk_1D208, v15);
}

- (void)setDidShowIntelligencePaneInCurrentSession
{
  selfCopy = self;
  IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()();
}

- (void)isIntelligenceEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_ED0C(&qword_30030, "&w");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_193D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D1D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D1E0;
  v13[5] = v12;
  selfCopy = self;
  sub_17E1C(0, 0, v8, &unk_1D1E8, v13);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)enabled
{
  selfCopy = self;
  IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(enabled);
}

- (void)updateAppleIntelligenceUpsellPreferencesWithDidShow:(BOOL)show completionHandler:(id)handler
{
  v7 = sub_ED0C(&qword_30030, "&w");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = show;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_193D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D1B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D1C0;
  v15[5] = v14;
  selfCopy = self;
  sub_17E1C(0, 0, v10, &unk_1D110, v15);
}

- (id)stashableNotificationOnboardingDefaults
{
  selfCopy = self;
  v3 = IntelligenceManager.stashableNotificationOnboardingDefaults()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = sub_191B0().super.isa;
    sub_EDCC(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (void)applyStashedNotificationOnboardingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  selfCopy = self;
  v5 = sub_191C0();
  v7 = v6;

  IntelligenceManager.applyStashedNotificationOnboardingDefaults(_:)(v5, v7);
  sub_ED78(v5, v7);
}

- (_TtC13BuddyMigrator19IntelligenceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
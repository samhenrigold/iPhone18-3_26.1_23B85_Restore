@interface IntelligenceServerControlProvider
- (_TtC13BuddyMigrator33IntelligenceServerControlProvider)init;
- (void)isFeatureEnabledFromCache:(BOOL)cache completionHandler:(id)handler;
@end

@implementation IntelligenceServerControlProvider

- (void)isFeatureEnabledFromCache:(BOOL)cache completionHandler:(id)handler
{
  v7 = sub_ED0C(&qword_30030, "&w");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = cache;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_193D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D308;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D1C0;
  v15[5] = v14;
  selfCopy = self;
  sub_17E1C(0, 0, v10, &unk_1D110, v15);
}

- (_TtC13BuddyMigrator33IntelligenceServerControlProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return [(IntelligenceServerControlProvider *)&v3 init];
}

@end
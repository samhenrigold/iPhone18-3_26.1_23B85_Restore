@interface BuddyGMAvailabilityProvider
- (_TtC13BuddyMigrator27BuddyGMAvailabilityProvider)init;
- (void)fetchLatestAvailabilityStatusWithCompletionHandler:(id)handler;
@end

@implementation BuddyGMAvailabilityProvider

- (void)fetchLatestAvailabilityStatusWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1D440;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D1C0;
  v13[5] = v12;
  selfCopy = self;
  sub_17E1C(0, 0, v8, &unk_1D110, v13);
}

- (_TtC13BuddyMigrator27BuddyGMAvailabilityProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BuddyGMAvailabilityProvider();
  return [(BuddyGMAvailabilityProvider *)&v3 init];
}

@end
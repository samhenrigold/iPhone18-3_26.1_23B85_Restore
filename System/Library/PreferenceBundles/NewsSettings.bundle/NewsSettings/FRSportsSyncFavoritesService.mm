@interface FRSportsSyncFavoritesService
- (FRSportsSyncFavoritesService)init;
- (void)fetchSyncSettingWithCompletionHandler:(id)handler;
- (void)updateSyncSettingWithIsEnabled:(BOOL)enabled completionHandler:(id)handler;
@end

@implementation FRSportsSyncFavoritesService

- (FRSportsSyncFavoritesService)init
{
  v3 = sub_A848();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A838();
  (*(v4 + 8))(v6, v3);
  v7 = type metadata accessor for SportsSyncFavoritesService();
  v9.receiver = self;
  v9.super_class = v7;
  return [(FRSportsSyncFavoritesService *)&v9 init];
}

- (void)fetchSyncSettingWithCompletionHandler:(id)handler
{
  sub_7D8C(&qword_14B50, &qword_C150);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_A998();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_C1B0;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_C1B8;
  v11[5] = v10;
  selfCopy = self;
  sub_8FFC(0, 0, v6, &unk_C1C0, v11);
}

- (void)updateSyncSettingWithIsEnabled:(BOOL)enabled completionHandler:(id)handler
{
  sub_7D8C(&qword_14B50, &qword_C150);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = enabled;
  *(v10 + 24) = v9;
  *(v10 + 32) = self;
  v11 = sub_A998();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_C160;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_C170;
  v13[5] = v12;
  selfCopy = self;
  sub_8FFC(0, 0, v8, &unk_C180, v13);
}

@end
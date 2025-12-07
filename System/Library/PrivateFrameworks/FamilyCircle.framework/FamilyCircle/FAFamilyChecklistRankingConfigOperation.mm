@interface FAFamilyChecklistRankingConfigOperation
- (_TtC13familycircled39FAFamilyChecklistRankingConfigOperation)initWithNetworkService:(id)service;
- (void)familyChecklistRankingConfigWith:(unint64_t)with completionHandler:(id)handler;
@end

@implementation FAFamilyChecklistRankingConfigOperation

- (_TtC13familycircled39FAFamilyChecklistRankingConfigOperation)initWithNetworkService:(id)service
{
  v4 = OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_kFAFamilyChecklistRankingConfigURLEndpoint;
  serviceCopy = service;
  *(&self->super.super.isa + v4) = String._bridgeToObjectiveC()();
  if (qword_1000B7F30 != -1)
  {
    swift_once();
  }

  v7 = static FAFamilyChecklistRankingConfigCache.shared;
  v8 = (self + OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_cache);
  v9 = type metadata accessor for FAFamilyChecklistRankingConfigCache(0, v6);
  v8[3] = v9;
  v8[4] = &protocol witness table for FAFamilyChecklistRankingConfigCache;
  *v8 = v7;
  v13.receiver = self;
  v13.super_class = type metadata accessor for FAFamilyChecklistRankingConfigOperation(v9, v10);

  v11 = [(FANetworkClient *)&v13 initWithNetworkService:serviceCopy];

  return v11;
}

- (void)familyChecklistRankingConfigWith:(unint64_t)with completionHandler:(id)handler
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008C8A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008C7F0;
  v15[5] = v14;
  selfCopy = self;
  sub_100071FE8(0, 0, v10, &unk_10008C6E0, v15);
}

@end
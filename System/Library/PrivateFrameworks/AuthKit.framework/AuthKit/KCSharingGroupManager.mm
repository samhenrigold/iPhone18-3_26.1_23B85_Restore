@interface KCSharingGroupManager
- (void)fetchGroupParticipantsWithCompletionHandler:(id)handler;
- (void)fetchParticipantHandleFor:(NSString *)for groupID:(NSString *)d currentUserParticipantID:(NSString *)iD completionHandler:(id)handler;
@end

@implementation KCSharingGroupManager

- (void)fetchParticipantHandleFor:(NSString *)for groupID:(NSString *)d currentUserParticipantID:(NSString *)iD completionHandler:(id)handler
{
  v11 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = for;
  v15[3] = d;
  v15[4] = iD;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029E7B8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10029E7C0;
  v18[5] = v17;
  forCopy = for;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_100244978(0, 0, v13, &unk_10029E7C8, v18);
}

- (void)fetchGroupParticipantsWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029E798;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

@end
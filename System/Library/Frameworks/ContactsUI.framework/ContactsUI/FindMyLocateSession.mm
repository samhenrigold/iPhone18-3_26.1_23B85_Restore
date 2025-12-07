@interface FindMyLocateSession
- (id)friendshipUpdateCallback;
- (int64_t)friendshipState:(id)state;
- (void)getAllFriendIdsWithCompletion:(id)completion;
- (void)sendFriendshipOfferTo:(id)to end:(int64_t)end isFromGroup:(BOOL)group completion:(id)completion;
- (void)setFriendshipUpdateCallback:(id)callback;
- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)updates completionHandler:(id)handler;
- (void)stopSharingLocationWith:(id)with isFromGroup:(BOOL)group completion:(id)completion;
- (void)stopUpdatingFriendsWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (id)friendshipUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199AE63DC;
    aBlock[3] = &block_descriptor_5;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFriendshipUpdateCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_199AF0380;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_199A9A5FC(v7, v8);
}

- (void)getAllFriendIdsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_199DFA1BC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_199AF0330;
  v11[6] = v9;
  selfCopy = self;
  sub_199AE7FD0(0, 0, v7, &unk_199E3B820, v11);
}

- (int64_t)friendshipState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_199DFA3AC();

  swift_unknownObjectRelease();
  return v6;
}

- (void)stopSharingLocationWith:(id)with isFromGroup:(BOOL)group completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = sub_199DFA0CC();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = sub_199DFA1BC();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v12;
  *(v15 + 40) = sub_199AF0720;
  *(v15 + 48) = v13;
  *(v15 + 56) = self;
  *(v15 + 64) = group;
  selfCopy = self;
  sub_199AE7FD0(0, 0, v10, &unk_199E3B818, v15);
}

- (void)sendFriendshipOfferTo:(id)to end:(int64_t)end isFromGroup:(BOOL)group completion:(id)completion
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = sub_199DFA0CC();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = sub_199DFA1BC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v14;
  *(v17 + 40) = sub_199AF02CC;
  *(v17 + 48) = v15;
  *(v17 + 56) = self;
  *(v17 + 64) = end;
  *(v17 + 72) = group;
  selfCopy = self;
  sub_199AE7FD0(0, 0, v12, &unk_199E3B810, v17);
}

- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)updates completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = updates;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_199DFA1BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_199E3B7F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_199E3B800;
  v14[5] = v13;
  selfCopy = self;
  sub_199AEFE74(0, 0, v9, &unk_199E3B808, v14);
}

- (void)stopUpdatingFriendsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_199DFA1BC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_199E3B7B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_199E3B7C0;
  v12[5] = v11;
  selfCopy = self;
  sub_199AEFE74(0, 0, v7, &unk_199E3B7D0, v12);
}

@end
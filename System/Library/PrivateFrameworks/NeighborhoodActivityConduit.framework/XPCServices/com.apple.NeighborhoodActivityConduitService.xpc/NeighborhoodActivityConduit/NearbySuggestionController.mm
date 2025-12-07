@interface NearbySuggestionController
- (_TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController)init;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager presentationContextChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)dealloc;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateContext:(id)context;
@end

@implementation NearbySuggestionController

- (void)dealloc
{
  v3 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000E2538();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_100022960(0, 0, v5, &unk_1000F1690, v7);

  v9 = type metadata accessor for NearbySuggestionController();
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(NearbySuggestionController *)&v10 dealloc];
}

- (_TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  sub_10003AD34(conversationCopy);
}

- (void)conversationManager:(id)manager presentationContextChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10003B20C(conversationCopy);
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10003B66C(conversationCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_10011DC08;
  errorCopy = error;
  selfCopy = self;
  v13 = errorCopy;
  v15 = selfCopy;
  if (v10 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230D0;
  v17 = sub_10003BB3C(&unk_10011F010, v14, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v13;
  v18[5] = v15;

  sub_100022960(0, 0, v8, &unk_1000F15E0, v18);
}

- (void)session:(id)session didUpdateContext:(id)context
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_10000CAAC(0, &unk_10011F030, IRContext_ptr);
  v8 = sub_1000E22B8();
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = qword_10011DC08;
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230D0;
  v14 = sub_10003BB3C(&unk_10011F010, v11, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v8;
  v15[5] = selfCopy;

  sub_100022960(0, 0, v7, &unk_1000F15B8, v15);
}

@end
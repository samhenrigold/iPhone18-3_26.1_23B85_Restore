@interface ConversationStream
- (void)streamConversationsWithBookmark:(_TtC26DeepThoughtBiomeFoundation15StreamsBookmark *)bookmark completionHandler:(id)handler;
@end

@implementation ConversationStream

- (void)streamConversationsWithBookmark:(_TtC26DeepThoughtBiomeFoundation15StreamsBookmark *)bookmark completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66E8, &qword_2487356D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = bookmark;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_248731340();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_248735750;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248735758;
  v14[5] = v13;
  bookmarkCopy = bookmark;
  selfCopy = self;
  sub_24870CE40(0, 0, v9, &unk_248735760, v14);
}

@end
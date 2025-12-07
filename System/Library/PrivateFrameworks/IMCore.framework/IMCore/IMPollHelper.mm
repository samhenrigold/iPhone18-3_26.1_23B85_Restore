@interface IMPollHelper
- (IMPollHelper)init;
- (int64_t)synchronousPollOptionCountFromChatItem:(id)item;
- (void)pollOptionsFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler;
- (void)pollOptionsFromPluginPayload:(IMPluginPayload *)payload completionHandler:(id)handler;
- (void)pollResponseFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler;
@end

@implementation IMPollHelper

- (int64_t)synchronousPollOptionCountFromChatItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_1A84B8EE8(itemCopy);

  return v6;
}

- (void)pollOptionsFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = item;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A84E60BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A850A988;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A850A990;
  v14[5] = v13;
  itemCopy = item;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v9, &unk_1A850A998, v14);
}

- (void)pollOptionsFromPluginPayload:(IMPluginPayload *)payload completionHandler:(id)handler
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = payload;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A84E60BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A850A918;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A850A920;
  v14[5] = v13;
  payloadCopy = payload;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v9, &unk_1A850A928, v14);
}

- (void)pollResponseFromChatItem:(IMTranscriptPluginChatItem *)item completionHandler:(id)handler
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = item;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A84E60BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A850A8F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A85008C0;
  v14[5] = v13;
  itemCopy = item;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v9, &unk_1A8507BC0, v14);
}

- (IMPollHelper)init
{
  v3.receiver = self;
  v3.super_class = IMPollHelper;
  return [(IMPollHelper *)&v3 init];
}

@end
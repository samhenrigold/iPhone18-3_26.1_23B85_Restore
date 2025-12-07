@interface IMDMessageTranslator
+ (BOOL)shouldTranslateMessageItems:(id)items;
+ (BOOL)shouldTranslateMessagesForChat:(id)chat;
+ (void)translateMessageItems:(NSArray *)items forChat:(IMDChat *)chat incoming:(BOOL)incoming completion:(id)completion;
- (IMDMessageTranslator)init;
@end

@implementation IMDMessageTranslator

+ (BOOL)shouldTranslateMessagesForChat:(id)chat
{
  v4 = objc_opt_self();
  chatCopy = chat;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [sharedFeatureFlags isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled && [chatCopy isAutomaticallyTranslating])
  {
    translationLanguageIdentifier = [chatCopy translationLanguageIdentifier];

    if (!translationLanguageIdentifier)
    {
      return 0;
    }

    v9 = 1;
    chatCopy = translationLanguageIdentifier;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)shouldTranslateMessageItems:(id)items
{
  sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
  v3 = sub_22B7DB918();
  v4 = sub_22B7C1794(v3);
  v3, v5, v6, v7, v8, v9, v10, v11, v13, v14;
  return v4 & 1;
}

+ (void)translateMessageItems:(NSArray *)items forChat:(IMDChat *)chat incoming:(BOOL)incoming completion:(id)completion
{
  v11 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = items;
  *(v15 + 24) = chat;
  *(v15 + 32) = incoming;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_22B7DBA58();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B7FE258;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B7F8D08;
  v18[5] = v17;
  itemsCopy = items;
  chatCopy = chat;
  sub_22B7C0EFC(0, 0, v13, &unk_22B7F8D10, v18);
}

- (IMDMessageTranslator)init
{
  v3.receiver = self;
  v3.super_class = IMDMessageTranslator;
  return [(IMDMessageTranslator *)&v3 init];
}

@end
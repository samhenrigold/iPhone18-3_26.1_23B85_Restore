@interface CKParticipantSubscriptionSwitchChatItem
- (id)handle;
- (id)loadTranscriptText;
- (id)sender;
@end

@implementation CKParticipantSubscriptionSwitchChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  handle = [(CKParticipantSubscriptionSwitchChatItem *)self handle];
  name = [handle name];
  v9 = name;
  if (name)
  {
    v10 = name;
  }

  else
  {
    v10 = &stru_1F04268F8;
  }

  v11 = v10;

  v13 = CKFrameworkBundle(v12);
  v14 = [v13 localizedStringForKey:@"GROUP_SUBSCRIPTION_CHANGE_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, v14, v15, v16, v17, v18, v19, v11);

  return v20;
}

- (id)handle
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  otherHandle = [iMChatItem otherHandle];

  return otherHandle;
}

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

@end
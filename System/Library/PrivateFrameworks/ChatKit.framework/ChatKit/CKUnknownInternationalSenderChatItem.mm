@interface CKUnknownInternationalSenderChatItem
- (id)loadTranscriptText;
@end

@implementation CKUnknownInternationalSenderChatItem

- (id)loadTranscriptText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v2 transcriptEmphasizedFontAttributes];

  v5 = CKFrameworkBundle(v4);
  v6 = [v5 localizedStringForKey:@"SENDER_IS_UNKNOWN_INTERNATIONAL_SENDER_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:transcriptEmphasizedFontAttributes];

  return v7;
}

@end
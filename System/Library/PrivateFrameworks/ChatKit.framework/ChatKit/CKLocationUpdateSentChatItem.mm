@interface CKLocationUpdateSentChatItem
- (id)loadTranscriptText;
@end

@implementation CKLocationUpdateSentChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  imLocationUpdateSentChatItem = [(CKLocationUpdateSentChatItem *)self imLocationUpdateSentChatItem];
  chatIdentifier = [imLocationUpdateSentChatItem chatIdentifier];

  v7 = IMIsStringStewieRoadside();
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle(v7);
    v10 = [v9 localizedStringForKey:@"ROADSIDE_LOCATION_UPDATE_SENT" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    v12 = [mEMORY[0x1E69A5B00] roadsideProviderNameForChatIdentifier:chatIdentifier];
    v13 = [v8 localizedStringWithFormat:v10, v12];
  }

  else
  {
    v9 = CKFrameworkBundle(v7);
    v13 = [v9 localizedStringForKey:@"EMERGENCY_LOCATION_UPDATE_SENT" value:&stru_1F04268F8 table:@"ChatKit-SYDROB_FEATURES"];
  }

  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:0];
  [v14 replaceCharactersInRange:0 withString:{0, @" "}];
  v15 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v16 = +[CKUIBehavior sharedBehaviors];
  locationShareActionIcon = [v16 locationShareActionIcon];
  [v15 setImage:locationShareActionIcon];

  v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v15];
  [v14 insertAttributedString:v18 atIndex:0];

  [v14 addAttributes:transcriptEmphasizedFontAttributes range:{0, objc_msgSend(v14, "length")}];

  return v14;
}

@end
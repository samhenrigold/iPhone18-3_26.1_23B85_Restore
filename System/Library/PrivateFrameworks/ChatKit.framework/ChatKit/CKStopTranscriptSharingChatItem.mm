@interface CKStopTranscriptSharingChatItem
- (id)loadTranscriptText;
@end

@implementation CKStopTranscriptSharingChatItem

- (id)loadTranscriptText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v2 transcriptRegularFontAttributes];

  v4 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v4 transcriptEmphasizedFontAttributes];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled)
  {
    v9 = CKFrameworkBundle(v8);
    v10 = [v9 localizedStringForKey:@"TS_STOP_SHARING_STATUS_ITEM" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v16 = CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, v10, v11, v12, v13, v14, v15, 0);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
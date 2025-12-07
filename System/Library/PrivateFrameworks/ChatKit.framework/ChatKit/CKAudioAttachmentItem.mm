@interface CKAudioAttachmentItem
+ (id)UTITypes;
- (id)previewItemTitle;
@end

@implementation CKAudioAttachmentItem

+ (id)UTITypes
{
  audiovisualTypes = [MEMORY[0x1E6988168] audiovisualTypes];
  v3 = [audiovisualTypes indexesOfObjectsPassingTest:&__block_literal_global_132];
  v4 = [audiovisualTypes objectsAtIndexes:v3];

  return v4;
}

- (id)previewItemTitle
{
  fileURL = [(CKAttachmentItem *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  v4 = [lastPathComponent isEqualToString:@"Audio Message.caf"];
  if ((v4 & 1) != 0 || (v4 = [lastPathComponent isEqualToString:@"Audio Message.amr"], v4))
  {
    v5 = CKFrameworkBundle(v4);
    v6 = [v5 localizedStringForKey:@"PREVIEW_TITLE_AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
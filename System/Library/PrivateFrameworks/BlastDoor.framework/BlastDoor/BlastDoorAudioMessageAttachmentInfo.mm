@interface BlastDoorAudioMessageAttachmentInfo
- (BlastDoorAudioMessageAttachmentInfo)init;
- (NSString)description;
@end

@implementation BlastDoorAudioMessageAttachmentInfo

- (NSString)description
{
  v2 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 8];
  v3 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 16];

  sub_213FDC9D0(v2, v3);

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorAudioMessageAttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface RDSwiftSpeechDonation
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)initWithDonorBundleID:(id)d donorReferenceID:(id)iD recordingDate:(id)date locale:(id)locale taskHint:(id)hint transcription:(id)transcription;
- (void)donateWithAudioBuffers:(id)buffers logAudioFile:(BOOL)file;
@end

@implementation RDSwiftSpeechDonation

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)initWithDonorBundleID:(id)d donorReferenceID:(id)iD recordingDate:(id)date locale:(id)locale taskHint:(id)hint transcription:(id)transcription
{
  v30[1] = self;
  v8 = sub_1000C9564();
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C9514();
  __chkstk_darwin(v13 - 8, v14, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C9B04();
  v20 = v19;
  v21 = sub_1000C9B04();
  v23 = v22;
  sub_1000C9504();
  sub_1000C9554();
  v24 = sub_1000C9B04();
  v26 = v25;
  v27 = sub_1000C9B04();
  return RDSwiftSpeechDonation.init(donorBundleID:donorReferenceID:recordingDate:locale:taskHint:transcription:)(v18, v20, v21, v23, v17, v12, v24, v26, v27, v28);
}

- (void)donateWithAudioBuffers:(id)buffers logAudioFile:(BOOL)file
{
  sub_100056E30();
  v6 = sub_1000C9B74();
  selfCopy = self;
  RDSwiftSpeechDonation.donate(audioBuffers:logAudioFile:)(v6, file);
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
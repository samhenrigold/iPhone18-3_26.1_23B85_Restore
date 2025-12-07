@interface RDSpeechDonation
+ (id)convertRawAudiotoPCM:(const signed __int16 *)m count:(unsigned int)count;
- (RDSpeechDonation)initWithBundleID:(id)d donorReferenceID:(id)iD locale:(id)locale taskHint:(id)hint;
- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count;
- (void)donateAudioFor:(id)for logAudioFile:(BOOL)file;
@end

@implementation RDSpeechDonation

- (RDSpeechDonation)initWithBundleID:(id)d donorReferenceID:(id)iD locale:(id)locale taskHint:(id)hint
{
  dCopy = d;
  iDCopy = iD;
  localeCopy = locale;
  hintCopy = hint;
  v19.receiver = self;
  v19.super_class = RDSpeechDonation;
  v14 = [(RDSpeechDonation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(RDSpeechDonation *)v14 setDonorBundleID:dCopy];
    [(RDSpeechDonation *)v15 setDonorReferenceID:iDCopy];
    [(RDSpeechDonation *)v15 setLocale:localeCopy];
    v16 = +[NSDate date];
    [(RDSpeechDonation *)v15 setRecordingStartDate:v16];

    [(RDSpeechDonation *)v15 setTaskHint:hintCopy];
    v17 = objc_alloc_init(NSMutableArray);
    [(RDSpeechDonation *)v15 setAudioPCMBuffers:v17];
  }

  return v15;
}

- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count
{
  audioPCMBuffers = [(RDSpeechDonation *)self audioPCMBuffers];
  v6 = [RDSpeechDonation convertRawAudiotoPCM:samples count:count];
  [audioPCMBuffers addObject:v6];
}

- (void)donateAudioFor:(id)for logAudioFile:(BOOL)file
{
  fileCopy = file;
  forCopy = for;
  v7 = [_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond21RDSwiftSpeechDonation alloc];
  donorBundleID = [(RDSpeechDonation *)self donorBundleID];
  donorReferenceID = [(RDSpeechDonation *)self donorReferenceID];
  recordingStartDate = [(RDSpeechDonation *)self recordingStartDate];
  locale = [(RDSpeechDonation *)self locale];
  taskHint = [(RDSpeechDonation *)self taskHint];
  v13 = [(RDSwiftSpeechDonation *)v7 initWithDonorBundleID:donorBundleID donorReferenceID:donorReferenceID recordingDate:recordingStartDate locale:locale taskHint:taskHint transcription:forCopy];

  [(RDSpeechDonation *)self set_speechDonation:v13];
  _speechDonation = [(RDSpeechDonation *)self _speechDonation];
  [_speechDonation donateWithAudioBuffers:self->_audioPCMBuffers logAudioFile:fileCopy];
}

+ (id)convertRawAudiotoPCM:(const signed __int16 *)m count:(unsigned int)count
{
  v4 = *&count;
  v10 = xmmword_1000D1698;
  v11 = unk_1000D16A8;
  v12 = 16;
  v6 = [[AVAudioFormat alloc] initWithStreamDescription:&v10];
  v7 = [AVAudioPCMBuffer alloc];
  v8 = [v7 initWithPCMFormat:v6 frameCapacity:v4, v10, v11, v12];
  memcpy(*[v8 int16ChannelData], m, 2 * v4);
  [v8 setFrameLength:v4];

  return v8;
}

@end
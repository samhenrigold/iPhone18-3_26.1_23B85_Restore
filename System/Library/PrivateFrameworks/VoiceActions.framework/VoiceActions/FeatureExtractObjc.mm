@interface FeatureExtractObjc
- (FeatureExtractObjc)init;
- (id)audioForKeywordWithStartFrame:(int64_t)frame endFrame:(int64_t)endFrame actualEndFrame:(int64_t *)actualEndFrame;
- (id)saveAudioBufferToFileWithPcmBuffer:(id)buffer keyword:(id)keyword score:(id)score duration:(int)duration;
- (id)saveAudioDataToFileWithData:(id)data keyword:(id)keyword score:(id)score duration:(int)duration;
- (id)saveStandaloneDebugSamplesToFileWithDebugAudioSamples:(id)samples keyword:(id)keyword score:(id)score duration:(int)duration;
- (void)addCallbackForAcousticModelOutputAvailableWithCallback:(id)callback;
- (void)addFloatSamples:(const float *)samples count:(int64_t)count;
- (void)addSamples:(const signed __int16 *)samples count:(int64_t)count;
- (void)reset;
- (void)setCmvnMinWindowLengthWithCmvnMinWindowLength:(int64_t)length;
@end

@implementation FeatureExtractObjc

- (void)addCallbackForAcousticModelOutputAvailableWithCallback:(id)callback
{
  v4 = _Block_copy(callback);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v7 = *(&self->super.isa + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v8 = *&self->audioSampleIngestionBuffer[OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable];
  *v6 = sub_2722C30B8;
  v6[1] = v5;
  selfCopy = self;
  sub_272273524(v7, v8);
}

- (void)setCmvnMinWindowLengthWithCmvnMinWindowLength:(int64_t)length
{
  v4 = *(&self->super.isa + OBJC_IVAR___FeatureExtractObjc_config);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  selfCopy = self;
  v7 = v4;
  v8 = v6();

  (*((*v5 & *v8) + 0xA8))(length);
}

- (void)reset
{
  selfCopy = self;
  sub_2722BA430();
}

- (id)audioForKeywordWithStartFrame:(int64_t)frame endFrame:(int64_t)endFrame actualEndFrame:(int64_t *)actualEndFrame
{
  selfCopy = self;
  v9 = sub_2722BA5DC(frame, endFrame, actualEndFrame);

  return v9;
}

- (void)addFloatSamples:(const float *)samples count:(int64_t)count
{
  selfCopy = self;
  sub_2722BB58C(samples, count);
}

- (void)addSamples:(const signed __int16 *)samples count:(int64_t)count
{
  selfCopy = self;
  sub_2722BB96C(samples, count);
}

- (id)saveAudioBufferToFileWithPcmBuffer:(id)buffer keyword:(id)keyword score:(id)score duration:(int)duration
{
  v9 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_27237782C();
  v14 = v13;
  v15 = sub_27237782C();
  v17 = v16;
  bufferCopy = buffer;
  selfCopy = self;
  sub_2722BC1D0(bufferCopy, v12, v14, v15, v17, duration, v11);

  v20 = sub_272376D5C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v11, 1, v20);
  v23 = 0;
  if (v22 != 1)
  {
    v24 = sub_272376CCC();
    (*(v21 + 8))(v11, v20);
    v23 = v24;
  }

  return v23;
}

- (id)saveAudioDataToFileWithData:(id)data keyword:(id)keyword score:(id)score duration:(int)duration
{
  v6 = *&duration;
  v11 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  dataCopy = data;
  keywordCopy = keyword;
  scoreCopy = score;
  selfCopy = self;
  v18 = sub_272376D8C();
  v20 = v19;

  v21 = sub_27237782C();
  v23 = v22;

  v24 = sub_27237782C();
  v26 = v25;

  sub_2721F0560(v18, v20);
  v27 = sub_2722BCD7C(v18, v20, v18, v20);
  (*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x3A0))(v27, v21, v23, v24, v26, v6);

  sub_2721F05C8(v18, v20);

  v28 = sub_272376D5C();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v13, 1, v28);
  v31 = 0;
  if (v30 != 1)
  {
    v32 = sub_272376CCC();
    (*(v29 + 8))(v13, v28);
    v31 = v32;
  }

  return v31;
}

- (id)saveStandaloneDebugSamplesToFileWithDebugAudioSamples:(id)samples keyword:(id)keyword score:(id)score duration:(int)duration
{
  v8 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_272377AFC();
  v12 = sub_27237782C();
  v14 = v13;
  v15 = sub_27237782C();
  v17 = v16;
  selfCopy = self;
  sub_2722BD170(v11, v12, v14, v15, v17, duration, v10);

  v19 = sub_272376D5C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v10, 1, v19);
  v22 = 0;
  if (v21 != 1)
  {
    v23 = sub_272376CCC();
    (*(v20 + 8))(v10, v19);
    v22 = v23;
  }

  return v22;
}

- (FeatureExtractObjc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
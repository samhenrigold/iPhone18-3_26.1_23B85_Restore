@interface SRAudioDecoder
+ (unint64_t)totalFrames:(id)frames;
- (SRAudioDecoder)init;
- (SRAudioDecoder)initWithStreamDescription:(AudioStreamBasicDescription *)description error:(id *)error;
- (id)decodeAudio:(id)audio error:(id *)error;
- (id)endWithError:(id *)error;
@end

@implementation SRAudioDecoder

- (SRAudioDecoder)initWithStreamDescription:(AudioStreamBasicDescription *)description error:(id *)error
{
  mSampleRate = description->mSampleRate;
  v5 = *&description->mBytesPerFrame;
  v9 = *&description->mFormatID;
  v10 = v5;
  type metadata accessor for OpusDecoder();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___SRAudioDecoder_decoder) = OpusDecoder.init(destinationFormat:)();
  v7.receiver = self;
  v7.super_class = type metadata accessor for SRAudioDecoder();
  return [(SRAudioDecoder *)&v7 init];
}

- (id)decodeAudio:(id)audio error:(id *)error
{
  audioCopy = audio;
  selfCopy = self;
  v7 = dispatch thunk of OpusDecoder.decode(audio:)();

  return v7;
}

- (id)endWithError:(id *)error
{
  selfCopy = self;
  v4 = dispatch thunk of OpusDecoder.end()();

  return v4;
}

+ (unint64_t)totalFrames:(id)frames
{
  framesCopy = frames;
  v4 = AudioData.sampleCount.getter();

  return v4;
}

- (SRAudioDecoder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ExclaveAudioFormat
- (_TtC22CoreAudioOrchestration18ExclaveAudioFormat)init;
- (_TtC22CoreAudioOrchestration18ExclaveAudioFormat)initWithSampleRate:(unsigned int)rate andChannels:(unsigned int)channels andFrameSize:(unsigned int)size;
- (id)initFormat:(id)format;
@end

@implementation ExclaveAudioFormat

- (id)initFormat:(id)format
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(ExclaveAudioFormatBase *)&v5 initFormat:format];
}

- (_TtC22CoreAudioOrchestration18ExclaveAudioFormat)initWithSampleRate:(unsigned int)rate andChannels:(unsigned int)channels andFrameSize:(unsigned int)size
{
  v5 = *&size;
  v6 = *&channels;
  v7 = *&rate;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(ExclaveAudioFormatBase *)&v9 initWithSampleRate:v7 andChannels:v6 andFrameSize:v5];
}

- (_TtC22CoreAudioOrchestration18ExclaveAudioFormat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
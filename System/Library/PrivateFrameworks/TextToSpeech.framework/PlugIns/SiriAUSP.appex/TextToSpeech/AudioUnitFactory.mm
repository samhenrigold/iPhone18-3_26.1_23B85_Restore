@interface AudioUnitFactory
- (_TtC8SiriAUSP16AudioUnitFactory)init;
- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)description error:(id *)error;
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation AudioUnitFactory

- (void)beginRequestWithExtensionContext:(id)context
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context);
  *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context) = context;
  contextCopy = context;
}

- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)description error:(id *)error
{
  sub_100001678();
  selfCopy = self;
  v6 = sub_100001668();
  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit) = v6;
  v8 = v6;

  v9 = v8;

  return v9;
}

- (_TtC8SiriAUSP16AudioUnitFactory)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioUnitFactory();
  return [(AudioUnitFactory *)&v3 init];
}

@end
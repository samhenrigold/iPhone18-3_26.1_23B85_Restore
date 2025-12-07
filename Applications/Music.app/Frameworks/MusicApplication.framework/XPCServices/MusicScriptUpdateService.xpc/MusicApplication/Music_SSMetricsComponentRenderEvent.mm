@interface Music_SSMetricsComponentRenderEvent
+ (NSString)Topic;
- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)init;
- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)initWithBodyDictionary:(id)dictionary;
- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler;
@end

@implementation Music_SSMetricsComponentRenderEvent

+ (NSString)Topic
{
  v2 = sub_1004BBE24();

  return v2;
}

- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  withCopy = with;
  selfCopy = self;
  v10 = sub_1004BBE24();
  [(Music_SSMetricsComponentRenderEvent *)selfCopy setEventType:v10];

  v11 = withCopy;
  v12 = selfCopy;

  sub_1000E5A6C(with, v12, v12, with, sub_1000E6370, v7);
}

- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent(self, a2, v2);
  return [(Music_SSMetricsComponentRenderEvent *)&v4 init];
}

- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)initWithBodyDictionary:(id)dictionary
{
  sub_1004BBC44();
  isa = sub_1004BBC24().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent(v5, v6, v7);
  v8 = [(Music_SSMetricsComponentRenderEvent *)&v10 initWithBodyDictionary:isa];

  return v8;
}

@end
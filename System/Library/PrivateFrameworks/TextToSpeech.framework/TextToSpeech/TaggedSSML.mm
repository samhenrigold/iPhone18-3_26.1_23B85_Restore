@interface TaggedSSML
- (NSArray)ssmlSnippets;
- (_TtC12TextToSpeech10TaggedSSML)init;
- (void)setSsmlSnippets:(id)snippets;
@end

@implementation TaggedSSML

- (NSArray)ssmlSnippets
{
  swift_beginAccess();
  type metadata accessor for VoiceTaggedSSMLSnippet();

  v2 = sub_1A957C4B8();

  return v2;
}

- (void)setSsmlSnippets:(id)snippets
{
  type metadata accessor for VoiceTaggedSSMLSnippet();
  v4 = sub_1A957C4C8();
  v5 = OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC12TextToSpeech10TaggedSSML)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
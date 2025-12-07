@interface AXLiveCaption
- (NSAttributedString)textWithConfidence;
- (NSDate)timeStamp;
- (_TtC17LiveTranscription13AXLiveCaption)init;
@end

@implementation AXLiveCaption

- (NSDate)timeStamp
{
  v3 = sub_2560533BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_timeStamp, v3);
  v7 = sub_25605339C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSAttributedString)textWithConfidence
{
  v3 = sub_25605335C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_256033338();
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText, v3);
  v7 = sub_25605383C();

  return v7;
}

- (_TtC17LiveTranscription13AXLiveCaption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
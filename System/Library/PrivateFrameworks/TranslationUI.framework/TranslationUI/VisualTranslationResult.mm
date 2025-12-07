@interface VisualTranslationResult
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (NSString)string;
- (NSUUID)uuid;
- (_TtC13TranslationUI23VisualTranslationResult)init;
@end

@implementation VisualTranslationResult

- (NSUUID)uuid
{
  v3 = sub_26F49D968();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid, v3, v5);
  v8 = sub_26F49D928();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)string
{

  v2 = sub_26F49F898();

  return v2;
}

- (CGPoint)topLeft
{
  v2 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft);
  v3 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  v2 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight);
  v3 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomLeft
{
  v2 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft);
  v3 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  v2 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight);
  v3 = *(self + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (_TtC13TranslationUI23VisualTranslationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
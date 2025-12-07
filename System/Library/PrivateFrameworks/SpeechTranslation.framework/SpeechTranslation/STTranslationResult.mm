@interface STTranslationResult
- (NSString)sourceText;
- (NSUUID)sourceIdentifier;
- (STTranslationResult)init;
- (STTranslationResult)initWithTranslation:(id)translation sourceText:(id)text isFinal:(BOOL)final;
- (STTranslationResult)initWithTranslation:(id)translation sourceText:(id)text isFinal:(BOOL)final identifier:(id)identifier sourceIdentifier:(id)sourceIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)setSourceText:(id)text;
- (void)set_identifier:(id)set_identifier;
- (void)set_sourceIdentifier:(id)identifier;
@end

@implementation STTranslationResult

- (void)set_identifier:(id)set_identifier
{
  v4 = *(self + OBJC_IVAR___STTranslationResult__identifier);
  *(self + OBJC_IVAR___STTranslationResult__identifier) = set_identifier;
  set_identifierCopy = set_identifier;
}

- (void)set_sourceIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR___STTranslationResult__sourceIdentifier);
  *(self + OBJC_IVAR___STTranslationResult__sourceIdentifier) = identifier;
  identifierCopy = identifier;
}

- (NSString)sourceText
{
  if (*(self + OBJC_IVAR___STTranslationResult_sourceText + 8))
  {

    v2 = sub_26B5E198C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSourceText:(id)text
{
  if (text)
  {
    v4 = sub_26B5E199C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___STTranslationResult_sourceText);
  *v6 = v4;
  v6[1] = v5;
}

- (NSUUID)sourceIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  STTranslationResult.sourceIdentifier.getter(v5);

  v7 = sub_26B5E15DC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_26B5E15AC();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (STTranslationResult)initWithTranslation:(id)translation sourceText:(id)text isFinal:(BOOL)final
{
  v7 = sub_26B5E199C();
  if (text)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_26B5E199C();
    v7 = v9;
    v13 = v12;
    v8 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return STTranslationResult.init(translation:sourceText:isFinal:)(v7, v8, v11, v13, final);
}

- (STTranslationResult)initWithTranslation:(id)translation sourceText:(id)text isFinal:(BOOL)final identifier:(id)identifier sourceIdentifier:(id)sourceIdentifier
{
  finalCopy = final;
  selfCopy = self;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23[-v10];
  v12 = sub_26B5E15DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_26B5E199C();
  v18 = v17;
  if (text)
  {
    text = sub_26B5E199C();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  sub_26B5E15BC();
  if (sourceIdentifier)
  {
    sub_26B5E15BC();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v13 + 56))(v11, v21, 1, v12);
  return STTranslationResult.init(translation:sourceText:isFinal:identifier:sourceIdentifier:)(v16, v18, text, v20, finalCopy, v15, v11);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  STTranslationResult.encode(with:)(coderCopy);
}

- (STTranslationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
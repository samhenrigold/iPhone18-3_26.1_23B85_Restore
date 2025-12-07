@interface SearchUIRFCardSectionRowModelProvider
- (SearchUIRFCardSectionRowModelProvider)init;
- (SearchUIRFCardSectionRowModelProvider)initWithCardSections:(id)sections;
- (id)rowModelFor:(id)for result:(id)result isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
@end

@implementation SearchUIRFCardSectionRowModelProvider

- (SearchUIRFCardSectionRowModelProvider)initWithCardSections:(id)sections
{
  if (sections)
  {
    sub_1DA173718(0, &unk_1EDAE5400, 0x1E69C9F08);
    sub_1DA25F324();
  }

  sub_1DA25F004();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___SearchUIRFCardSectionRowModelProvider_builderContext) = sub_1DA25EFF4();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchUIRFCardSectionRowModelProvider();
  return [(SearchUIRFCardSectionRowModelProvider *)&v5 init];
}

- (id)rowModelFor:(id)for result:(id)result isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  v12 = sub_1DA25F244();
  v14 = v13;
  forCopy = for;
  resultCopy = result;
  selfCopy = self;
  sub_1DA2383A0(forCopy, resultCopy, inline, id, v12, v14);
  v19 = v18;

  return v19;
}

- (SearchUIRFCardSectionRowModelProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
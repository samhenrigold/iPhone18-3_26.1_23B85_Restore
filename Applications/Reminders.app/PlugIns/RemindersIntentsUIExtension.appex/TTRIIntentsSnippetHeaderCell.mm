@interface TTRIIntentsSnippetHeaderCell
- (_TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setHeadingLabel:(id)label;
- (void)setTopConstraint:(id)constraint;
@end

@implementation TTRIIntentsSnippetHeaderCell

- (void)setTopConstraint:(id)constraint
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_topConstraint);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_topConstraint) = constraint;
  constraintCopy = constraint;
}

- (void)setHeadingLabel:(id)label
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_headingLabel);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_headingLabel) = label;
  labelCopy = label;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TTRIIntentsSnippetHeaderCell *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_viewModel];
  *v3 = 0;
  *(v3 + 1) = 0;

  sub_1000151B0();
}

- (_TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_10001FA84();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000153D4(style, identifier, v6);
}

@end
@interface ContactSearchViewCell
- (_TtC11CallsSearch21ContactSearchViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)callButtonTapped;
- (void)handleContentSizeCategoryDidChange:(id)change;
- (void)prepareForReuse;
- (void)videoButtonTapped;
@end

@implementation ContactSearchViewCell

- (_TtC11CallsSearch21ContactSearchViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1CFB8FA90();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1CFB6EDA0(style, identifier, v6);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ContactSearchViewCell *)&v3 prepareForReuse];
  *&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription] = 0;
}

- (void)callButtonTapped
{
  selfCopy = self;
  sub_1CFB71260(0, nullsub_1, &block_descriptor_7);
}

- (void)videoButtonTapped
{
  selfCopy = self;
  sub_1CFB71260(1, nullsub_1, &block_descriptor_2);
}

- (void)handleContentSizeCategoryDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC720, &qword_1CFB92190);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  if (change)
  {
    sub_1CFB8F5F0();
    v8 = sub_1CFB8F600();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1CFB8F600();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarView);
  selfCopy = self;
  traitCollection = [(ContactSearchViewCell *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = sub_1CFB8FDE0();
  [v10 setHidden_];
  sub_1CFB6F71C();

  sub_1CFB5DDDC(v7, &qword_1EC4EC720, &qword_1CFB92190);
}

@end
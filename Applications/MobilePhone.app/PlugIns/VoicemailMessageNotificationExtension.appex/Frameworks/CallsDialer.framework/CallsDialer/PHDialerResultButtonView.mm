@interface PHDialerResultButtonView
- (NSString)largeContentTitle;
- (PHDialerResultButtonView)initWithFrame:(CGRect)frame;
- (UILabel)primaryLabel;
- (void)configureWithPrimaryTitle:(id)title image:(id)image buttonType:(int64_t)type;
- (void)configureWithPrimaryTitle:(id)title secondaryTitle:(id)secondaryTitle buttonType:(int64_t)type;
- (void)configureWithPrimaryTitle:(id)title secondaryTitle:(id)secondaryTitle searchString:(id)string isNumberPriority:(BOOL)priority buttonType:(int64_t)type;
- (void)handleContentSizeCategoryDidChange:(id)change;
- (void)handlePress;
- (void)setPrimaryLabel:(id)label;
@end

@implementation PHDialerResultButtonView

- (UILabel)primaryLabel
{
  selfCopy = self;
  v3 = sub_29378();

  return v3;
}

- (void)setPrimaryLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel) = label;
  labelCopy = label;
}

- (void)configureWithPrimaryTitle:(id)title secondaryTitle:(id)secondaryTitle buttonType:(int64_t)type
{
  titleCopy = title;
  secondaryTitleCopy = secondaryTitle;
  selfCopy = self;
  DialerResultButtonView.configure(primaryTitle:secondaryTitle:buttonType:)(title, secondaryTitle, type);
}

- (void)configureWithPrimaryTitle:(id)title image:(id)image buttonType:(int64_t)type
{
  titleCopy = title;
  imageCopy = image;
  selfCopy = self;
  DialerResultButtonView.configure(primaryTitle:image:buttonType:)(title, image, type);
}

- (void)configureWithPrimaryTitle:(id)title secondaryTitle:(id)secondaryTitle searchString:(id)string isNumberPriority:(BOOL)priority buttonType:(int64_t)type
{
  if (string)
  {
    v12 = sub_2D7C8();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  titleCopy = title;
  secondaryTitleCopy = secondaryTitle;
  selfCopy = self;
  DialerResultButtonView.configure(primaryTitle:secondaryTitle:searchString:isNumberPriority:buttonType:)(title, secondaryTitle, v12, v14, priority, type);
}

- (void)handlePress
{
  selfCopy = self;
  DialerResultButtonView.handlePress()();
}

- (void)handleContentSizeCategoryDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CAE0, &qword_31890);
  off_50838(v5 - 8);
  v7 = &v11 - v6;
  if (change)
  {
    sub_2D588();
    v8 = sub_2D5A8();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_2D5A8();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_2AD04(v7);

  sub_2BB6C(v7, &qword_5CAE0, &qword_31890);
}

- (NSString)largeContentTitle
{
  selfCopy = self;
  DialerResultButtonView.largeContentTitle.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2D798();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PHDialerResultButtonView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
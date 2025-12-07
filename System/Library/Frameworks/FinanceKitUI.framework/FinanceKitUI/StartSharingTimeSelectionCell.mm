@interface StartSharingTimeSelectionCell
- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithCoder:(id)coder;
- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation StartSharingTimeSelectionCell

- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875EA80();
  sub_23863505C(style, v7, v8, specifier);
  v10 = v9;

  return v10;
}

- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v7 = sub_23875EA80();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_23863525C(style, v7, v9, v6);

  return v10;
}

- (_TtC12FinanceKitUI29StartSharingTimeSelectionCell)initWithCoder:(id)coder
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow) = 0;
  result = sub_23875F520();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  specifierCopy = specifier;
  selfCopy = self;
  sub_23863BB04();
}

@end
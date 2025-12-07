@interface NTKParmesanTimeView
- (void)layoutSubviews;
- (void)setComplicationVisibility:(unint64_t)visibility;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)timeFormatterTextDidChange:(id)change;
- (void)updateTimeLayout:(id)layout;
@end

@implementation NTKParmesanTimeView

- (void)setComplicationVisibility:(unint64_t)visibility
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanTimeView_complicationVisibility) = visibility;
  selfCopy = self;
  sub_23BF7C4C8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23BF7C200(selfCopy);
}

- (void)updateTimeLayout:(id)layout
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanTimeView_appearance);
  v5 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout) = layout;
  layoutCopy = layout;
  selfCopy = self;

  sub_23BF7D190();
  sub_23BF7C4C8();
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6 = sub_23BF4A264(&qword_27E1E0B80, &qword_23C002400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  if (date)
  {
    sub_23BFF8D80();
    v12 = sub_23BFF8D90();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_23BFF8D90();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v13 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanTimeView_timeFormatter);
  sub_23BF7D960(v11, v8);
  sub_23BFF8D90();
  v14 = *(v12 - 8);
  v15 = (*(v14 + 48))(v8, 1, v12);
  selfCopy = self;
  v17 = 0;
  if (v15 != 1)
  {
    v17 = sub_23BFF8D60();
    (*(v14 + 8))(v8, v12);
  }

  [v13 setOverrideDate_];

  sub_23BF4B2D4(v11, &qword_27E1E0B80, &qword_23C002400);
}

- (void)timeFormatterTextDidChange:(id)change
{
  selfCopy = self;
  sub_23BF7D448();
}

@end
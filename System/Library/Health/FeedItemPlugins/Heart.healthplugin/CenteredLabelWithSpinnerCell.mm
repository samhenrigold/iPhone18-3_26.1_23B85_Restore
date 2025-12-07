@interface CenteredLabelWithSpinnerCell
- (_TtC5Heart28CenteredLabelWithSpinnerCell)initWithCoder:(id)coder;
- (_TtC5Heart28CenteredLabelWithSpinnerCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
@end

@implementation CenteredLabelWithSpinnerCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  sub_29D69F37C(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = sub_29D9379E8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D937998();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937988();
  selfCopy = self;
  v19 = sub_29D937978();
  v20 = type metadata accessor for CenteredLabelWithSpinnerCell();
  v22.receiver = selfCopy;
  v22.super_class = v20;
  [(CenteredLabelWithSpinnerCell *)&v22 _bridgedUpdateConfigurationUsingState:v19];

  sub_29D9379D8();
  systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
  sub_29D9379B8();
  (*(v9 + 16))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  MEMORY[0x29ED6A980](v7);

  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CenteredLabelWithSpinnerCell();
  v2 = v6.receiver;
  [(CenteredLabelWithSpinnerCell *)&v6 prepareForReuse];
  contentView = [v2 contentView];
  type metadata accessor for CenteredLabelWithSpinnerContentView();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner);

    [v5 startAnimating];
  }

  else
  {
    v5 = v2;
    v2 = contentView;
  }
}

- (_TtC5Heart28CenteredLabelWithSpinnerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  v9 = type metadata accessor for CenteredLabelWithSpinnerCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(CenteredLabelWithSpinnerCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC5Heart28CenteredLabelWithSpinnerCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CenteredLabelWithSpinnerCell();
  coderCopy = coder;
  v6 = [(CenteredLabelWithSpinnerCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
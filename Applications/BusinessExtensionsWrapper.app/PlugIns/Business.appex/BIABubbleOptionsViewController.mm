@interface BIABubbleOptionsViewController
- (_TtC8Business30BIABubbleOptionsViewController)initWithCoder:(id)coder;
- (_TtC8Business30BIABubbleOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation BIABubbleOptionsViewController

- (_TtC8Business30BIABubbleOptionsViewController)initWithCoder:(id)coder
{
  v4 = sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  v9 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController__shouldBeVisible;
  v12[15] = 0;
  sub_1000ABC0C();
  (*(v5 + 32))(self + v10, v7, v4);
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (_TtC8Business30BIABubbleOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
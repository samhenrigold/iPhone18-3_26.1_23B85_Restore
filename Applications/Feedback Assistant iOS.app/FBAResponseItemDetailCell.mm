@interface FBAResponseItemDetailCell
- (UIStackView)questionGroupsStack;
- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setContentItem:(id)item;
@end

@implementation FBAResponseItemDetailCell

- (UIStackView)questionGroupsStack
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)awakeFromNib
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)setContentItem:(id)item
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = item;
  itemCopy = item;
  selfCopy = self;

  sub_100074B88();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000759B4(selfCopy, v2);
}

- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = swift_unknownObjectWeakInit();
    v6 = 0;
    *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAResponseItemDetailCell(v7, v8);
  v9 = [(FBAResponseItemDetailCell *)&v11 initWithStyle:style reuseIdentifier:v6];

  return v9;
}

- (_TtC18Feedback_Assistant25FBAResponseItemDetailCell)initWithCoder:(id)coder
{
  v5 = swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FBAResponseItemDetailCell(v5, v6);
  coderCopy = coder;
  v8 = [(FBAResponseItemDetailCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end
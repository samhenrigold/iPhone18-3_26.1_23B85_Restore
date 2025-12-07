@interface FBAFollowupDisplayTextCell
- (UILabel)displayText;
- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
@end

@implementation FBAFollowupDisplayTextCell

- (UILabel)displayText
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)awakeFromNib
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FBAFollowupDisplayTextCell(self, a2);
  v2 = v6.receiver;
  [(FBAFollowupDisplayTextCell *)&v6 awakeFromNib];
  [v2 setSelectionStyle:{3, v6.receiver, v6.super_class}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    secondaryLabelColor = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:secondaryLabelColor];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant26FBAFollowupDisplayTextCell_itemIdentifier);
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    swift_unknownObjectWeakInit();
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = (self + OBJC_IVAR____TtC18Feedback_Assistant26FBAFollowupDisplayTextCell_itemIdentifier);
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v8 = swift_unknownObjectWeakInit();
    v7 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for FBAFollowupDisplayTextCell(v8, v9);
  v11 = [(FBAFollowupDisplayTextCell *)&v13 initWithStyle:style reuseIdentifier:v7];

  return v11;
}

- (_TtC18Feedback_Assistant26FBAFollowupDisplayTextCell)initWithCoder:(id)coder
{
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant26FBAFollowupDisplayTextCell_itemIdentifier);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for FBAFollowupDisplayTextCell(v6, v7);
  coderCopy = coder;
  v9 = [(FBAFollowupDisplayTextCell *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end
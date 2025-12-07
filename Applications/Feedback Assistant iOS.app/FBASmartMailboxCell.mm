@interface FBASmartMailboxCell
+ (NSString)reuseIdentifier;
- (BOOL)isHighlighted;
- (UIImageView)filterImage;
- (UILabel)countLabel;
- (UILabel)titleLabel;
- (_TtC18Feedback_Assistant19FBASmartMailboxCell)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
- (void)configureWithInbox:(id)inbox;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FBASmartMailboxCell

- (UILabel)titleLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIImageView)filterImage
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)countLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_1000885D0();
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  traitCollection = [(FBASmartMailboxCell *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  sub_100088824(preferredContentSizeCategory);
}

- (void)configureWithInbox:(id)inbox
{
  inboxCopy = inbox;
  selfCopy = self;
  sub_100088954(inboxCopy);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBASmartMailboxCell(self, a2);
  return [(FBASmartMailboxCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  selfCopy = self;
  sub_100089534(highlightedCopy, v5);
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for FBASmartMailboxCell(v6, v7);
  [(FBASmartMailboxCell *)&v8 setHighlighted:highlightedCopy];
}

- (_TtC18Feedback_Assistant19FBASmartMailboxCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for FBASmartMailboxCell(v8, v9);
  return [(FBASmartMailboxCell *)&v11 initWithFrame:x, y, width, height];
}

@end
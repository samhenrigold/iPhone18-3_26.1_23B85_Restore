@interface ContentSearchResultCollectionViewCell
- (_TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ContentSearchResultCollectionViewCell

- (_TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24A49C(selfCopy);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v2 = v5.receiver;
  [(ContentSearchResultCollectionViewCell *)&v5 prepareForReuse];
  sub_12F484();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots;
  sub_55AFC4(v4);
  [*&v2[v3] setHidden:{0, v5.receiver, v5.super_class}];
}

@end
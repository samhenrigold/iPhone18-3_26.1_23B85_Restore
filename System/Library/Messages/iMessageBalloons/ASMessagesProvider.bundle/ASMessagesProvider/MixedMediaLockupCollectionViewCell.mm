@interface MixedMediaLockupCollectionViewCell
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MixedMediaLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B97B4();
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell(0);
  v2 = v5.receiver;
  [(MixedMediaLockupCollectionViewCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView];
  sub_55AFC4(v4);
}

@end
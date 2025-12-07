@interface MixedMediaLockupCollectionViewCell
- (_TtC8AppStore9VideoView)accessibilityVideoView;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MixedMediaLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000DBBF8(selfCopy, v2);
}

- (_TtC8AppStore9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell(0);
  v2 = v4.receiver;
  [(MixedMediaLockupCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView];
  sub_1001B8FAC();
}

@end
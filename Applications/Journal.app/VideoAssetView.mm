@interface VideoAssetView
- (void)autoPlayEnabledStatusDidChange;
- (void)dealloc;
- (void)finishedPlayingWithNotification:(id)notification;
- (void)layoutSubviews;
@end

@implementation VideoAssetView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10009B908();
}

- (void)dealloc
{
  selfCopy = self;
  sub_100815D10();
  sub_1008167E0();
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView) = 0;

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for VideoAssetView(0);
  [(VideoAssetView *)&v5 dealloc];
}

- (void)autoPlayEnabledStatusDidChange
{
  selfCopy = self;
  sub_1008162CC();
}

- (void)finishedPlayingWithNotification:(id)notification
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_isAutoPlaying) = 0;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
  if (v3)
  {
    v4 = *&self->super.fallbackView[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
    selfCopy = self;
    v6 = sub_100021E80(v3, v4);
    v3(v6);

    sub_100004DF8(v3, v4);
  }
}

@end
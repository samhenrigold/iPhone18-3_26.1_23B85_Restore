@interface CarouselSinglePageLayout
- (void)displayScaleDidChange;
- (void)entityManagerDidChange;
- (void)updateIfNeeded;
- (void)updateMaskingEffects;
@end

@implementation CarouselSinglePageLayout

- (void)updateMaskingEffects
{
  selfCopy = self;
  sub_1A404C278();
}

- (void)displayScaleDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CarouselSinglePageLayout(self, a2);
  v2 = v4.receiver;
  displayScaleDidChange = [(CarouselSinglePageLayout *)&v4 displayScaleDidChange];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(displayScaleDidChange);
}

- (void)updateIfNeeded
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
  if (v2)
  {
    selfCopy = self;
    updateIfNeeded = [v2 updateIfNeeded];
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for CarouselSinglePageLayout(updateIfNeeded, v5);
    [(CarouselSinglePageLayout *)&v6 updateIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

- (void)entityManagerDidChange
{
  selfCopy = self;
  sub_1A404C528(selfCopy, v2);
}

@end
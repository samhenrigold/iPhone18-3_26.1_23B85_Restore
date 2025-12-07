@interface RPCCUICallRecordingView
- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)initWithFrame:(CGRect)frame;
- (void)isCountingDown:(BOOL)down;
- (void)setAudioOnly:(BOOL)only;
- (void)setContinuousSliderCornerRadius:(double)radius;
- (void)setCountdownState:(int64_t)state;
- (void)setGlyphVisible:(BOOL)visible;
- (void)setTimerLabel:(id)label;
- (void)setValueVisible:(BOOL)visible;
- (void)setupVideoEffectsPreviewForAppear;
- (void)teardownVideoEffectsPreviewForDisappear;
- (void)updateCallRecordingState:(int64_t)state;
@end

@implementation RPCCUICallRecordingView

- (void)setGlyphVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4 = *(&stru_68.size + (swift_isaMask & self->super.super.super.super.isa));
  selfCopy = self;
  v4(visibleCopy);
}

- (void)setValueVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4 = *(&stru_68.flags + (swift_isaMask & self->super.super.super.super.isa));
  selfCopy = self;
  v4(visibleCopy);
  v5 = 0.0;
  if (visibleCopy)
  {
    v5 = 1.0;
  }

  [(RPCCUICallRecordingView *)selfCopy setAlpha:v5];
}

- (void)setContinuousSliderCornerRadius:(double)radius
{
  v4 = *&stru_B8.segname[(swift_isaMask & self->super.super.super.super.isa) - 8];
  selfCopy = self;
  v4(radius);
}

- (void)isCountingDown:(BOOL)down
{
  downCopy = down;
  v4 = *(**(&self->super.super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 184);
  selfCopy = self;

  v4(downCopy);
}

- (void)updateCallRecordingState:(int64_t)state
{
  selfCopy = self;
  RPCCUICallRecordingView.updateCallRecordingState(_:)(state);
}

- (void)setCountdownState:(int64_t)state
{
  selfCopy = self;
  RPCCUICallRecordingView.setCountdownState(_:)(state);
}

- (void)setTimerLabel:(id)label
{
  v4 = sub_21C6C();
  v6 = v5;
  v7 = *(**(&self->super.super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 352);
  selfCopy = self;

  v7(v4, v6);
}

- (void)setupVideoEffectsPreviewForAppear
{
  selfCopy = self;
  RPCCUICallRecordingView.setupVideoEffectsPreviewForAppear()();
}

- (void)teardownVideoEffectsPreviewForDisappear
{
  selfCopy = self;
  RPCCUICallRecordingView.teardownVideoEffectsPreviewForDisappear()();
}

- (void)setAudioOnly:(BOOL)only
{
  onlyCopy = only;
  v4 = *(**(&self->super.super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 280);
  selfCopy = self;

  v4(onlyCopy);
}

- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
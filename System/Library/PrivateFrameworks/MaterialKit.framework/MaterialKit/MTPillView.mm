@interface MTPillView
- (MTPillView)init;
- (MTPillView)initWithFrame:(CGRect)frame;
- (MTPillView)initWithFrame:(CGRect)frame settings:(id)settings;
@end

@implementation MTPillView

- (MTPillView)initWithFrame:(CGRect)frame settings:(id)settings
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  v16.receiver = self;
  v16.super_class = MTPillView;
  height = [(MTPillView *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = MEMORY[0x277CCA8D8];
    objc_opt_class();
    v12 = [v11 bundleForClass:?];
    [settingsCopy cornerMask];
    v13 = [MEMORY[0x277D755B8] imageNamed:? inBundle:?];
    layer = [(MTPillView *)height layer];
    [v13 CGImage];
    [layer setCornerContents:?];
    [layer setCornerContentsCenter:?];
    [settingsCopy cornerRadius];
    [layer setCornerRadius:?];
    [layer setMasksToBounds:?];
  }

  return height;
}

- (MTPillView)initWithFrame:(CGRect)frame
{
  v4 = +[MTLumaDodgePillDomain rootSettings];
  v5 = [MTPillView initWithFrame:"initWithFrame:settings:" settings:?];

  return v5;
}

- (MTPillView)init
{
  v3 = +[MTLumaDodgePillDomain rootSettings];
  [v3 minWidth];
  [v3 height];
  v4 = [MTPillView initWithFrame:"initWithFrame:settings:" settings:?];

  return v4;
}

@end
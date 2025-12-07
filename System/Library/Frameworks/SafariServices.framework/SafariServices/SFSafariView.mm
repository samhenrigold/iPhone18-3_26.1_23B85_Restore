@interface SFSafariView
- (void)didMoveToWindow;
- (void)setTintColor:(id)color;
@end

@implementation SFSafariView

- (void)setTintColor:(id)color
{
  v8.receiver = self;
  v8.super_class = SFSafariView;
  [(SFSafariView *)&v8 setTintColor:color];
  if ((warnAboutTintColorIfNeeded_didWarningCheck & 1) == 0)
  {
    warnAboutTintColorIfNeeded_didWarningCheck = 1;
    if (__UIApplicationLinkedOnOrAfter())
    {
      v3 = dyld_program_minos_at_least();
      v4 = v3;
      v6 = WBS_LOG_CHANNEL_PREFIXOther(v3, v5);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v7)
        {
          [SFSafariView setTintColor:v6];
        }
      }

      else if (v7)
      {
        [SFSafariView setTintColor:v6];
      }
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SFSafariView;
  [(SFSafariView *)&v3 didMoveToWindow];
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] setNeedsUpdate];
}

@end
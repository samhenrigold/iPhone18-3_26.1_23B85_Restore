@interface HangHUDLine
- (HangHUDLine)initWithQueue:(id)queue processName:(id)name theme:(id)theme fontSize:(double)size lineDelegate:(id)delegate;
- (int64_t)statusForHangWithDuration:(double)duration timedOut:(BOOL)out;
- (void)nilifyCALayers;
- (void)setFontSize:(double)size;
- (void)update:(id)update options:(unint64_t)options;
@end

@implementation HangHUDLine

- (HangHUDLine)initWithQueue:(id)queue processName:(id)name theme:(id)theme fontSize:(double)size lineDelegate:(id)delegate
{
  queueCopy = queue;
  nameCopy = name;
  themeCopy = theme;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = HangHUDLine;
  v16 = [(HUDLine *)&v24 init];
  v18 = v16;
  if (v16)
  {
    [(HUDLine *)v16 setSpacing:sub_100029D98(v16, v17)];
    v19 = +[CATextLayer layer];
    processNameLayer = v18->_processNameLayer;
    v18->_processNameLayer = v19;

    [(CATextLayer *)v18->_processNameLayer setTruncationMode:kCATruncationEnd];
    if (qword_100067A20 != -1)
    {
      sub_100032284();
    }

    [(CATextLayer *)v18->_processNameLayer setFont:qword_100067A28];
    [(CATextLayer *)v18->_processNameLayer setFontSize:size];
    [(HUDLine *)v18 contentScaleForTexts];
    [(CATextLayer *)v18->_processNameLayer setContentsScale:?];
    [(CATextLayer *)v18->_processNameLayer setString:nameCopy];
    [(HUDLine *)v18 setVibrancyFilter:v18->_processNameLayer];
    v21 = +[HUDDurationLayer layer];
    durationLayer = v18->_durationLayer;
    v18->_durationLayer = v21;

    if (qword_100067A30 != -1)
    {
      sub_1000322D4();
    }

    [(HUDDurationLayer *)v18->_durationLayer setFont:qword_100067A38];
    [(HUDDurationLayer *)v18->_durationLayer setFontSize:size];
    [(HUDLine *)v18 contentScaleForTexts];
    [(HUDDurationLayer *)v18->_durationLayer setContentsScale:?];
    [(HUDDurationLayer *)v18->_durationLayer setAlignmentMode:kCAAlignmentRight];
    [(HUDDurationLayer *)v18->_durationLayer setQueue:queueCopy];
    [(HUDLine *)v18 setVibrancyFilter:v18->_durationLayer];
    [(HangHUDLine *)v18 addSublayer:v18->_processNameLayer];
    [(HangHUDLine *)v18 addSublayer:v18->_durationLayer];
    objc_storeStrong(&v18->_currentTheme, theme);
    [(HUDLine *)v18 setLineDelegate:delegateCopy];
    [(HUDLine *)v18 setKeyLayer:v18->_processNameLayer];
    [(HUDLine *)v18 setValueLayer:v18->_durationLayer];
  }

  return v18;
}

- (void)nilifyCALayers
{
  processNameLayer = self->_processNameLayer;
  self->_processNameLayer = 0;

  durationLayer = self->_durationLayer;
  self->_durationLayer = 0;
}

- (void)setFontSize:(double)size
{
  [(CATextLayer *)self->_processNameLayer setFontSize:?];
  durationLayer = self->_durationLayer;

  [(HUDDurationLayer *)durationLayer setFontSize:size];
}

- (int64_t)statusForHangWithDuration:(double)duration timedOut:(BOOL)out
{
  if (out)
  {
    return 3;
  }

  v14 = v8;
  v15 = v4;
  if (sub_10002A388())
  {
    +[HUDConfiguration sharedInstance];
  }

  else
  {
    +[HTPrefs sharedPrefs];
  }
  v12 = ;
  runloopHangTimeoutDurationMSec = [v12 runloopHangTimeoutDurationMSec];

  if (runloopHangTimeoutDurationMSec * 0.555555556 <= duration)
  {
    return 2;
  }

  else
  {
    return runloopHangTimeoutDurationMSec * 0.222222222 <= duration;
  }
}

- (void)update:(id)update options:(unint64_t)options
{
  updateCopy = update;
  updatesComplete = [(HUDLine *)self updatesComplete];
  if (!updatesComplete)
  {
    v8 = updateCopy;
    v9 = [(CATextLayer *)self->_processNameLayer animationForKey:@"foreground-color-fade-animation"];
    v10 = v9;
    if (v9)
    {
      v11 = sub_100003824(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to update a HUD line with an animation in progress!", v21, 2u);
      }
    }

    else
    {
      durationLayer = self->_durationLayer;
      [v8 hangDurationMS];
      v14 = v13;
      [(HUDDurationLayer *)self->_durationLayer hangDuration];
      [(HUDDurationLayer *)durationLayer setHangDuration:v15 > 0.0 animated:v14];
      [v8 hangDurationMS];
      v16 = [(HangHUDLine *)self statusForHangWithDuration:(options >> 1) & 1 timedOut:?];
      v17 = [(HUDTheme *)self->_currentTheme currentHangTextColorForStatus:v16];
      [(CATextLayer *)self->_processNameLayer setForegroundColor:v17];
      v18 = [(HUDDurationLayer *)self->_durationLayer setForegroundColor:v17];
      if (options)
      {
LABEL_12:

        goto LABEL_13;
      }

      v19 = sub_100003824(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100032378(v8);
      }

      [(HUDLine *)self setUpdatesComplete:1];
      v11 = [CABasicAnimation animationWithKeyPath:@"foregroundColor"];
      [v11 setRemovedOnCompletion:0];
      [v11 setFillMode:kCAFillModeForwards];
      [v11 setToValue:[(HUDTheme *)self->_currentTheme previousHangTextColorForStatus:v16]];
      [v11 setDuration:0.5];
      v20 = objc_alloc_init(HUDLineAnimationDelegate);
      [(HUDLineAnimationDelegate *)v20 setHudLine:self];
      [v11 setDelegate:v20];
      [(CATextLayer *)self->_processNameLayer addAnimation:v11 forKey:@"foreground-color-fade-animation"];
      [(HUDDurationLayer *)self->_durationLayer addAnimation:v11 forKey:@"foreground-color-fade-animation"];
    }

    goto LABEL_12;
  }

  v8 = sub_100003824(updatesComplete);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000323F4(self, v8);
  }

LABEL_13:
}

@end
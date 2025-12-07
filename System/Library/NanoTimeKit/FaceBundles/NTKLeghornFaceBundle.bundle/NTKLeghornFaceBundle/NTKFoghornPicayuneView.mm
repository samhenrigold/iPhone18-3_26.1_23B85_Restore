@interface NTKFoghornPicayuneView
- (NTKFoghornPicayuneView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
@end

@implementation NTKFoghornPicayuneView

- (NTKFoghornPicayuneView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v18.receiver = self;
  v18.super_class = NTKFoghornPicayuneView;
  v8 = [(CLKUITimeView *)&v18 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    v9 = [NTKFoghornTimeView alloc];
    objc_msgSend_screenBounds(deviceCopy, v10, v11);
    v13 = objc_msgSend_initWithFrame_forDevice_clockTimer_(v9, v12, deviceCopy, timerCopy);
    timeView = v8->_timeView;
    v8->_timeView = v13;

    objc_msgSend_setInset_(v8->_timeView, v15, 0);
    objc_msgSend_addSubview_(v8, v16, v8->_timeView);
  }

  return v8;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKFoghornPicayuneView;
  [(NTKFoghornPicayuneView *)&v8 layoutSubviews];
  v5 = objc_msgSend_bounds(self, v3, v4);
  MEMORY[0x23EEC0EA0](v5);
  objc_msgSend_setCenter_(self->_timeView, v6, v7);
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = NTKFoghornPicayuneView;
  [(CLKUITimeView *)&v24 setConfiguration:configurationCopy];
  v7 = objc_msgSend_layoutStyle(configurationCopy, v5, v6);
  objc_msgSend_setLayoutStyle_(self->_timeView, v8, v7);
  v11 = objc_msgSend_minutesColor(configurationCopy, v9, v10);
  objc_msgSend_setMinutesColor_(self->_timeView, v12, v11);

  v15 = objc_msgSend_secondsColor(configurationCopy, v13, v14);
  objc_msgSend_setSecondsColor_(self->_timeView, v16, v15);

  if (configurationCopy)
  {
    objc_msgSend_transform(configurationCopy, v17, v18);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
  }

  timeView = self->_timeView;
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  objc_msgSend_setTransform_(timeView, v17, v20);
}

- (void)setState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = NTKFoghornPicayuneView;
  [(CLKUITimeView *)&v6 setState:?];
  if (state)
  {
    if (state == 1)
    {
      objc_msgSend_setFrozen_(self->_timeView, v5, 1);
    }
  }

  else
  {
    objc_msgSend_setFrozen_(self->_timeView, v5, 0);
  }
}

- (void)setOverrideDate:(id)date
{
  v6.receiver = self;
  v6.super_class = NTKFoghornPicayuneView;
  dateCopy = date;
  [(CLKUITimeView *)&v6 setOverrideDate:dateCopy];
  objc_msgSend_setOverrideDate_duration_(self->_timeView, v5, dateCopy, 0.0, v6.receiver, v6.super_class);
}

@end
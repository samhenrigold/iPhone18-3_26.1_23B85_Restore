@interface NTKLeghornPicayuneView
+ (CGRect)_bezelViewRectForDevice:(id)device;
+ (CGSize)_bezelViewSizeForDevice:(id)device;
+ (double)_bezelViewScaleForDevice:(id)device;
+ (double)_miniClockScaleForDevice:(id)device;
- (NTKLeghornPicayuneView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
@end

@implementation NTKLeghornPicayuneView

+ (double)_miniClockScaleForDevice:(id)device
{
  v3 = objc_msgSend_sizeClass(device, a2, device);
  result = 0.6325;
  if (v3 != 9)
  {
    return 0.625;
  }

  return result;
}

+ (double)_bezelViewScaleForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_class();
  objc_msgSend__miniClockScaleForDevice_(v4, v5, deviceCopy);
  v7 = v6;

  return v7 * 1.12049113;
}

+ (CGSize)_bezelViewSizeForDevice:(id)device
{
  deviceCopy = device;
  objc_msgSend_screenBounds(deviceCopy, v5, v6);
  objc_msgSend_screenScale(deviceCopy, v7, v8);
  objc_msgSend__bezelViewScaleForDevice_(self, v9, deviceCopy);

  UICeilToScale();
  v11 = v10;
  UICeilToScale();
  v13 = v12;
  v14 = v11;
  result.height = v13;
  result.width = v14;
  return result;
}

+ (CGRect)_bezelViewRectForDevice:(id)device
{
  objc_msgSend__bezelViewSizeForDevice_(self, a2, device);
  v4 = v3;
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  result.size.height = v6;
  result.size.width = v4;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (NTKLeghornPicayuneView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v27.receiver = self;
  v27.super_class = NTKLeghornPicayuneView;
  v9 = [(CLKUITimeView *)&v27 initWithDevice:deviceCopy clockTimer:timerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_clockTimer, timer);
    v11 = objc_opt_class();
    objc_msgSend__bezelViewRectForDevice_(v11, v12, deviceCopy);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [NTKCircularBezelView alloc];
    v23 = objc_msgSend_initForDevice_frame_displayMode_(v21, v22, v10->_device, 5, v14, v16, v18, v20);
    bezelView = v10->_bezelView;
    v10->_bezelView = v23;

    objc_msgSend_addSubview_(v10, v25, v10->_bezelView);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_stop(self->_dataSource, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKLeghornPicayuneView;
  [(CLKUITimeView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = NTKLeghornPicayuneView;
  [(NTKLeghornPicayuneView *)&v55 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  objc_msgSend_setFrame_(self->_analogTimeView, v5, v6);
  objc_msgSend_layoutSubviews(self->_analogTimeView, v7, v8);
  objc_msgSend_bounds(self, v9, v10);
  objc_msgSend_setFrame_(self->_digitalTimeView, v11, v12);
  objc_msgSend_layoutSubviews(self->_digitalTimeView, v13, v14);
  objc_msgSend_screenBounds(self->_device, v15, v16);
  v18 = v17;
  v20 = v19;
  v21 = objc_opt_class();
  v24 = objc_msgSend_device(self, v22, v23);
  objc_msgSend__bezelViewRectForDevice_(v21, v25, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  objc_msgSend_setFrame_(self->_bezelView, v34, v35, v27, v29, v31, v33);
  objc_msgSend_center(self, v36, v37);
  objc_msgSend_setCenter_(self->_bezelView, v38, v39);
  objc_msgSend_layoutSubviews(self->_bezelView, v40, v41);
  v42 = objc_opt_class();
  v45 = objc_msgSend_device(self, v43, v44);
  objc_msgSend__digitalTimeViewScaleForDevice_(v42, v46, v45);
  v48 = v47;

  objc_msgSend_setFrame_(self->_digitalTimeView, v49, v50, 0.0, 0.0, v18 * v48, v20 * v48);
  objc_msgSend_center(self, v51, v52);
  objc_msgSend_setCenter_(self->_digitalTimeView, v53, v54);
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v96.receiver = self;
  v96.super_class = NTKLeghornPicayuneView;
  [(CLKUITimeView *)&v96 setConfiguration:configurationCopy];
  v7 = objc_msgSend_timeStyle(configurationCopy, v5, v6);
  if (v7)
  {
    v10 = v7;
    if (v7 == 1)
    {
      if (!self->_analogTimeView)
      {
        v11 = [NTKLeghornPicayuneHandsView alloc];
        v13 = objc_msgSend_initForDevice_(v11, v12, self->_device);
        analogTimeView = self->_analogTimeView;
        self->_analogTimeView = v13;

        objc_msgSend_bounds(self, v15, v16);
        objc_msgSend_setFrame_(self->_analogTimeView, v17, v18);
        objc_msgSend_addSubview_(self, v19, self->_analogTimeView);
      }

      digitalTimeView = self->_digitalTimeView;
      if (digitalTimeView)
      {
        objc_msgSend_removeFromSuperview(digitalTimeView, v8, v9);
        v21 = self->_digitalTimeView;
        self->_digitalTimeView = 0;
      }

      v22 = objc_msgSend_palette(configurationCopy, v8, v9);
      objc_msgSend_setPalette_(self->_analogTimeView, v23, v22);
    }

    else
    {
      v22 = NTKFoghornFaceBundleLogObject(v7, v8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_23BEE6B88(v10, v22);
      }
    }
  }

  else
  {
    v24 = self->_analogTimeView;
    if (v24)
    {
      objc_msgSend_removeFromSuperview(v24, v8, v9);
      v25 = self->_analogTimeView;
      self->_analogTimeView = 0;
    }

    if (!self->_digitalTimeView)
    {
      v26 = [NTKFoghornTimeView alloc];
      objc_msgSend_screenBounds(self->_device, v27, v28);
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      device = self->_device;
      clockTimer = self->_clockTimer;
      v41 = objc_msgSend_digitalLayoutStyle(configurationCopy, v39, v40);
      v43 = objc_msgSend_initWithFrame_forDevice_clockTimer_layout_(v26, v42, device, clockTimer, v41, v30, v32, v34, v36);
      v44 = self->_digitalTimeView;
      self->_digitalTimeView = v43;

      objc_msgSend_setInset_(self->_digitalTimeView, v45, 0);
      v48 = objc_msgSend_bounds(self, v46, v47);
      MEMORY[0x23EEC0EA0](v48);
      objc_msgSend_setCenter_(self->_digitalTimeView, v49, v50);
      objc_msgSend_addSubview_(self, v51, self->_digitalTimeView);
    }

    v52 = objc_msgSend_digitalLayoutStyle(configurationCopy, v8, v9);
    objc_msgSend_setLayoutStyle_(self->_digitalTimeView, v53, v52);
    v56 = objc_msgSend_palette(configurationCopy, v54, v55);
    v59 = objc_msgSend_timeMinutesColor(v56, v57, v58);
    objc_msgSend_setMinutesColor_(self->_digitalTimeView, v60, v59);

    v22 = objc_msgSend_palette(configurationCopy, v61, v62);
    v65 = objc_msgSend_timeSecondsColor(v22, v63, v64);
    objc_msgSend_setSecondsColor_(self->_digitalTimeView, v66, v65);
  }

  v69 = objc_msgSend_palette(configurationCopy, v67, v68);
  objc_msgSend_setColorPalette_(self->_bezelView, v70, v69);

  v71 = objc_opt_class();
  v74 = objc_msgSend_device(self, v72, v73);
  objc_msgSend__digitalTimeViewScaleForDevice_(v71, v75, v74);
  v77 = v76;

  CGAffineTransformMakeScale(&v95, v77, v77);
  v78 = self->_digitalTimeView;
  v94 = v95;
  objc_msgSend_setTransform_(v78, v79, &v94);
  v80 = objc_opt_class();
  v83 = objc_msgSend_device(self, v81, v82);
  objc_msgSend__analogTimeViewScaleForDevice_(v80, v84, v83);
  v86 = v85;

  CGAffineTransformMakeScale(&v93, v86, v86);
  v87 = self->_analogTimeView;
  v94 = v93;
  objc_msgSend_setTransform_(v87, v88, &v94);
  v91 = objc_msgSend_aodVibrancyEnabled(configurationCopy, v89, v90);
  objc_msgSend_setLiveSecondsInTritium_(self->_bezelView, v92, v91);
}

- (void)setState:(unint64_t)state
{
  v10.receiver = self;
  v10.super_class = NTKLeghornPicayuneView;
  [(CLKUITimeView *)&v10 setState:?];
  if (state == 1)
  {
    objc_msgSend__ensureDataSourceActive_(self, v5, 0);
    objc_msgSend_setFrozen_(self->_analogTimeView, v8, 1);
    objc_msgSend_setFrozen_(self->_digitalTimeView, v9, 1);
  }

  else if (state)
  {
    objc_msgSend__ensureDataSourceActive_(self, v5, 0);
  }

  else
  {
    objc_msgSend__ensureDataSourceActive_(self, v5, 1);
    objc_msgSend_setFrozen_(self->_analogTimeView, v6, 0);
    objc_msgSend_setFrozen_(self->_digitalTimeView, v7, 0);
  }
}

- (void)setOverrideDate:(id)date
{
  v7.receiver = self;
  v7.super_class = NTKLeghornPicayuneView;
  dateCopy = date;
  [(CLKUITimeView *)&v7 setOverrideDate:dateCopy];
  objc_msgSend_setOverrideDate_duration_(self->_digitalTimeView, v5, dateCopy, 0.0, v7.receiver, v7.super_class);
  objc_msgSend_setOverrideDate_duration_(self->_analogTimeView, v6, dateCopy, 0.0);
}

@end
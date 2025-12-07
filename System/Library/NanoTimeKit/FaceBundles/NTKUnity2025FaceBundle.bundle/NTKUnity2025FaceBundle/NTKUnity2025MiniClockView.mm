@interface NTKUnity2025MiniClockView
- (NTKUnity2025MiniClockView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)updateImageIfHourChanged:(id)changed;
@end

@implementation NTKUnity2025MiniClockView

- (NTKUnity2025MiniClockView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v27.receiver = self;
  v27.super_class = NTKUnity2025MiniClockView;
  v9 = [(CLKUIAnalogTimeView *)&v27 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v9)
  {
    v10 = objc_msgSend_imageWithName_(NTKUnity2025FaceBundle, v8, @"MiniClockHour00");
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = objc_msgSend_initWithImage_(v11, v12, v10);
    v14 = *(v9 + 74);
    *(v9 + 74) = v13;

    objc_msgSend_insertSubview_atIndex_(v9, v15, *(v9 + 74), 0);
    v18 = objc_msgSend_now(MEMORY[0x277CBB700], v16, v17);
    objc_msgSend_updateImageIfHourChanged_(v9, v19, v18);

    objc_initWeak(&location, v9);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_23C09CCCC;
    v24[3] = &unk_278BADF40;
    objc_copyWeak(&v25, &location);
    v21 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(timerCopy, v20, 0, v24, &unk_284EDCB00);
    v22 = *(v9 + 75);
    *(v9 + 75) = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  if (self->_token)
  {
    v4 = objc_msgSend_clockTimer(self, a2, v2);
    objc_msgSend_stopUpdatesForToken_(v4, v5, self->_token);
  }

  v6.receiver = self;
  v6.super_class = NTKUnity2025MiniClockView;
  [(CLKUITimeView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKUnity2025MiniClockView;
  [(CLKUIAnalogTimeView *)&v7 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  objc_msgSend_setFrame_(self->_view, v5, v6);
}

- (void)updateImageIfHourChanged:(id)changed
{
  v11 = 0;
  getHourAndMinuteFromDate(changed, &v11, &v10);
  v5 = v11;
  if (v11 != self->_hour)
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"MiniClockHour%ld%ld", v11 / 10, v11 % 10);
    v7 = objc_msgSend_imageWithName_(NTKUnity2025FaceBundle, v6, v9);
    objc_msgSend_setImage_(self->_view, v8, v7);
    self->_hour = v5;
  }
}

- (void)setConfiguration:(id)configuration
{
  v30[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v29.receiver = self;
  v29.super_class = NTKUnity2025MiniClockView;
  [(CLKUIAnalogTimeView *)&v29 setConfiguration:configurationCopy];
  v7 = objc_msgSend_greyscale(configurationCopy, v5, v6);
  v10 = objc_msgSend_layer(self->_view, v8, v9);
  v13 = v10;
  if (!v7)
  {
    objc_msgSend_setFilters_(v10, v11, MEMORY[0x277CBEBF8]);
    goto LABEL_5;
  }

  v14 = objc_msgSend_filters(v10, v11, v12);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17 != 1)
  {
    v13 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v18, *MEMORY[0x277CDA2C0]);
    v28[2] = xmmword_23C0A0A40;
    v28[3] = unk_23C0A0A50;
    v28[4] = xmmword_23C0A0A60;
    v28[0] = xmmword_23C0A0A20;
    v28[1] = unk_23C0A0A30;
    v20 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v19, v28, "{CAColorMatrix=ffffffffffffffffffff}");
    objc_msgSend_setValue_forKey_(v13, v21, v20, *MEMORY[0x277CDA440]);

    v30[0] = v13;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v30, 1);
    v26 = objc_msgSend_layer(self->_view, v24, v25);
    objc_msgSend_setFilters_(v26, v27, v23);

LABEL_5:
  }
}

@end
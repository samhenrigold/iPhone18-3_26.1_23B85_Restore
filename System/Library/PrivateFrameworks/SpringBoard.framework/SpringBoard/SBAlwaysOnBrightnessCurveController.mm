@interface SBAlwaysOnBrightnessCurveController
- (BOOL)isUsingAlwaysOnBrightnessCurve;
- (SBAlwaysOnBrightnessCurveController)init;
- (SBAlwaysOnBrightnessCurveController)initWithBrightnessSystemClient:(id)client;
- (void)setUseAlwaysOnBrightnessCurve:(BOOL)curve withRampDuration:(double)duration;
@end

@implementation SBAlwaysOnBrightnessCurveController

- (SBAlwaysOnBrightnessCurveController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CFD390]);
  v4 = [(SBAlwaysOnBrightnessCurveController *)self initWithBrightnessSystemClient:v3];

  return v4;
}

- (SBAlwaysOnBrightnessCurveController)initWithBrightnessSystemClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = SBAlwaysOnBrightnessCurveController;
  v6 = [(SBAlwaysOnBrightnessCurveController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_brightnessSystemClient, client);
    v7->_lock_useAlwaysOnBrightnessCurve = 0;
    [(SBAlwaysOnBrightnessCurveController *)v7 setUseAlwaysOnBrightnessCurve:0 withRampDuration:0.25];
  }

  return v7;
}

- (BOOL)isUsingAlwaysOnBrightnessCurve
{
  os_unfair_lock_lock(&self->_lock);
  lock_useAlwaysOnBrightnessCurve = self->_lock_useAlwaysOnBrightnessCurve;
  os_unfair_lock_unlock(&self->_lock);
  return lock_useAlwaysOnBrightnessCurve;
}

- (void)setUseAlwaysOnBrightnessCurve:(BOOL)curve withRampDuration:(double)duration
{
  curveCopy = curve;
  v18[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_useAlwaysOnBrightnessCurve = curveCopy;
  os_unfair_lock_unlock(&self->_lock);
  v17[0] = @"AOTState";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:curveCopy];
  v17[1] = @"AOTTransitionTime";
  v18[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v18[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = SBLogBacklight(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109634;
    v12[1] = curveCopy;
    v13 = 2048;
    durationCopy = duration;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "setUseAlwaysOnBrightnessCurve:%{BOOL}u duration:%.2fs set to %{public}@", v12, 0x1Cu);
  }

  [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:v9 forKey:@"CBAOTStateUpdate"];
}

@end
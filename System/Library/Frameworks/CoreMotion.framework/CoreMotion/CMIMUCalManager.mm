@interface CMIMUCalManager
- (CMIMUCalManager)init;
- (void)dealloc;
- (void)eraseStoreForParam:(int)param;
- (void)insertEstimate:(const SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec;
- (void)insertImpact:(const DeviceImpactEvent *)impact;
- (void)readAndLogforParam:(int)param;
@end

@implementation CMIMUCalManager

- (void)insertEstimate:(const SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec
{
  v5 = objc_msgSend__internal(self, a2, estimate);

  MEMORY[0x1EEE66B58](v5, sel__insertEstimate_intervalBeforeCurrentTimeSec_, estimate);
}

- (void)insertImpact:(const DeviceImpactEvent *)impact
{
  v4 = objc_msgSend__internal(self, a2, impact);

  MEMORY[0x1EEE66B58](v4, sel__insertImpact_, impact);
}

- (void)eraseStoreForParam:(int)param
{
  v3 = *&param;
  v4 = objc_msgSend__internal(self, a2, *&param);

  MEMORY[0x1EEE66B58](v4, sel__eraseStoreForParam_, v3);
}

- (void)readAndLogforParam:(int)param
{
  v3 = *&param;
  v4 = objc_msgSend__internal(self, a2, *&param);

  MEMORY[0x1EEE66B58](v4, sel__readAndLogforParam_, v3);
}

- (CMIMUCalManager)init
{
  v4.receiver = self;
  v4.super_class = CMIMUCalManager;
  v2 = [(CMIMUCalManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMIMUCalManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CMIMUCalManager;
  [(CMIMUCalManager *)&v3 dealloc];
}

@end
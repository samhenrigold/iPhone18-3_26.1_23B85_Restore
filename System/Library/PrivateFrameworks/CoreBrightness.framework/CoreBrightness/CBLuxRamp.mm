@interface CBLuxRamp
+ (id)luxRampStateToString:(int)string;
- (BOOL)shouldRampFromStartLux:(float)lux toTargetLux:(float)targetLux;
- (CBLuxRamp)initWithPolicy:(id)policy andLuxShape:(id)shape;
- (float)targetLux;
- (int)rampTimedFromLux:(float)lux toLux:(float)toLux atTime:(float)time forceRamp:(BOOL)ramp;
- (int)updateRampWithProgress:(float)progress;
- (int)updateTimedRamp:(float)ramp;
- (void)dealloc;
- (void)forceLux:(float)lux;
@end

@implementation CBLuxRamp

- (float)targetLux
{
  if ([(CBLuxRamp *)self rampIsRunning])
  {
    return self->_targetLux;
  }

  else
  {
    return self->_lux;
  }
}

- (CBLuxRamp)initWithPolicy:(id)policy andLuxShape:(id)shape
{
  selfCopy = self;
  v10 = a2;
  policyCopy = policy;
  shapeCopy = shape;
  v7.receiver = self;
  v7.super_class = CBLuxRamp;
  selfCopy = [(CBLuxRamp *)&v7 init];
  if (!selfCopy)
  {
    return 0;
  }

  selfCopy->_lux = NAN;
  selfCopy->_startTime = 0.0;
  selfCopy->_duration = 0.0;
  selfCopy->_targetLux = NAN;
  selfCopy->_startLux = NAN;
  selfCopy->_state = 1;
  v4 = MEMORY[0x1E69E5928](shapeCopy);
  selfCopy->_shape = v4;
  v5 = MEMORY[0x1E69E5928](policyCopy);
  selfCopy->_policy = v5;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_shape);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_policy).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBLuxRamp;
  [(CBLuxRamp *)&v3 dealloc];
}

- (void)forceLux:(float)lux
{
  self->_lux = lux;
  self->_targetLux = lux;
  self->_startLux = lux;
  self->_duration = 0.0;
}

- (int)updateRampWithProgress:(float)progress
{
  if (![(CBLuxRamp *)self rampIsRunning])
  {
    return self->_state;
  }

  *&v3 = progress;
  *&v4 = self->_startLux;
  *&v5 = self->_targetLux;
  [(CBCurveShape *)self->_shape interpolateProgress:v3 from:v4 toEnd:v5];
  self->_lux = v6;
  if (self->_targetLux <= self->_startLux)
  {
    v9 = self->_lux <= self->_targetLux;
  }

  else
  {
    v9 = self->_lux >= self->_targetLux;
  }

  v8 = 1;
  if (!v9)
  {
    v8 = progress >= 1.0;
  }

  if (!v8)
  {
    return 0;
  }

  self->_startTime = 0.0;
  self->_state = 1;
  return 3;
}

- (int)updateTimedRamp:(float)ramp
{
  if (self->_duration == 0.0)
  {
    return self->_state;
  }

  v5 = (ramp - self->_startTime) / self->_duration;
  if (ramp > ((self->_startTime + self->_duration) + 0.05))
  {
    v5 = 1.0;
  }

  *&v3 = v5;
  return [(CBLuxRamp *)self updateRampWithProgress:v3];
}

- (int)rampTimedFromLux:(float)lux toLux:(float)toLux atTime:(float)time forceRamp:(BOOL)ramp
{
  if (!ramp && ![(CBLuxRamp *)self shouldRampFromStartLux:*&lux toTargetLux:*&toLux])
  {
    return self->_state;
  }

  *&v6 = lux;
  [(CBLuxRampPolicy *)self->_policy cappedRampStartLux:v6];
  v20 = v7;
  *&v8 = toLux;
  [(CBLuxRampPolicy *)self->_policy cappedRampTargetLux:v8];
  v18 = v9;
  if (float_equal(v20, v9))
  {
    self->_lux = v18;
    self->_targetLux = v18;
    self->_startLux = v18;
    self->_duration = 0.0;
    self->_state = 1;
    return 3;
  }

  else
  {
    *&v10 = v18;
    if (v18 <= v20)
    {
      [(CBLuxRampPolicy *)self->_policy rampDownDuration];
    }

    else
    {
      [(CBLuxRampPolicy *)self->_policy rampUpDuration];
    }

    v15 = v11;
    self->_duration = v11;
    if ([(CBLuxRamp *)self rampIsRunning]&& vabds_f32(v18, v20) <= vabds_f32(self->_targetLux, self->_lux))
    {
      v14 = vabds_f32(self->_targetLux, self->_lux);
      v13 = vabds_f32(self->_targetLux, self->_startLux);
      if (v13 != 0.0)
      {
        self->_duration = v15 * (v14 / v13);
      }
    }

    self->_startTime = time;
    self->_lux = v20;
    self->_startLux = v20;
    self->_targetLux = v18;
    self->_state = 0;
    return 2;
  }
}

- (BOOL)shouldRampFromStartLux:(float)lux toTargetLux:(float)targetLux
{
  if (float_equal(lux, targetLux))
  {
    return 0;
  }

  if ([(CBLuxRamp *)self rampIsRunning]&& float_equal(targetLux, self->_targetLux))
  {
    return 0;
  }

  if ([(CBLuxRamp *)self rampIsRunning]&& ((targetLux - self->_lux) * (self->_targetLux - self->_lux)) < 0.0)
  {
    return 1;
  }

  *&v4 = self->_lux;
  if (targetLux <= lux)
  {
    [(CBLuxRampPolicy *)self->_policy rampDownLuxDeltaThresholdFor:v4];
  }

  else
  {
    [(CBLuxRampPolicy *)self->_policy rampUpLuxDeltaThresholdFor:v4];
  }

  return vabds_f32(targetLux, lux) >= v5;
}

+ (id)luxRampStateToString:(int)string
{
  switch(string)
  {
    case 0:
      return @"Running";
    case 1:
      return @"Idle";
    case 2:
      return @"Started";
    case 3:
      return @"Finished";
  }

  return @"Unknown";
}

@end
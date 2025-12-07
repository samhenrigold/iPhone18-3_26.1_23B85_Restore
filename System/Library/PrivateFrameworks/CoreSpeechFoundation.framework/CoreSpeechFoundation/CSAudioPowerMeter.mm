@interface CSAudioPowerMeter
- (CSAudioPowerMeter)initWithSampleRate:(float)rate;
- (double)_linearToDB:(double)b;
- (void)_reset;
- (void)_savePeaks:(int)peaks averagePower:(int)power maxSample:(int)sample;
- (void)_scaleDecayConstants:(int)constants;
- (void)_zapgremlins:(double *)_zapgremlins;
- (void)processFloatBuffer:(const float *)buffer stride:(int)stride inFrameToProcess:(int)process;
- (void)processShortBuffer:(const signed __int16 *)buffer stride:(int)stride inFrameToProcess:(int)process;
@end

@implementation CSAudioPowerMeter

- (void)_reset
{
  *&self->_decay1 = xmmword_1DDB1F7F0;
  self->_averagePowerI = 0;
  self->_averagePowerF = 0.0;
  self->_peakHoldCount = 0;
  self->_previousBlockSize = 0;
  self->_averagePowerPeak = 0.0;
  self->_peak = 0.0;
  self->_maxPeak = 0.0;
  self->_instantaneousMode = 1;
}

- (void)_zapgremlins:(double *)_zapgremlins
{
  v3 = *_zapgremlins;
  v4 = fabs(*_zapgremlins);
  if (v4 >= 1.0e15 || v4 <= 1.0e-15)
  {
    v3 = 0.0;
  }

  *_zapgremlins = v3;
}

- (double)_linearToDB:(double)b
{
  if (b <= 0.000001)
  {
    return -120.0;
  }

  [(CSAudioPowerMeter *)self _ampToDB:?];
  return result;
}

- (void)_savePeaks:(int)peaks averagePower:(int)power maxSample:(int)sample
{
  v5 = vcvtd_n_f64_s32(sample, 0xFuLL);
  self->_averagePowerI = power;
  instantaneousMode = self->_instantaneousMode;
  if (instantaneousMode)
  {
    v7 = v5;
  }

  else
  {
    peak = self->_peak;
    v7 = v5;
    if (peak > v7)
    {
      v7 = peak + (v7 - peak) * self->_decay;
    }
  }

  self->_peak = v7;
  v9 = vcvtd_n_f64_s32(power, 0x1EuLL);
  v10 = self->_peakHoldCount + peaks;
  self->_peakHoldCount = v10;
  maxPeak = self->_maxPeak;
  if (v10 >= (self->_sampleRate * 0.907029478))
  {
    maxPeak = maxPeak - maxPeak * self->_peakDecay;
    self->_maxPeak = maxPeak;
  }

  v12 = sqrt(v9);
  if (maxPeak < v7)
  {
    self->_maxPeak = v7;
    self->_peakHoldCount = 0;
    maxPeak = v7;
  }

  v13 = v12 * 1.41421356;
  if (!instantaneousMode)
  {
    averagePowerPeak = self->_averagePowerPeak;
    if (averagePowerPeak > v13)
    {
      v13 = averagePowerPeak + (v13 - averagePowerPeak) * self->_decay;
    }
  }

  self->_averagePowerPeak = v13;
  if (v13 > maxPeak)
  {
    self->_averagePowerPeak = maxPeak;
  }
}

- (void)processFloatBuffer:(const float *)buffer stride:(int)stride inFrameToProcess:(int)process
{
  if (process < 1)
  {
    return;
  }

  [(CSAudioPowerMeter *)self _scaleDecayConstants:*&process];
  averagePowerF = self->_averagePowerF;
  v11 = process + 1;
  v12 = 0.0;
  do
  {
    v13 = *buffer;
    if (*buffer < 0.0)
    {
      v13 = -*buffer;
    }

    if (v13 > v12)
    {
      v12 = v13;
    }

    averagePowerF = averagePowerF + ((v13 * v13) - averagePowerF) * 0.03;
    buffer += stride;
    --v11;
  }

  while (v11 > 1);
  [(CSAudioUnitMeterClipping *)self->_clipping peakValueSinceLastCall];
  if (v12 > *&v14)
  {
    *&v14 = v12;
    [(CSAudioUnitMeterClipping *)self->_clipping setPeakValueSinceLastCall:v14];
  }

  v15 = __fpclassifyd(averagePowerF);
  if (v15 == 2)
  {
    [(CSAudioUnitMeterClipping *)self->_clipping setSawInfinity:1];
    goto LABEL_15;
  }

  if (v15 == 1)
  {
    [(CSAudioUnitMeterClipping *)self->_clipping setSawNotANumber:1];
LABEL_15:
    averagePowerF = 0.0;
    v12 = 1.0;
  }

  self->_averagePowerF = averagePowerF;
  instantaneousMode = self->_instantaneousMode;
  if (instantaneousMode)
  {
    v17 = v12;
  }

  else
  {
    peak = self->_peak;
    v17 = v12;
    if (peak > v12)
    {
      v17 = peak + (v17 - peak) * self->_decay;
    }
  }

  self->_peak = v17;
  maxPeak = self->_maxPeak;
  v20 = self->_peakHoldCount + process;
  self->_peakHoldCount = v20;
  if (v20 >= (self->_sampleRate * 0.907029478))
  {
    maxPeak = maxPeak - maxPeak * self->_peakDecay;
    self->_maxPeak = maxPeak;
  }

  v21 = sqrt(averagePowerF);
  if (maxPeak < v17)
  {
    self->_maxPeak = v17;
    self->_peakHoldCount = 0;
    maxPeak = v17;
  }

  v22 = v21 * 1.41421356;
  if (!instantaneousMode)
  {
    averagePowerPeak = self->_averagePowerPeak;
    if (averagePowerPeak > v22)
    {
      v22 = averagePowerPeak + (v22 - averagePowerPeak) * self->_decay;
    }
  }

  self->_averagePowerPeak = v22;
  if (v22 > maxPeak)
  {
    self->_averagePowerPeak = maxPeak;
  }

  [(CSAudioPowerMeter *)self _zapgremlins:&self->_averagePowerF];
  [(CSAudioPowerMeter *)self _zapgremlins:&self->_averagePowerPeak];
  [(CSAudioPowerMeter *)self _zapgremlins:&self->_peak];

  [(CSAudioPowerMeter *)self _zapgremlins:&self->_maxPeak];
}

- (void)processShortBuffer:(const signed __int16 *)buffer stride:(int)stride inFrameToProcess:(int)process
{
  if (process >= 1)
  {
    v6 = *&process;
    [(CSAudioPowerMeter *)self _scaleDecayConstants:*&process];
    LODWORD(v10) = 0;
    LODWORD(v11) = self->_averagePowerI;
    v12 = v6 + 1;
    do
    {
      v13 = *buffer;
      if (v13 < 0)
      {
        v13 = -v13;
      }

      if (v10 <= v13)
      {
        v10 = v13;
      }

      else
      {
        v10 = v10;
      }

      v11 = (v11 + ((v13 * v13 - v11) >> 5));
      --v12;
      buffer += stride;
    }

    while (v12 > 1);

    [(CSAudioPowerMeter *)self _savePeaks:v6 averagePower:v11 maxSample:v10];
  }
}

- (void)_scaleDecayConstants:(int)constants
{
  if (self->_previousBlockSize != constants)
  {
    constantsCopy = constants;
    self->_peakDecay = 1.0 - pow(self->_peakDecay1, constants);
    self->_decay = 1.0 - pow(self->_decay1, constantsCopy);
    self->_previousBlockSize = constants;
  }
}

- (CSAudioPowerMeter)initWithSampleRate:(float)rate
{
  v7.receiver = self;
  v7.super_class = CSAudioPowerMeter;
  v4 = [(CSAudioPowerMeter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CSAudioPowerMeter *)v4 _reset];
    v5->_sampleRate = rate;
  }

  return v5;
}

@end
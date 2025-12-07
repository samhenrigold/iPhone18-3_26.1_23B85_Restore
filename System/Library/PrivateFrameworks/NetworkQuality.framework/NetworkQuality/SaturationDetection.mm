@interface SaturationDetection
- (BOOL)add:(float)add;
- (SaturationDetection)initWithConfig:(id)config withScalingFactor:(float)factor;
@end

@implementation SaturationDetection

- (SaturationDetection)initWithConfig:(id)config withScalingFactor:(float)factor
{
  configCopy = config;
  v23.receiver = self;
  v23.super_class = SaturationDetection;
  v8 = [(SaturationDetection *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, config);
    v9->_scalingFactor = factor;
    v10 = [MovingAverage alloc];
    movingAveragePeriod = [(NetworkQualityConfiguration *)v9->_config movingAveragePeriod];
    *&v12 = v9->_scalingFactor;
    v13 = [(MovingAverage *)v10 initWithSize:movingAveragePeriod withScalingFactor:v12];
    movingAvg = v9->_movingAvg;
    v9->_movingAvg = v13;

    v15 = [MovingAverage alloc];
    v16 = [(NetworkQualityConfiguration *)v9->_config movingAveragePeriod]/ 0.2;
    v17 = v16;
    *&v16 = v9->_scalingFactor;
    v18 = [(MovingAverage *)v15 initWithSize:v17 withScalingFactor:v16];
    instAvg = v9->_instAvg;
    v9->_instAvg = v18;

    v9->_instValues = 0;
    *&v9->_currentAverage = 0;
    v9->_saturated = 0;
    v20 = [MEMORY[0x277CBEAA8] now];
    start = v9->_start;
    v9->_start = v20;
  }

  return v9;
}

- (BOOL)add:(float)add
{
  v59 = *MEMORY[0x277D85DE8];
  [(MovingAverage *)self->_instAvg add:self->_saturated overflow:?];
  v5 = self->_instValues + 1;
  self->_instValues = v5;
  if (0xCCCCCCCCCCCCCCCDLL * v5 + 0x1999999999999999 > 0x3333333333333332)
  {
LABEL_2:
    LOBYTE(v6) = 0;
    return v6;
  }

  v7 = v4;
  [(MovingAverage *)self->_movingAvg add:0 overflow:?];
  self->_currentAverage = v8;
  getStdDev = [(MovingAverage *)self->_movingAvg getStdDev];
  v12 = v11;
  if (v11 < 0.0)
  {
    netqual_log_init(getStdDev, v10);
    v13 = os_log_netqual;
    v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      return v6;
    }

    name = self->name;
    v15 = v13;
    uTF8String = [(NSString *)name UTF8String];
    v41 = 136316162;
    scalingFactor = self->_scalingFactor;
    v42 = "[SaturationDetection add:]";
    v43 = 1024;
    v44 = 162;
    v45 = 2080;
    v46 = uTF8String;
    v47 = 2048;
    v48 = (v7 / scalingFactor);
    v49 = 2048;
    v50 = v12;
    _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - %s - Not enough samples with instantaneous moving average val %.2f stddev=%.2f", &v41, 0x30u);

    goto LABEL_2;
  }

  v18 = v11 / self->_currentAverage;
  standardDeviationThreshold = [(NetworkQualityConfiguration *)self->_config standardDeviationThreshold];
  v20 = standardDeviationThreshold / 100.0;
  netqual_log_init(standardDeviationThreshold, v21);
  v22 = os_log_netqual;
  v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v18 > v20)
  {
    if (!v6)
    {
      return v6;
    }

    v23 = self->name;
    v24 = v22;
    uTF8String2 = [(NSString *)v23 UTF8String];
    v26 = self->_scalingFactor;
    v27 = (v7 / v26);
    v28 = (v12 / v26);
    v29 = ((v12 / self->_currentAverage) * 100.0);
    v30 = [MEMORY[0x277CBEAA8] now];
    [v30 timeIntervalSinceDate:self->_start];
    v32 = v31;
    v33 = (v12 / self->_currentAverage);
    standardDeviationThreshold2 = [(NetworkQualityConfiguration *)self->_config standardDeviationThreshold];
    v41 = 136317186;
    v42 = "[SaturationDetection add:]";
    v43 = 1024;
    v44 = 177;
    v45 = 2080;
    v46 = uTF8String2;
    v47 = 2048;
    v48 = v27;
    v49 = 2048;
    v50 = v28;
    v51 = 2048;
    v52 = v29;
    v53 = 2048;
    v54 = v32;
    v55 = 2048;
    v56 = v33;
    v57 = 2048;
    v58 = (standardDeviationThreshold2 / 100.0);
    _os_log_impl(&dword_25B962000, v24, OS_LOG_TYPE_DEFAULT, "%s:%u - %s - Didn't yet reach stability with instantaneous val %.2f stddev %.2f (%.2f %%), running for %.2f sec std/avg: %.2f thres: %.2f", &v41, 0x58u);

    goto LABEL_2;
  }

  if (v6)
  {
    v35 = self->name;
    v36 = (v7 / self->_scalingFactor);
    v37 = (v12 / self->_currentAverage);
    config = self->_config;
    v39 = v22;
    v41 = 136316418;
    v42 = "[SaturationDetection add:]";
    v43 = 1024;
    v44 = 168;
    v45 = 2112;
    v46 = v35;
    v47 = 2048;
    v48 = v36;
    v49 = 2048;
    v50 = v37;
    v51 = 2048;
    v52 = ([(NetworkQualityConfiguration *)config standardDeviationThreshold]/ 100.0);
    _os_log_impl(&dword_25B962000, v39, OS_LOG_TYPE_DEFAULT, "%s:%u - %@ - Reached stability with last instantaneous val %.2f std/avg: %.2f thres: %.2f", &v41, 0x3Au);
  }

  self->_saturationValue = self->_currentAverage;
  LOBYTE(v6) = 1;
  self->_saturated = 1;
  return v6;
}

@end
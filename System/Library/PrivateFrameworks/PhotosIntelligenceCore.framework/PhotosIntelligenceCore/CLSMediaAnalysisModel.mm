@interface CLSMediaAnalysisModel
+ (unint64_t)baseMediaAnalysisVersionWithMediaAnalysisVersion:(unint64_t)version;
- (CLSMediaAnalysisModel)initWithMediaAnalysisVersion:(unint64_t)version;
- (void)setupVersion33;
- (void)setupVersion59;
- (void)setupVersion61;
@end

@implementation CLSMediaAnalysisModel

- (void)setupVersion61
{
  self->_version = 61;
  *&self->_videoScoreThresholdToBeInteresting = xmmword_25E63DAB0;
  *&self->_autoplaySuggestionScoreThresholdToBeInteresting = xmmword_25E63DAC0;
  self->_settlingEffectScoreNode = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"SettlingEffectScore" operatingPoint:0.7 highPrecisionOperatingPoint:0.75 highRecallOperatingPoint:0.65];

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion59
{
  self->_version = 59;
  *&self->_videoScoreThresholdToBeInteresting = xmmword_25E63DAB0;
  *&self->_autoplaySuggestionScoreThresholdToBeInteresting = xmmword_25E63DAC0;
  self->_settlingEffectScoreNode = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"SettlingEffectScore" operatingPoint:0.7 highPrecisionOperatingPoint:0.75 highRecallOperatingPoint:0.65];

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion33
{
  self->_version = 33;
  *&self->_videoScoreThresholdToBeInteresting = xmmword_25E63DAB0;
  *&self->_autoplaySuggestionScoreThresholdToBeInteresting = xmmword_25E63DAC0;
}

- (CLSMediaAnalysisModel)initWithMediaAnalysisVersion:(unint64_t)version
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CLSMediaAnalysisModel;
  v4 = [(CLSMediaAnalysisModel *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (version < 0x3D)
    {
      if (version < 0x3B)
      {
        if (version < 0x21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v6 = objc_opt_class();
            *buf = 67109378;
            versionCopy = version;
            v11 = 2112;
            v12 = v6;
            _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
          }

          return 0;
        }

        else
        {
          [(CLSMediaAnalysisModel *)v4 setupVersion33];
        }
      }

      else
      {
        [(CLSMediaAnalysisModel *)v4 setupVersion59];
      }
    }

    else
    {
      [(CLSMediaAnalysisModel *)v4 setupVersion61];
    }
  }

  return v5;
}

+ (unint64_t)baseMediaAnalysisVersionWithMediaAnalysisVersion:(unint64_t)version
{
  v3 = 59;
  v4 = 33;
  if (version < 0x21)
  {
    v4 = 0;
  }

  if (version <= 0x3A)
  {
    v3 = v4;
  }

  if (version <= 0x3C)
  {
    return v3;
  }

  else
  {
    return 61;
  }
}

@end
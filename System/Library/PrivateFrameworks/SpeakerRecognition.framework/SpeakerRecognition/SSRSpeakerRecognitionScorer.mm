@interface SSRSpeakerRecognitionScorer
+ (id)createVoiceScorersWithVoiceProfiles:(id)profiles withConfigFile:(id)file withResourceFile:(id)resourceFile withOffsetsType:(unint64_t)type forRetraining:(BOOL)retraining;
- (BOOL)resetScorerWithModelFilePath:(id)path;
- (NSString)psrConfigFilePath;
- (NSString)psrConfigRoot;
- (SSRSpeakerRecognitionScorer)initWithProfileID:(id)d withModelFile:(id)file withConfigFile:(id)configFile withResourceFile:(id)resourceFile configData:(id)data memoryIndex:(id)index withOffsetsType:(unint64_t)type forRetraining:(BOOL)self0;
- (double)_getFloatValueForNDAPIConfigOption:(id)option defaultValue:(double)value;
- (double)_getFloatValueFromConfigurationName:(id)name defaultTo:(double)to;
- (float)analyzeSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type;
- (float)analyzeSuperVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type;
- (float)normalizedScoreFromRawScore:(float)score forScoreType:(unint64_t)type;
- (float)scoreSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type;
- (id)_getOptionValueFromConfigurationName:(id)name;
- (id)_getStringValueFromConfigurationName:(id)name defaultTo:(id)to;
- (id)_getValueForNDAPIConfigOption:(id)option;
- (id)getSpeakerVectorAtIndex:(unint64_t)index;
- (int)_getIntValueFromConfigurationName:(id)name defaultTo:(int)to;
- (unint64_t)getSATVectorCount;
- (void)dealloc;
- (void)deleteVectorAtIndex:(int)index;
- (void)updateSAT;
@end

@implementation SSRSpeakerRecognitionScorer

- (id)_getValueForNDAPIConfigOption:(id)option
{
  optionCopy = option;
  v5 = optionCopy;
  novDetect = self->_novDetect;
  if (novDetect)
  {
    [optionCopy UTF8String];
    v7 = nd_getoption();
    if (v7)
    {
      novDetect = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    }

    else
    {
      novDetect = 0;
    }
  }

  return novDetect;
}

- (double)_getFloatValueForNDAPIConfigOption:(id)option defaultValue:(double)value
{
  v5 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:option];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    value = v7;
  }

  return value;
}

- (id)_getStringValueFromConfigurationName:(id)name defaultTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  toCopy = to;
  v8 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:nameCopy];
  v9 = v8;
  if (!v8)
  {
    v10 = *MEMORY[0x277D01970];
    v11 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
    v9 = toCopy;
    if (v11)
    {
      v14 = 136315650;
      v15 = "[SSRSpeakerRecognitionScorer _getStringValueFromConfigurationName:defaultTo:]";
      v16 = 2114;
      v17 = nameCopy;
      v18 = 2114;
      v19 = toCopy;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}@", &v14, 0x20u);
      v9 = toCopy;
    }
  }

  v12 = v9;

  return v12;
}

- (int)_getIntValueFromConfigurationName:(id)name defaultTo:(int)to
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:nameCopy];
  v8 = v7;
  if (v7)
  {
    to = [v7 intValue];
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[SSRSpeakerRecognitionScorer _getIntValueFromConfigurationName:defaultTo:]";
      v13 = 2114;
      v14 = nameCopy;
      v15 = 1026;
      toCopy = to;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}d", &v11, 0x1Cu);
    }
  }

  return to;
}

- (double)_getFloatValueFromConfigurationName:(id)name defaultTo:(double)to
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:nameCopy];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    to = v9;
  }

  else
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[SSRSpeakerRecognitionScorer _getFloatValueFromConfigurationName:defaultTo:]";
      v14 = 2114;
      v15 = nameCopy;
      v16 = 2050;
      toCopy = to;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}f", &v12, 0x20u);
    }
  }

  return to;
}

- (id)_getOptionValueFromConfigurationName:(id)name
{
  v5 = 0;
  if (name)
  {
    if (self->_novDetect)
    {
      [name UTF8String];
      v5 = nd_getoption();
      if (v5)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      }
    }

    v3 = vars8;
  }

  return v5;
}

- (id)getSpeakerVectorAtIndex:(unint64_t)index
{
  indexCopy = index;
  v13 = *MEMORY[0x277D85DE8];
  if (self->_novDetect && (v4 = nd_sat_getspeakervector()) != 0)
  {
    if (*v4)
    {
      v5 = [MEMORY[0x277CBEA90] dataWithBytes:*v4 length:4 * *(v4 + 8)];
      goto LABEL_7;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SSRSpeakerRecognitionScorer getSpeakerVectorAtIndex:]";
      v11 = 1024;
      v12 = indexCopy;
      v8 = "%s ERR: vector data is nil for index %u";
LABEL_13:
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, v8, &v9, 0x12u);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SSRSpeakerRecognitionScorer getSpeakerVectorAtIndex:]";
      v11 = 1024;
      v12 = indexCopy;
      v8 = "%s ERR: ndspeakervector is nil for index %u";
      goto LABEL_13;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (NSString)psrConfigRoot
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"spid_frontend_sys_conf_root_node"];
  if (!v3)
  {
    v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"td_sr_frontend_sys_conf_root_node"];
    if (!v3)
    {
      v4 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        configFilePath = self->_configFilePath;
        v7 = 136315394;
        v8 = "[SSRSpeakerRecognitionScorer psrConfigRoot]";
        v9 = 2114;
        v10 = configFilePath;
        _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: td_sr_frontend_sys_conf_root_node option missing in %{public}@", &v7, 0x16u);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (NSString)psrConfigFilePath
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"spid_frontend_config_file"];
  if (!v3)
  {
    v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"td_sr_frontend_config_file"];
    if (!v3)
    {
      v4 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        configFilePath = self->_configFilePath;
        v7 = 136315394;
        v8 = "[SSRSpeakerRecognitionScorer psrConfigFilePath]";
        v9 = 2114;
        v10 = configFilePath;
        _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: FrontEnd Config option missing in %{public}@", &v7, 0x16u);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (unint64_t)getSATVectorCount
{
  result = self->_novDetect;
  if (result)
  {
    v3 = nd_sat_vectorcount();
    return v3 & ~(v3 >> 31);
  }

  return result;
}

- (void)deleteVectorAtIndex:(int)index
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_novDetect)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:401 description:@"deleteVectorAtIndex called with _novDetect = nullptr"];
  }

  v4 = nd_sat_deletevector();
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v10 = 136315650;
      v11 = "[SSRSpeakerRecognitionScorer deleteVectorAtIndex:]";
      v12 = 1024;
      v13 = v5;
      v14 = 2080;
      v15 = nd_error();
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to nd_sat_delete: %d, %s", &v10, 0x1Cu);
    }
  }
}

- (void)updateSAT
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_novDetect)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:391 description:@"updateSAT called with _novDetect = nullptr"];
  }

  v3 = nd_sat_update();
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v9 = 136315650;
      v10 = "[SSRSpeakerRecognitionScorer updateSAT]";
      v11 = 1024;
      v12 = v4;
      v13 = 2080;
      v14 = nd_error();
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to persist via sat_update: %d, %s", &v9, 0x1Cu);
    }
  }
}

- (float)normalizedScoreFromRawScore:(float)score forScoreType:(unint64_t)type
{
  v34 = *MEMORY[0x277D85DE8];
  [(SSRSpeakerRecognitionScorer *)self _satScoreVTScale];
  v8 = v7;
  [(SSRSpeakerRecognitionScorer *)self _satScoreVTOffset];
  v10 = v9;
  [(SSRSpeakerRecognitionScorer *)self _satLogitCeilScore];
  v12 = v11;
  [(SSRSpeakerRecognitionScorer *)self _satLogitFloorScore];
  v14 = v13;
  if (self->_offsetsType == 1)
  {
    [(SSRSpeakerRecognitionScorer *)self _satScoreNonVTScale];
    v8 = v15;
    [(SSRSpeakerRecognitionScorer *)self _satScoreNonVTOffset];
    v10 = v16;
  }

  v17 = v10 + (v8 * score);
  if (type - 1 <= 1)
  {
    return 1.0 / (exp((v17 * -2.0)) + 1.0);
  }

  if ((v12 - v14) >= 0.1)
  {
    v21 = v14;
    v20 = v12;
  }

  else
  {
    v19 = *MEMORY[0x277D01970];
    v20 = 7.0;
    v21 = -7.0;
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v24 = 136316162;
      v25 = "[SSRSpeakerRecognitionScorer normalizedScoreFromRawScore:forScoreType:]";
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v14;
      v30 = 2048;
      v31 = 0x401C000000000000;
      v32 = 2048;
      v33 = 0xC01C000000000000;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Incorrect logitCeil %f and logitFloor %f - defaulting them to %f and %f", &v24, 0x34u);
    }
  }

  v22 = 1.0 / (v20 - v21);
  v23 = -(v21 * v22);
  result = v23 + (v22 * (v17 + v17));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (float)scoreSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  speakerIdScoreReportingType = [mEMORY[0x277D01788] speakerIdScoreReportingType];

  if (vectorCopy && dimensions)
  {
    [vectorCopy bytes];
    if (self->_novDetect)
    {
      v11 = nd_sat_analyze();
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v17 = *MEMORY[0x277D015C8];
        v13 = -1.0;
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v21 = 136315394;
          v22 = "[SSRSpeakerRecognitionScorer scoreSpeakerVector:withDimensions:withThresholdType:]";
          v23 = 2080;
          v24 = nd_error();
          _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to compute SAT score: err: %s", &v21, 0x16u);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:332 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:speakerIdScoreReportingType forScoreType:v12];
    v15 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    v15 = -1.0;
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[SSRSpeakerRecognitionScorer scoreSpeakerVector:withDimensions:withThresholdType:]";
      v23 = 2112;
      v24 = vectorCopy;
      v25 = 2048;
      dimensionsCopy = dimensions;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: speakerVec invalid: %@:%lu", &v21, 0x20u);
    }
  }

  return v15;
}

- (float)analyzeSuperVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  speakerIdScoreReportingType = [mEMORY[0x277D01788] speakerIdScoreReportingType];

  if (vectorCopy && dimensions)
  {
    [vectorCopy bytes];
    if (self->_novDetect)
    {
      v11 = nd_sat_analyze();
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v17 = *MEMORY[0x277D015C8];
        v13 = -1.0;
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v21 = 136315394;
          v22 = "[SSRSpeakerRecognitionScorer analyzeSuperVector:withDimensions:withThresholdType:]";
          v23 = 2080;
          v24 = nd_error();
          _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to compute SAT score: err: %s", &v21, 0x16u);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:291 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:speakerIdScoreReportingType forScoreType:v12];
    v15 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    v15 = -1.0;
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[SSRSpeakerRecognitionScorer analyzeSuperVector:withDimensions:withThresholdType:]";
      v23 = 2112;
      v24 = vectorCopy;
      v25 = 2048;
      dimensionsCopy = dimensions;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: superVec invalid: %@:%lu", &v21, 0x20u);
    }
  }

  return v15;
}

- (float)analyzeSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  speakerIdScoreReportingType = [mEMORY[0x277D01788] speakerIdScoreReportingType];

  if (vectorCopy && dimensions)
  {
    [vectorCopy bytes];
    if (self->_novDetect)
    {
      v11 = nd_sat_analyze();
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v17 = *MEMORY[0x277D015C8];
        v13 = -1.0;
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v21 = 136315394;
          v22 = "[SSRSpeakerRecognitionScorer analyzeSpeakerVector:withDimensions:withThresholdType:]";
          v23 = 2080;
          v24 = nd_error();
          _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to compute SAT score: err: %s", &v21, 0x16u);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:260 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:speakerIdScoreReportingType forScoreType:v12];
    v15 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    v15 = -1.0;
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[SSRSpeakerRecognitionScorer analyzeSpeakerVector:withDimensions:withThresholdType:]";
      v23 = 2112;
      v24 = vectorCopy;
      v25 = 2048;
      dimensionsCopy = dimensions;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: speakerVec invalid: %@:%lu", &v21, 0x20u);
    }
  }

  return v15;
}

- (BOOL)resetScorerWithModelFilePath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = pathCopy;
  if (self->_novDetect)
  {
    path = [pathCopy path];
    [path UTF8String];
    v7 = nd_sat_initialize();

    if (!v7)
    {
      v10 = 1;
      goto LABEL_7;
    }

    v8 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v12 = 136315906;
      v13 = "[SSRSpeakerRecognitionScorer resetScorerWithModelFilePath:]";
      v14 = 2114;
      v15 = v5;
      v16 = 1026;
      v17 = v7;
      v18 = 2082;
      v19 = nd_error();
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize at %{public}@, err=%{public}d:%{public}s", &v12, 0x26u);
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[SSRSpeakerRecognitionScorer dealloc]";
    v7 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  if (self->_novDetect)
  {
    nd_close();
    self->_novDetect = 0;
  }

  v4.receiver = self;
  v4.super_class = SSRSpeakerRecognitionScorer;
  [(SSRSpeakerRecognitionScorer *)&v4 dealloc];
}

- (SSRSpeakerRecognitionScorer)initWithProfileID:(id)d withModelFile:(id)file withConfigFile:(id)configFile withResourceFile:(id)resourceFile configData:(id)data memoryIndex:(id)index withOffsetsType:(unint64_t)type forRetraining:(BOOL)self0
{
  v96 = *MEMORY[0x277D85DE8];
  dCopy = d;
  fileCopy = file;
  configFileCopy = configFile;
  resourceFileCopy = resourceFile;
  dataCopy = data;
  indexCopy = index;
  v80.receiver = self;
  v80.super_class = SSRSpeakerRecognitionScorer;
  v21 = [(SSRSpeakerRecognitionScorer *)&v80 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_47;
  }

  objc_storeStrong(&v21->_configFilePath, configFile);
  objc_storeStrong(&v22->_resourceFilePath, resourceFile);
  objc_storeStrong(&v22->_modelFilePath, file);
  objc_storeStrong(&v22->_profileID, d);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!(dataCopy | indexCopy))
  {
    path = [(NSURL *)v22->_configFilePath path];
    v24 = [defaultManager fileExistsAtPath:path];

    if ((v24 & 1) == 0)
    {
      v34 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      configFilePath = v22->_configFilePath;
      *buf = 136315394;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 2114;
      *&buf[14] = configFilePath;
      v35 = "%s ERR: Config file not found at %{public}@";
      goto LABEL_13;
    }
  }

  v25 = nd_create();
  v22->_novDetect = v25;
  if (!v25)
  {
    v34 = *MEMORY[0x277D015C8];
    if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    *&buf[12] = 2114;
    *&buf[14] = configFileCopy;
    v35 = "%s ERR: Failed to create NovDetect using %{public}@";
LABEL_13:
    v37 = v34;
    v38 = 22;
LABEL_14:
    _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, v35, buf, v38);
    goto LABEL_15;
  }

  if (!configFileCopy)
  {
    if (!dataCopy || !indexCopy)
    {
      v45 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      v35 = "%s ERR: Failed to initialize _novDetect: config path or config data or memory index is nil";
      goto LABEL_43;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 1;
    memoryIndexes = [indexCopy memoryIndexes];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __148__SSRSpeakerRecognitionScorer_initWithProfileID_withModelFile_withConfigFile_withResourceFile_configData_memoryIndex_withOffsetsType_forRetraining___block_invoke;
    v77[3] = &unk_278578A48;
    v79 = buf;
    v78 = v22;
    [memoryIndexes enumerateKeysAndObjectsUsingBlock:v77];

    if (*(*&buf[8] + 24))
    {
      v41 = dataCopy;
      [dataCopy cStringUsingEncoding:4];
      v42 = nd_initialize();
      if (!v42)
      {

        _Block_object_dispose(buf, 8);
        goto LABEL_27;
      }

      v43 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = nd_error();
        *v90 = 136315650;
        v91 = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
        v92 = 1026;
        v93 = v42;
        v94 = 2082;
        v95 = v44;
        _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize secure _novDetect: err=[%{public}d]:%{public}s", v90, 0x1Cu);
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_15;
  }

  path2 = [configFileCopy path];
  v27 = path2;
  [path2 UTF8String];
  path3 = [(NSURL *)v22->_resourceFilePath path];
  v29 = path3;
  [path3 UTF8String];
  v30 = nd_initialize();

  if (v30)
  {
    v31 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = nd_error();
      *buf = 136315650;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 1026;
      *&buf[14] = v30;
      *&buf[18] = 2082;
      *&buf[20] = v33;
      _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize _novDetect: err=[%{public}d]:%{public}s", buf, 0x1Cu);
    }

    goto LABEL_15;
  }

LABEL_27:
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path4 = [fileCopy path];
  v48 = [defaultManager2 fileExistsAtPath:path4];

  if (v48)
  {
    v22->_satModelAvailable = 1;
LABEL_33:
    path5 = [fileCopy path];
    v57 = path5;
    [path5 UTF8String];
    v58 = nd_sat_initialize();

    if (v58)
    {
      v59 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
        v61 = nd_error();
        *buf = 136315650;
        *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
        *&buf[12] = 1026;
        *&buf[14] = v58;
        *&buf[18] = 2082;
        *&buf[20] = v61;
        _os_log_impl(&dword_225E12000, v60, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize: err=%{public}d:%{public}s", buf, 0x1Cu);
      }

      goto LABEL_15;
    }

    v62 = nd_sat_vectorcount();
    if (!retraining)
    {
      v63 = v62;
      if (v62 <= 0)
      {
        v64 = *MEMORY[0x277D015C8];
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
          *&buf[12] = 1024;
          *&buf[14] = v63;
          _os_log_impl(&dword_225E12000, v64, OS_LOG_TYPE_DEFAULT, "%s ERR: numVectors:%d for inference, abort", buf, 0x12u);
        }

        goto LABEL_15;
      }
    }

    v22->_offsetsType = type;
    uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
    v66 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v67 = v66;
      getSATVectorCount = [(SSRSpeakerRecognitionScorer *)v22 getSATVectorCount];
      lastPathComponent = [fileCopy lastPathComponent];
      lastPathComponent2 = [uRLByDeletingLastPathComponent lastPathComponent];
      v65URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
      lastPathComponent3 = [v65URLByDeletingLastPathComponent lastPathComponent];
      *buf = 136316674;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 2114;
      *&buf[14] = dCopy;
      *&buf[22] = 2114;
      *&buf[24] = v22;
      v82 = 1026;
      v83 = getSATVectorCount;
      v84 = 2114;
      v85 = lastPathComponent;
      v86 = 2114;
      v87 = lastPathComponent2;
      v88 = 2114;
      v89 = lastPathComponent3;
      _os_log_impl(&dword_225E12000, v67, OS_LOG_TYPE_DEFAULT, "%s Initialized Scorer for %{public}@ - (%{public}@, %{public}d, %{public}@, %{public}@, %{public}@)", buf, 0x44u);
    }

LABEL_47:
    v39 = v22;
    goto LABEL_48;
  }

  v49 = MEMORY[0x277D015C8];
  v50 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v51 = v50;
    path6 = [fileCopy path];
    *buf = 136315394;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    *&buf[12] = 2112;
    *&buf[14] = path6;
    _os_log_impl(&dword_225E12000, v51, OS_LOG_TYPE_DEFAULT, "%s %@, satModel doesn't exist", buf, 0x16u);
  }

  v22->_satModelAvailable = 0;
  if (retraining)
  {
    uRLByDeletingLastPathComponent2 = [fileCopy URLByDeletingLastPathComponent];
    path7 = [uRLByDeletingLastPathComponent2 path];
    v55 = [SSRUtils createDirectoryIfDoesNotExist:path7];

    goto LABEL_33;
  }

  v45 = *v49;
  if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    v35 = "%s Bailing out since we don't have modelPath for inference";
LABEL_43:
    v37 = v45;
    v38 = 12;
    goto LABEL_14;
  }

LABEL_15:

  v39 = 0;
LABEL_48:

  return v39;
}

void __148__SSRSpeakerRecognitionScorer_initWithProfileID_withModelFile_withConfigFile_withResourceFile_configData_memoryIndex_withOffsetsType_forRetraining___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v9 = v7;
    v10 = a3;
    [v8 cStringUsingEncoding:4];
    [v10 bytes];
    [v10 length];

    if (nd_addresource())
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315395;
        v13 = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]_block_invoke";
        v14 = 2113;
        v15 = v8;
        _os_log_debug_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEBUG, "%s Failed to add resource %{private}@", &v12, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

+ (id)createVoiceScorersWithVoiceProfiles:(id)profiles withConfigFile:(id)file withResourceFile:(id)resourceFile withOffsetsType:(unint64_t)type forRetraining:(BOOL)retraining
{
  retrainingCopy = retraining;
  v39 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  fileCopy = file;
  resourceFileCopy = resourceFile;
  if (profilesCopy && [profilesCopy count])
  {
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(profilesCopy, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = profilesCopy;
    v13 = profilesCopy;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * v17);
          v19 = [SSRSpeakerRecognitionScorer alloc];
          v20 = [v13 objectForKeyedSubscript:v18];
          v21 = [(SSRSpeakerRecognitionScorer *)v19 initWithProfileID:v18 withModelFile:v20 withConfigFile:fileCopy withResourceFile:resourceFileCopy withOffsetsType:type forRetraining:retrainingCopy];

          if (v21 && [(SSRSpeakerRecognitionScorer *)v21 satModelAvailable])
          {
            [v26 addObject:v21];
          }

          else
          {
            v22 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v33 = "+[SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:withConfigFile:withResourceFile:withOffsetsType:forRetraining:]";
              v34 = 2114;
              v35 = v18;
              v36 = 2114;
              v37 = resourceFileCopy;
              _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s ERR: Failed to initialize satAnalyzer for profile %{public}@ with asset %{public}@", buf, 0x20u);
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v15);
    }

    profilesCopy = v25;
  }

  else
  {
    v23 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "+[SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:withConfigFile:withResourceFile:withOffsetsType:forRetraining:]";
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: Voice Recognition models not provided - Bailing out", buf, 0xCu);
    }

    v26 = 0;
  }

  return v26;
}

@end
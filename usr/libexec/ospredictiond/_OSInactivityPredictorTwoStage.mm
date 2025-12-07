@interface _OSInactivityPredictorTwoStage
+ (id)alternatePredictor;
+ (id)evaluator;
+ (id)predictor;
- (_OSInactivityPredictorTwoStage)initWithAlternateModel:(BOOL)model inEvaluationMode:(BOOL)mode;
- (id)longInactivityPredictionResultAtDate:(id)date withLockHistory:(id)history withOptions:(int64_t)options withError:(id *)error;
- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error;
- (void)updateTrialParameters:(BOOL)parameters;
@end

@implementation _OSInactivityPredictorTwoStage

- (_OSInactivityPredictorTwoStage)initWithAlternateModel:(BOOL)model inEvaluationMode:(BOOL)mode
{
  modeCopy = mode;
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = _OSInactivityPredictorTwoStage;
  v6 = [(_OSInactivityPredictor *)&v25 init];
  if (v6)
  {
    if (modeCopy)
    {
      v7 = "inactivity.twoStageEvaluator";
    }

    else
    {
      v7 = "inactivity.twoStagePredictor";
    }

    v8 = os_log_create("com.apple.osintelligence", v7);
    v9 = *(v6 + 14);
    *(v6 + 14) = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.osintelligence.queue", v10);
    v12 = *(v6 + 15);
    *(v6 + 15) = v11;

    v13 = +[NSDate distantPast];
    v14 = *(v6 + 16);
    *(v6 + 16) = v13;

    if (os_log_type_enabled(*(v6 + 14), OS_LOG_TYPE_DEBUG))
    {
      sub_10005BF28();
    }

    if (modelCopy)
    {
      v15 = @"twoStageXGB_v3_alt";
    }

    else
    {
      v15 = @"twoStageXGB_v3";
    }

    [v6 setPredictorType:v15];
    [v6 setQueryingMechanism:@"single"];
    [v6 setRequireEnoughHistory:1];
    if (os_log_type_enabled(*(v6 + 14), OS_LOG_TYPE_DEBUG))
    {
      sub_10005A7A8();
    }

    v16 = [TRIClient clientWithIdentifier:293];
    v17 = *(v6 + 13);
    *(v6 + 13) = v16;

    [v6 updateTrialParameters:modelCopy];
    objc_initWeak(&location, v6);
    v18 = *(v6 + 13);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001DAF4;
    v21[3] = &unk_100094E38;
    objc_copyWeak(&v22, &location);
    v23 = modelCopy;
    v19 = [v18 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:v21];
    [v6 setConfidenceThresholdRelaxed:0.5];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)updateTrialParameters:(BOOL)parameters
{
  parametersCopy = parameters;
  [(TRIClient *)self->_trialClient refresh];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005A824();
  }

  v40 = parametersCopy;
  if (parametersCopy)
  {
    v5 = @"alternateInactivityEngageModel";
  }

  else
  {
    v5 = @"defaultInactivityEngageModel";
  }

  v6 = [(TRIClient *)self->_trialClient levelForFactor:v5 withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  directoryValue = [v6 directoryValue];
  path = [directoryValue path];

  v9 = [(TRIClient *)self->_trialClient levelForFactor:@"inactivityDurationModel" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  directoryValue2 = [v9 directoryValue];
  path2 = [directoryValue2 path];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loading compiled models", buf, 2u);
  }

  v13 = [OSIntelligenceUtilities loadCompiledModelFromPath:path];
  engageModel = self->_engageModel;
  self->_engageModel = v13;

  v15 = [OSIntelligenceUtilities loadCompiledModelFromPath:path2];
  durationModel = self->_durationModel;
  self->_durationModel = v15;

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005BFB4();
  }

  modelDescription = [(MLModel *)self->_engageModel modelDescription];
  metadata = [modelDescription metadata];
  v19 = [metadata objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v20 = [v19 objectForKeyedSubscript:@"recommended_wait_time"];
  [v20 doubleValue];
  v22 = v21;

  [(_OSInactivityPredictor *)self setRecommendedWaitTime:fmax(v22, 1800.0)];
  modelDescription2 = [(MLModel *)self->_engageModel modelDescription];
  metadata2 = [modelDescription2 metadata];
  v25 = [metadata2 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v26 = [v25 objectForKeyedSubscript:@"long_threshold"];
  [v26 doubleValue];
  [(_OSInactivityPredictor *)self setLongThreshold:?];

  modelDescription3 = [(MLModel *)self->_engageModel modelDescription];
  metadata3 = [modelDescription3 metadata];
  v29 = [metadata3 objectForKeyedSubscript:MLModelCreatorDefinedKey];
  v30 = [v29 objectForKeyedSubscript:@"model_version"];
  v31 = [v30 description];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"None";
  }

  [(_OSInactivityPredictor *)self setModelVersion:v33];

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005BFF4();
  }

  if (v40)
  {
    v34 = @"alternateConfidenceThreshold";
  }

  else
  {
    v34 = @"defaultConfidenceThreshold";
  }

  v35 = [(TRIClient *)self->_trialClient levelForFactor:v34 withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v35 doubleValue];
  [(_OSInactivityPredictor *)self setConfidenceThresholdStrict:?];

  v36 = [(TRIClient *)self->_trialClient levelForFactor:@"multiplicativeLeewayStrict" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v36 doubleValue];
  self->_multiplicativeLeewayStrict = v37;

  v38 = [(TRIClient *)self->_trialClient levelForFactor:@"multiplicativeLeewayRelaxed" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [v38 doubleValue];
  self->_multiplicativeLeewayRelaxed = v39;
}

+ (id)predictor
{
  v2 = [objc_alloc(objc_opt_class()) initWithAlternateModel:0 inEvaluationMode:0];

  return v2;
}

+ (id)alternatePredictor
{
  v2 = [objc_alloc(objc_opt_class()) initWithAlternateModel:1 inEvaluationMode:0];

  return v2;
}

+ (id)evaluator
{
  v2 = [objc_alloc(objc_opt_class()) initWithAlternateModel:0 inEvaluationMode:1];

  return v2;
}

- (id)longInactivityPredictionResultAtDate:(id)date withTimeSinceInactive:(double)inactive withOptions:(int64_t)options withError:(id *)error
{
  dateCopy = date;
  v10 = os_transaction_create();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000324C;
  v31 = sub_100003568;
  v32 = 0;
  queue = self->_queue;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10001E21C;
  v22 = &unk_100094E60;
  v12 = dateCopy;
  v23 = v12;
  selfCopy = self;
  v25 = &v27;
  optionsCopy = options;
  dispatch_sync(queue, &v19);
  if (v28[5])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      optionsCopy2 = options;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "(%ld) Returning Cached output", buf, 0xCu);
    }
  }

  else
  {
    v14 = [_OSLockHistory sharedInstance:v19];
    v15 = [(_OSInactivityPredictorTwoStage *)self longInactivityPredictionResultAtDate:v12 withLockHistory:v14 withOptions:options withError:error];
    v16 = v28[5];
    v28[5] = v15;
  }

  v17 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (id)longInactivityPredictionResultAtDate:(id)date withLockHistory:(id)history withOptions:(int64_t)options withError:(id *)error
{
  dateCopy = date;
  historyCopy = history;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10000324C;
  v33 = sub_100003568;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000324C;
  v27 = sub_100003568;
  v28 = 0;
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E598;
  v17[3] = &unk_100094EB0;
  v17[4] = self;
  v18 = dateCopy;
  v19 = historyCopy;
  v20 = &v23;
  v21 = &v29;
  optionsCopy = options;
  v13 = historyCopy;
  v14 = dateCopy;
  dispatch_sync(queue, v17);
  *error = v24[5];
  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

@end
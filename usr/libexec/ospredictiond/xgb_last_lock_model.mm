@interface xgb_last_lock_model
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromTime_since_active:(double)time_since_active time_of_day:(double)time_of_day day_of_week:(double)day_of_week all_dur_til_act_p10:(double)all_dur_til_act_p10 all_dur_til_act_p25:(double)all_dur_til_act_p25 all_dur_til_act_p50:(double)all_dur_til_act_p50 all_dur_til_act_p75:(double)all_dur_til_act_p75 all_dur_til_act_p90:(uint64_t)self0 all_dur_til_act_std:(uint64_t)self1 all___60_0__dur_act:(uint64_t)self2 all___60_0__dur_cons:(uint64_t)self3 all___60_0__dur_r8:(uint64_t)self4 all___60_0__cnt_act:(uint64_t)self5 all___60_0__cnt_hrs:(uint64_t)self6 all___60_0__cnt_r8:(uint64_t)self7 all__0_30__dur_act:(uint64_t)self8 all__0_30__dur_cons:(uint64_t)self9 all__0_30__dur_r8:(uint64_t)all__0_30__dur_r8 all__0_30__cnt_act:(uint64_t)all__0_30__cnt_act all__0_30__cnt_hrs:(uint64_t)all__0_30__cnt_hrs all__0_30__cnt_r8:(uint64_t)all__0_30__cnt_r8 all__30_60__dur_act:(uint64_t)all__30_60__dur_act all__30_60__dur_cons:(uint64_t)all__30_60__dur_cons all__30_60__dur_r8:(uint64_t)all__30_60__dur_r8 all__30_60__cnt_act:(uint64_t)all__30_60__cnt_act all__30_60__cnt_hrs:(uint64_t)all__30_60__cnt_hrs all__30_60__cnt_r8:(uint64_t)all__30_60__cnt_r8 all__60_120__dur_act:(uint64_t)time_since_active0 all__60_120__dur_cons:(uint64_t)time_since_active1 all__60_120__dur_r8:(uint64_t)time_since_active2 all__60_120__cnt_act:(uint64_t)time_since_active3 all__60_120__cnt_hrs:(uint64_t)time_since_active4 all__60_120__cnt_r8:(uint64_t)time_since_active5 all__120_240__dur_act:(uint64_t)time_since_active6 all__120_240__dur_cons:(uint64_t)time_since_active7 all__120_240__dur_r8:(uint64_t)time_since_active8 all__120_240__cnt_act:(uint64_t)time_since_active9 all__120_240__cnt_hrs:(uint64_t)time_of_day0 all__120_240__cnt_r8:(uint64_t)time_of_day1 all__240_480__dur_act:(uint64_t)time_of_day2 all__240_480__dur_cons:(uint64_t)time_of_day3 all__240_480__dur_r8:(uint64_t)time_of_day4 all__240_480__cnt_act:(uint64_t)time_of_day5 all__240_480__cnt_hrs:(uint64_t)time_of_day6 all__240_480__cnt_r8:(uint64_t)time_of_day7 all__480_1020__dur_act:(uint64_t)time_of_day8 all__480_1020__dur_cons:(uint64_t)time_of_day9 all__480_1020__dur_r8:(uint64_t)day_of_week0 all__480_1020__cnt_act:(uint64_t)day_of_week1 all__480_1020__cnt_hrs:(uint64_t)day_of_week2 all__480_1020__cnt_r8:(uint64_t)day_of_week3 woo_dur_til_act_p10:(uint64_t)day_of_week4 woo_dur_til_act_p25:(uint64_t)day_of_week5 woo_dur_til_act_p50:(uint64_t)day_of_week6 woo_dur_til_act_p75:(uint64_t)day_of_week7 woo_dur_til_act_p90:(uint64_t)day_of_week8 woo_dur_til_act_std:(uint64_t)day_of_week9 woo___60_0__dur_act:(uint64_t)all_dur_til_act_p100 woo___60_0__dur_cons:(uint64_t)all_dur_til_act_p101 woo___60_0__dur_r8:(uint64_t)all_dur_til_act_p102 woo___60_0__cnt_act:(uint64_t)all_dur_til_act_p103 woo___60_0__cnt_hrs:woo___60_0__cnt_r8:woo__0_30__dur_act:woo__0_30__dur_cons:woo__0_30__dur_r8:woo__0_30__cnt_act:woo__0_30__cnt_hrs:woo__0_30__cnt_r8:woo__30_60__dur_act:woo__30_60__dur_cons:woo__30_60__dur_r8:woo__30_60__cnt_act:woo__30_60__cnt_hrs:woo__30_60__cnt_r8:woo__60_120__dur_act:woo__60_120__dur_cons:woo__60_120__dur_r8:woo__60_120__cnt_act:woo__60_120__cnt_hrs:woo__60_120__cnt_r8:woo__120_240__dur_act:woo__120_240__dur_cons:woo__120_240__dur_r8:woo__120_240__cnt_act:woo__120_240__cnt_hrs:woo__120_240__cnt_r8:woo__240_480__dur_act:woo__240_480__dur_cons:woo__240_480__dur_r8:woo__240_480__cnt_act:woo__240_480__cnt_hrs:woo__240_480__cnt_r8:woo__480_1020__dur_act:woo__480_1020__dur_cons:woo__480_1020__dur_r8:woo__480_1020__cnt_act:woo__480_1020__cnt_hrs:woo__480_1020__cnt_r8:dow_dur_til_act_p10:dow_dur_til_act_p25:dow_dur_til_act_p50:dow_dur_til_act_p75:dow_dur_til_act_p90:dow_dur_til_act_std:dow___60_0__dur_act:dow___60_0__dur_cons:dow___60_0__dur_r8:dow___60_0__cnt_act:dow___60_0__cnt_hrs:dow___60_0__cnt_r8:dow__0_30__dur_act:dow__0_30__dur_cons:dow__0_30__dur_r8:dow__0_30__cnt_act:dow__0_30__cnt_hrs:dow__0_30__cnt_r8:dow__30_60__dur_act:dow__30_60__dur_cons:dow__30_60__dur_r8:dow__30_60__cnt_act:dow__30_60__cnt_hrs:dow__30_60__cnt_r8:dow__60_120__dur_act:dow__60_120__dur_cons:dow__60_120__dur_r8:dow__60_120__cnt_act:dow__60_120__cnt_hrs:dow__60_120__cnt_r8:dow__120_240__dur_act:dow__120_240__dur_cons:dow__120_240__dur_r8:dow__120_240__cnt_act:dow__120_240__cnt_hrs:dow__120_240__cnt_r8:dow__240_480__dur_act:dow__240_480__dur_cons:dow__240_480__dur_r8:dow__240_480__cnt_act:dow__240_480__cnt_hrs:dow__240_480__cnt_r8:dow__480_1020__dur_act:dow__480_1020__dur_cons:dow__480_1020__dur_r8:dow__480_1020__cnt_act:dow__480_1020__cnt_hrs:dow__480_1020__cnt_r8:l3d_dur_til_act_p10:l3d_dur_til_act_p25:l3d_dur_til_act_p50:l3d_dur_til_act_p75:l3d_dur_til_act_p90:l3d_dur_til_act_std:l3d___60_0__dur_act:l3d___60_0__dur_cons:l3d___60_0__dur_r8:l3d___60_0__cnt_act:l3d___60_0__cnt_hrs:l3d___60_0__cnt_r8:l3d__0_30__dur_act:l3d__0_30__dur_cons:l3d__0_30__dur_r8:l3d__0_30__cnt_act:l3d__0_30__cnt_hrs:l3d__0_30__cnt_r8:l3d__30_60__dur_act:l3d__30_60__dur_cons:l3d__30_60__dur_r8:l3d__30_60__cnt_act:l3d__30_60__cnt_hrs:l3d__30_60__cnt_r8:l3d__60_120__dur_act:l3d__60_120__dur_cons:l3d__60_120__dur_r8:l3d__60_120__cnt_act:l3d__60_120__cnt_hrs:l3d__60_120__cnt_r8:l3d__120_240__dur_act:l3d__120_240__dur_cons:l3d__120_240__dur_r8:l3d__120_240__cnt_act:l3d__120_240__cnt_hrs:l3d__120_240__cnt_r8:l3d__240_480__dur_act:l3d__240_480__dur_cons:l3d__240_480__dur_r8:l3d__240_480__cnt_act:l3d__240_480__cnt_hrs:l3d__240_480__cnt_r8:l3d__480_1020__dur_act:l3d__480_1020__dur_cons:l3d__480_1020__dur_r8:l3d__480_1020__cnt_act:l3d__480_1020__cnt_hrs:l3d__480_1020__cnt_r8:error:;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
- (xgb_last_lock_model)init;
- (xgb_last_lock_model)initWithConfiguration:(id)configuration error:(id *)error;
- (xgb_last_lock_model)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (xgb_last_lock_model)initWithContentsOfURL:(id)l error:(id *)error;
- (xgb_last_lock_model)initWithMLModel:(id)model;
@end

@implementation xgb_last_lock_model

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"xgb_last_lock_model" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E5E4();
    }

    v4 = 0;
  }

  return v4;
}

- (xgb_last_lock_model)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = xgb_last_lock_model;
    v6 = [(xgb_last_lock_model *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (xgb_last_lock_model)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(xgb_last_lock_model *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (xgb_last_lock_model)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(xgb_last_lock_model *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (xgb_last_lock_model)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(xgb_last_lock_model *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (xgb_last_lock_model)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(xgb_last_lock_model *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004CF54;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(xgb_last_lock_model *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(xgb_last_lock_model *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [xgb_last_lock_modelOutput alloc];
    v13 = [v11 featureValueForName:@"is_long"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(xgb_last_lock_modelOutput *)v12 initWithIs_long:int64Value classProbability:dictionaryValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(xgb_last_lock_model *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004D24C;
  v10[3] = &unk_1000956C0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(xgb_last_lock_model *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004D454;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromTime_since_active:(double)time_since_active time_of_day:(double)time_of_day day_of_week:(double)day_of_week all_dur_til_act_p10:(double)all_dur_til_act_p10 all_dur_til_act_p25:(double)all_dur_til_act_p25 all_dur_til_act_p50:(double)all_dur_til_act_p50 all_dur_til_act_p75:(double)all_dur_til_act_p75 all_dur_til_act_p90:(uint64_t)self0 all_dur_til_act_std:(uint64_t)self1 all___60_0__dur_act:(uint64_t)self2 all___60_0__dur_cons:(uint64_t)self3 all___60_0__dur_r8:(uint64_t)self4 all___60_0__cnt_act:(uint64_t)self5 all___60_0__cnt_hrs:(uint64_t)self6 all___60_0__cnt_r8:(uint64_t)self7 all__0_30__dur_act:(uint64_t)self8 all__0_30__dur_cons:(uint64_t)self9 all__0_30__dur_r8:(uint64_t)all__0_30__dur_r8 all__0_30__cnt_act:(uint64_t)all__0_30__cnt_act all__0_30__cnt_hrs:(uint64_t)all__0_30__cnt_hrs all__0_30__cnt_r8:(uint64_t)all__0_30__cnt_r8 all__30_60__dur_act:(uint64_t)all__30_60__dur_act all__30_60__dur_cons:(uint64_t)all__30_60__dur_cons all__30_60__dur_r8:(uint64_t)all__30_60__dur_r8 all__30_60__cnt_act:(uint64_t)all__30_60__cnt_act all__30_60__cnt_hrs:(uint64_t)all__30_60__cnt_hrs all__30_60__cnt_r8:(uint64_t)all__30_60__cnt_r8 all__60_120__dur_act:(uint64_t)time_since_active0 all__60_120__dur_cons:(uint64_t)time_since_active1 all__60_120__dur_r8:(uint64_t)time_since_active2 all__60_120__cnt_act:(uint64_t)time_since_active3 all__60_120__cnt_hrs:(uint64_t)time_since_active4 all__60_120__cnt_r8:(uint64_t)time_since_active5 all__120_240__dur_act:(uint64_t)time_since_active6 all__120_240__dur_cons:(uint64_t)time_since_active7 all__120_240__dur_r8:(uint64_t)time_since_active8 all__120_240__cnt_act:(uint64_t)time_since_active9 all__120_240__cnt_hrs:(uint64_t)time_of_day0 all__120_240__cnt_r8:(uint64_t)time_of_day1 all__240_480__dur_act:(uint64_t)time_of_day2 all__240_480__dur_cons:(uint64_t)time_of_day3 all__240_480__dur_r8:(uint64_t)time_of_day4 all__240_480__cnt_act:(uint64_t)time_of_day5 all__240_480__cnt_hrs:(uint64_t)time_of_day6 all__240_480__cnt_r8:(uint64_t)time_of_day7 all__480_1020__dur_act:(uint64_t)time_of_day8 all__480_1020__dur_cons:(uint64_t)time_of_day9 all__480_1020__dur_r8:(uint64_t)day_of_week0 all__480_1020__cnt_act:(uint64_t)day_of_week1 all__480_1020__cnt_hrs:(uint64_t)day_of_week2 all__480_1020__cnt_r8:(uint64_t)day_of_week3 woo_dur_til_act_p10:(uint64_t)day_of_week4 woo_dur_til_act_p25:(uint64_t)day_of_week5 woo_dur_til_act_p50:(uint64_t)day_of_week6 woo_dur_til_act_p75:(uint64_t)day_of_week7 woo_dur_til_act_p90:(uint64_t)day_of_week8 woo_dur_til_act_std:(uint64_t)day_of_week9 woo___60_0__dur_act:(uint64_t)all_dur_til_act_p100 woo___60_0__dur_cons:(uint64_t)all_dur_til_act_p101 woo___60_0__dur_r8:(uint64_t)all_dur_til_act_p102 woo___60_0__cnt_act:(uint64_t)all_dur_til_act_p103 woo___60_0__cnt_hrs:woo___60_0__cnt_r8:woo__0_30__dur_act:woo__0_30__dur_cons:woo__0_30__dur_r8:woo__0_30__cnt_act:woo__0_30__cnt_hrs:woo__0_30__cnt_r8:woo__30_60__dur_act:woo__30_60__dur_cons:woo__30_60__dur_r8:woo__30_60__cnt_act:woo__30_60__cnt_hrs:woo__30_60__cnt_r8:woo__60_120__dur_act:woo__60_120__dur_cons:woo__60_120__dur_r8:woo__60_120__cnt_act:woo__60_120__cnt_hrs:woo__60_120__cnt_r8:woo__120_240__dur_act:woo__120_240__dur_cons:woo__120_240__dur_r8:woo__120_240__cnt_act:woo__120_240__cnt_hrs:woo__120_240__cnt_r8:woo__240_480__dur_act:woo__240_480__dur_cons:woo__240_480__dur_r8:woo__240_480__cnt_act:woo__240_480__cnt_hrs:woo__240_480__cnt_r8:woo__480_1020__dur_act:woo__480_1020__dur_cons:woo__480_1020__dur_r8:woo__480_1020__cnt_act:woo__480_1020__cnt_hrs:woo__480_1020__cnt_r8:dow_dur_til_act_p10:dow_dur_til_act_p25:dow_dur_til_act_p50:dow_dur_til_act_p75:dow_dur_til_act_p90:dow_dur_til_act_std:dow___60_0__dur_act:dow___60_0__dur_cons:dow___60_0__dur_r8:dow___60_0__cnt_act:dow___60_0__cnt_hrs:dow___60_0__cnt_r8:dow__0_30__dur_act:dow__0_30__dur_cons:dow__0_30__dur_r8:dow__0_30__cnt_act:dow__0_30__cnt_hrs:dow__0_30__cnt_r8:dow__30_60__dur_act:dow__30_60__dur_cons:dow__30_60__dur_r8:dow__30_60__cnt_act:dow__30_60__cnt_hrs:dow__30_60__cnt_r8:dow__60_120__dur_act:dow__60_120__dur_cons:dow__60_120__dur_r8:dow__60_120__cnt_act:dow__60_120__cnt_hrs:dow__60_120__cnt_r8:dow__120_240__dur_act:dow__120_240__dur_cons:dow__120_240__dur_r8:dow__120_240__cnt_act:dow__120_240__cnt_hrs:dow__120_240__cnt_r8:dow__240_480__dur_act:dow__240_480__dur_cons:dow__240_480__dur_r8:dow__240_480__cnt_act:dow__240_480__cnt_hrs:dow__240_480__cnt_r8:dow__480_1020__dur_act:dow__480_1020__dur_cons:dow__480_1020__dur_r8:dow__480_1020__cnt_act:dow__480_1020__cnt_hrs:dow__480_1020__cnt_r8:l3d_dur_til_act_p10:l3d_dur_til_act_p25:l3d_dur_til_act_p50:l3d_dur_til_act_p75:l3d_dur_til_act_p90:l3d_dur_til_act_std:l3d___60_0__dur_act:l3d___60_0__dur_cons:l3d___60_0__dur_r8:l3d___60_0__cnt_act:l3d___60_0__cnt_hrs:l3d___60_0__cnt_r8:l3d__0_30__dur_act:l3d__0_30__dur_cons:l3d__0_30__dur_r8:l3d__0_30__cnt_act:l3d__0_30__cnt_hrs:l3d__0_30__cnt_r8:l3d__30_60__dur_act:l3d__30_60__dur_cons:l3d__30_60__dur_r8:l3d__30_60__cnt_act:l3d__30_60__cnt_hrs:l3d__30_60__cnt_r8:l3d__60_120__dur_act:l3d__60_120__dur_cons:l3d__60_120__dur_r8:l3d__60_120__cnt_act:l3d__60_120__cnt_hrs:l3d__60_120__cnt_r8:l3d__120_240__dur_act:l3d__120_240__dur_cons:l3d__120_240__dur_r8:l3d__120_240__cnt_act:l3d__120_240__cnt_hrs:l3d__120_240__cnt_r8:l3d__240_480__dur_act:l3d__240_480__dur_cons:l3d__240_480__dur_r8:l3d__240_480__cnt_act:l3d__240_480__cnt_hrs:l3d__240_480__cnt_r8:l3d__480_1020__dur_act:l3d__480_1020__dur_cons:l3d__480_1020__dur_r8:l3d__480_1020__cnt_act:l3d__480_1020__cnt_hrs:l3d__480_1020__cnt_r8:error:
{
  v65 = [xgb_last_lock_modelInput initWithTime_since_active:time_of_day:day_of_week:all_dur_til_act_p10:all_dur_til_act_p25:all_dur_til_act_p50:all_dur_til_act_p75:all_dur_til_act_p90:all_dur_til_act_std:all___60_0__dur_act:all___60_0__dur_cons:all___60_0__dur_r8:all___60_0__cnt_act:all___60_0__cnt_hrs:all___60_0__cnt_r8:all__0_30__dur_act:all__0_30__dur_cons:all__0_30__dur_r8:all__0_30__cnt_act:all__0_30__cnt_hrs:all__0_30__cnt_r8:all__30_60__dur_act:all__30_60__dur_cons:all__30_60__dur_r8:all__30_60__cnt_act:all__30_60__cnt_hrs:all__30_60__cnt_r8:all__60_120__dur_act:all__60_120__dur_cons:all__60_120__dur_r8:all__60_120__cnt_act:all__60_120__cnt_hrs:all__60_120__cnt_r8:all__120_240__dur_act:all__120_240__dur_cons:all__120_240__dur_r8:all__120_240__cnt_act:all__120_240__cnt_hrs:all__120_240__cnt_r8:all__240_480__dur_act:all__240_480__dur_cons:all__240_480__dur_r8:all__240_480__cnt_act:all__240_480__cnt_hrs:all__240_480__cnt_r8:all__480_1020__dur_act:all__480_1020__dur_cons:all__480_1020__dur_r8:all__480_1020__cnt_act:all__480_1020__cnt_hrs:all__480_1020__cnt_r8:woo_dur_til_act_p10:woo_dur_til_act_p25:woo_dur_til_act_p50:woo_dur_til_act_p75:woo_dur_til_act_p90:woo_dur_til_act_std:woo___60_0__dur_act:woo___60_0__dur_cons:woo___60_0__dur_r8:woo___60_0__cnt_act:woo___60_0__cnt_hrs:woo___60_0__cnt_r8:woo__0_30__dur_act:woo__0_30__dur_cons:woo__0_30__dur_r8:woo__0_30__cnt_act:woo__0_30__cnt_hrs:woo__0_30__cnt_r8:woo__30_60__dur_act:woo__30_60__dur_cons:woo__30_60__dur_r8:woo__30_60__cnt_act:woo__30_60__cnt_hrs:woo__30_60__cnt_r8:woo__60_120__dur_act:woo__60_120__dur_cons:woo__60_120__dur_r8:woo__60_120__cnt_act:woo__60_120__cnt_hrs:woo__60_120__cnt_r8:woo__120_240__dur_act:woo__120_240__dur_cons:woo__120_240__dur_r8:woo__120_240__cnt_act:woo__120_240__cnt_hrs:woo__120_240__cnt_r8:woo__240_480__dur_act:woo__240_480__dur_cons:woo__240_480__dur_r8:woo__240_480__cnt_act:woo__240_480__cnt_hrs:woo__240_480__cnt_r8:woo__480_1020__dur_act:woo__480_1020__dur_cons:woo__480_1020__dur_r8:woo__480_1020__cnt_act:woo__480_1020__cnt_hrs:woo__480_1020__cnt_r8:dow_dur_til_act_p10:dow_dur_til_act_p25:dow_dur_til_act_p50:dow_dur_til_act_p75:dow_dur_til_act_p90:dow_dur_til_act_std:dow___60_0__dur_act:dow___60_0__dur_cons:dow___60_0__dur_r8:dow___60_0__cnt_act:dow___60_0__cnt_hrs:dow___60_0__cnt_r8:dow__0_30__dur_act:dow__0_30__dur_cons:dow__0_30__dur_r8:dow__0_30__cnt_act:dow__0_30__cnt_hrs:dow__0_30__cnt_r8:dow__30_60__dur_act:dow__30_60__dur_cons:dow__30_60__dur_r8:dow__30_60__cnt_act:dow__30_60__cnt_hrs:dow__30_60__cnt_r8:dow__60_120__dur_act:dow__60_120__dur_cons:dow__60_120__dur_r8:dow__60_120__cnt_act:dow__60_120__cnt_hrs:dow__60_120__cnt_r8:dow__120_240__dur_act:dow__120_240__dur_cons:dow__120_240__dur_r8:dow__120_240__cnt_act:dow__120_240__cnt_hrs:dow__120_240__cnt_r8:dow__240_480__dur_act:dow__240_480__dur_cons:dow__240_480__dur_r8:dow__240_480__cnt_act:dow__240_480__cnt_hrs:dow__240_480__cnt_r8:dow__480_1020__dur_act:dow__480_1020__dur_cons:dow__480_1020__dur_r8:dow__480_1020__cnt_act:dow__480_1020__cnt_hrs:dow__480_1020__cnt_r8:l3d_dur_til_act_p10:l3d_dur_til_act_p25:l3d_dur_til_act_p50:l3d_dur_til_act_p75:l3d_dur_til_act_p90:l3d_dur_til_act_std:l3d___60_0__dur_act:l3d___60_0__dur_cons:l3d___60_0__dur_r8:l3d___60_0__cnt_act:l3d___60_0__cnt_hrs:l3d___60_0__cnt_r8:l3d__0_30__dur_act:l3d__0_30__dur_cons:l3d__0_30__dur_r8:l3d__0_30__cnt_act:l3d__0_30__cnt_hrs:l3d__0_30__cnt_r8:l3d__30_60__dur_act:l3d__30_60__dur_cons:l3d__30_60__dur_r8:l3d__30_60__cnt_act:l3d__30_60__cnt_hrs:l3d__30_60__cnt_r8:l3d__60_120__dur_act:l3d__60_120__dur_cons:l3d__60_120__dur_r8:l3d__60_120__cnt_act:l3d__60_120__cnt_hrs:l3d__60_120__cnt_r8:l3d__120_240__dur_act:l3d__120_240__dur_cons:l3d__120_240__dur_r8:l3d__120_240__cnt_act:l3d__120_240__cnt_hrs:l3d__120_240__cnt_r8:l3d__240_480__dur_act:l3d__240_480__dur_cons:l3d__240_480__dur_r8:l3d__240_480__cnt_act:l3d__240_480__cnt_hrs:l3d__240_480__cnt_r8:l3d__480_1020__dur_act:l3d__480_1020__dur_cons:l3d__480_1020__dur_r8:l3d__480_1020__cnt_act:l3d__480_1020__cnt_hrs:l3d__480_1020__cnt_r8:]( [xgb_last_lock_modelInput alloc],  "initWithTime_since_active:time_of_day:day_of_week:all_dur_til_act_p10:all_dur_til_act_p25:all_dur_til_act_p50:all_dur_til_act_p75:all_dur_til_act_p90:all_dur_til_act_std:all___60_0__dur_act:all___60_0__dur_cons:all___60_0__dur_r8:all___60_0__cnt_act:all___60_0__cnt_hrs:all___60_0__cnt_r8:all__0_30__dur_act:all__0_30__dur_cons:all__0_30__dur_r8:all__0_30__cnt_act:all__0_30__cnt_hrs:all__0_30__cnt_r8:all__30_60__dur_act:all__30_60__dur_cons:all__30_60__dur_r8:all__30_60__cnt_act:all__30_60__cnt_hrs:all__30_60__cnt_r8:all__60_120__dur_act:all__60_120__dur_cons:all__60_120__dur_r8:all__60_120__cnt_act:all__60_120__cnt_hrs:all__60_120__cnt_r8:all__120_240__dur_act:all__120_240__dur_cons:all__120_240__dur_r8:all__120_240__cnt_act:all__120_240__cnt_hrs:all__120_240__cnt_r8:all__240_480__dur_act:all__240_480__dur_cons:all__240_480__dur_r8:all__240_480__cnt_act:all__240_480__cnt_hrs:all__240_480__cnt_r8:all__480_1020__dur_act:all__480_1020__dur_cons:all__480_1020__dur_r8:all__480_1020__cnt_act:all__480_1020__cnt_hrs:all__480_1020__cnt_r8:woo_dur_til_act_p10:woo_dur_til_act_p25:woo_dur_til_act_p50:woo_dur_til_act_p75:woo_dur_til_act_p90:woo_dur_til_act_std:woo___60_0__dur_act:woo___60_0__dur_cons:woo___60_0__dur_r8:woo___60_0__cnt_act:woo___60_0__cnt_hrs:woo___60_0__cnt_r8:woo__0_30__dur_act:woo__0_30__dur_cons:woo__0_30__dur_r8:woo__0_30__cnt_act:woo__0_30__cnt_hrs:woo__0_30__cnt_r8:woo__30_60__dur_act:woo__30_60__dur_cons:woo__30_60__dur_r8:woo__30_60__cnt_act:woo__30_60__cnt_hrs:woo__30_60__cnt_r8:woo__60_120__dur_act:woo__60_120__dur_cons:woo__60_120__dur_r8:woo__60_120__cnt_act:woo__60_120__cnt_hrs:woo__60_120__cnt_r8:woo__120_240__dur_act:woo__120_240__dur_cons:woo__120_240__dur_r8:woo__120_240__cnt_act:woo__120_240__cnt_hrs:woo__120_240__cnt_r8:woo__240_480__dur_act:woo__240_480__dur_cons:woo__240_480__dur_r8:woo__240_480__cnt_act:woo__240_480__cnt_hrs:woo__240_480__cnt_r8:woo__480_1020__dur_act:woo__480_1020__dur_cons:woo__480_1020__dur_r8:woo__480_1020__cnt_act:woo__480_1020__cnt_hrs:woo__480_1020__cnt_r8:dow_dur_til_act_p10:dow_dur_til_act_p25:dow_dur_til_act_p50:dow_dur_til_act_p75:dow_dur_til_act_p90:dow_dur_til_act_std:dow___60_0__dur_act:dow___60_0__dur_cons:dow___60_0__dur_r8:dow___60_0__cnt_act:dow___60_0__cnt_hrs:dow___60_0__cnt_r8:dow__0_30__dur_act:dow__0_30__dur_cons:dow__0_30__dur_r8:dow__0_30__cnt_act:dow__0_30__cnt_hrs:dow__0_30__cnt_r8:dow__30_60__dur_act:dow__30_60__dur_cons:dow__30_60__dur_r8:dow__30_60__cnt_act:dow__30_60__cnt_hrs:dow__30_60__cnt_r8:dow__60_120__dur_act:dow__60_120__dur_cons:dow__60_120__dur_r8:dow__60_120__cnt_act:dow__60_120__cnt_hrs:dow__60_120__cnt_r8:dow__120_240__dur_act:dow__120_240__dur_cons:dow__120_240__dur_r8:dow__120_240__cnt_act:dow__120_240__cnt_hrs:dow__120_240__cnt_r8:dow__240_480__dur_act:dow__240_480__dur_cons:dow__240_480__dur_r8:dow__240_480__cnt_act:dow__240_480__cnt_hrs:dow__240_480__cnt_r8:dow__480_1020__dur_act:dow__480_1020__dur_cons:dow__480_1020__dur_r8:dow__480_1020__cnt_act:dow__480_1020__cnt_hrs:dow__480_1020__cnt_r8:l3d_dur_til_act_p10:l3d_dur_til_act_p25:l3d_dur_til_act_p50:l3d_dur_til_act_p75:l3d_dur_til_act_p90:l3d_dur_til_act_std:l3d___60_0__dur_act:l3d___60_0__dur _cons:l3d___60_0__dur_r8:l3d___60_0__cnt_act:l3d___60_0__cnt_hrs:l3d___60_0__cnt_r8:l3d__0_30__dur_act:l3d__0_30__dur_cons:l3d__0_30__dur_r8:l3d__0_30__cnt_act:l3d__0_30__cnt_hrs:l3d__0_30__cnt_r8:l3d__30_60__dur_act:l3d__30_60__dur_cons:l3d__30_60__dur_r8:l3d__30_60__cnt_act:l3d__30_60__cnt_hrs:l3d__30_60__cnt_r8:l3d__60_120__dur_act:l3d__60_120__dur_cons:l3d__60_120__dur_r8:l3d__60_120__cnt_act:l3d__60_120__cnt_hrs:l3d__60_120__cnt_r8:l3d__120_240__dur_act:l3d__120_240__dur_cons:l3d__120_240__dur_r8:l3d__120_240__cnt_act:l3d__120_240__cnt_hrs:l3d__120_240__cnt_r8:l3d__240_480__dur_act:l3d__240_480__dur_cons:l3d__240_480__dur_r8:l3d__240_480__cnt_act:l3d__240_480__cnt_hrs:l3d__240_480__cnt_r8:l3d__480_1020__dur_act:l3d__480_1020__dur_cons:l3d__480_1020__dur_r8:l3d__480_1020__cnt_act:l3d__480_1020__cnt_hrs:l3d__480_1020__cnt_r8:",  a2,  time_since_active,  time_of_day,  day_of_week,  all_dur_til_act_p10,  all_dur_til_act_p25,  all_dur_til_act_p50,  all_dur_til_act_p75,  all___60_0__cnt_r8,  all__0_30__dur_act,  all__0_30__dur_cons,  all__0_30__dur_r8,  all__0_30__cnt_act,  all__0_30__cnt_hrs,  all__0_30__cnt_r8,  all__30_60__dur_act,  all__30_60__dur_cons,  all__30_60__dur_r8,  all__30_60__cnt_act,  all__30_60__cnt_hrs,  all__30_60__cnt_r8,  all__60_120__dur_act,  all__60_120__dur_cons,  all__60_120__dur_r8,  all__60_120__cnt_act,  all__60_120__cnt_hrs,  all__60_120__cnt_r8,  all__120_240__dur_act,  all__120_240__dur_cons,  all__120_240__dur_r8,  all__120_240__cnt_act,  all__120_240__cnt_hrs,  all__120_240__cnt_r8,  all__240_480__dur_act,  all__240_480__dur_cons,  all__240_480__dur_r8,  all__240_480__cnt_act,  all__240_480__cnt_hrs,  all__240_480__cnt_r8,  all__480_1020__dur_act,  all__480_1020__dur_cons,  all__480_1020__dur_r8,  all__480_1020__cnt_act,  all__480_1020__cnt_hrs,  all__480_1020__cnt_r8,  woo_dur_til_act_p10,
          woo_dur_til_act_p25,
          woo_dur_til_act_p50,
          woo_dur_til_act_p75,
          woo_dur_til_act_p90,
          woo_dur_til_act_std,
          woo___60_0__dur_act,
          woo___60_0__dur_cons,
          woo___60_0__dur_r8,
          woo___60_0__cnt_act,
          v69,
          v70,
          v71,
          v72,
          v73,
          v74);
  v66 = [self predictionFromFeatures:v65 error:all_dur_til_act_std];

  return v66;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(xgb_last_lock_model *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [xgb_last_lock_modelOutput alloc];
        v17 = [v15 featureValueForName:@"is_long"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(xgb_last_lock_modelOutput *)v16 initWithIs_long:int64Value classProbability:dictionaryValue];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
      v10 = v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
@interface PMLTrainingMock
- (PMLTrainingMock)init;
- (id)lastTrainingFeaturizationForModelName:(id)name andLocale:(id)locale;
- (void)addSessionWithCovariates:(id)covariates label:(int64_t)label sessionDescriptor:(id)descriptor spotlightReference:(id)reference isInternal:(BOOL)internal;
- (void)updateLastTrainingFeaturizationForModel:(id)model andData:(id)data;
@end

@implementation PMLTrainingMock

- (void)updateLastTrainingFeaturizationForModel:(id)model andData:(id)data
{
  lastTrainingFeaturizations = self->_lastTrainingFeaturizations;
  v6 = MEMORY[0x277D42648];
  modelCopy = model;
  v12 = [v6 tupleWithFirst:modelCopy second:data];
  v8 = MEMORY[0x277D42648];
  name = [modelCopy name];
  locale = [modelCopy locale];

  v11 = [v8 tupleWithFirst:name second:locale];
  [(NSMutableDictionary *)lastTrainingFeaturizations setObject:v12 forKey:v11];
}

- (id)lastTrainingFeaturizationForModelName:(id)name andLocale:(id)locale
{
  lastTrainingFeaturizations = self->_lastTrainingFeaturizations;
  v5 = [MEMORY[0x277D42648] tupleWithFirst:name second:locale];
  v6 = [(NSMutableDictionary *)lastTrainingFeaturizations objectForKeyedSubscript:v5];

  return v6;
}

- (void)addSessionWithCovariates:(id)covariates label:(int64_t)label sessionDescriptor:(id)descriptor spotlightReference:(id)reference isInternal:(BOOL)internal
{
  internalCopy = internal;
  v20[5] = *MEMORY[0x277D85DE8];
  internalCollectedSessions = self->_internalCollectedSessions;
  v20[0] = covariates;
  v19[0] = @"covariates";
  v19[1] = @"label";
  v12 = MEMORY[0x277CCABB0];
  referenceCopy = reference;
  descriptorCopy = descriptor;
  covariatesCopy = covariates;
  v16 = [v12 numberWithInteger:label];
  v20[1] = v16;
  v20[2] = descriptorCopy;
  v19[2] = @"model";
  v19[3] = @"spotlightReference";
  v20[3] = referenceCopy;
  v19[4] = @"isInternal";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:internalCopy];
  v20[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  [(NSMutableArray *)internalCollectedSessions addObject:v18];
}

- (PMLTrainingMock)init
{
  v8.receiver = self;
  v8.super_class = PMLTrainingMock;
  v2 = [(PMLTrainingMock *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    internalCollectedSessions = v2->_internalCollectedSessions;
    v2->_internalCollectedSessions = v3;

    objc_storeStrong(&v2->_collectedSessions, v2->_internalCollectedSessions);
    v5 = objc_opt_new();
    lastTrainingFeaturizations = v2->_lastTrainingFeaturizations;
    v2->_lastTrainingFeaturizations = v5;
  }

  return v2;
}

@end
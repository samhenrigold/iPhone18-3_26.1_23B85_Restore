@interface NLModelTrainer
+ (id)modelTrainerWithConfiguration:(id)configuration dataSet:(id)set options:(id)options delegate:(id)delegate;
- (BOOL)shouldStop;
- (Class)modelImplClass;
- (NLModel)trainedModel;
- (NLModelTrainer)initWithConfiguration:(id)configuration dataSet:(id)set options:(id)options delegate:(id)delegate;
- (NSDictionary)testResults;
- (void)logMessage:(id)message;
- (void)trainModel;
@end

@implementation NLModelTrainer

- (NLModelTrainer)initWithConfiguration:(id)configuration dataSet:(id)set options:(id)options delegate:(id)delegate
{
  configurationCopy = configuration;
  setCopy = set;
  optionsCopy = options;
  delegateCopy = delegate;
  if (configurationCopy)
  {
    v22.receiver = self;
    v22.super_class = NLModelTrainer;
    v14 = [(NLModelTrainer *)&v22 init];
    if (v14)
    {
      v15 = [configurationCopy copy];
      configuration = v14->_configuration;
      v14->_configuration = v15;

      objc_storeStrong(&v14->_dataSet, set);
      v17 = [optionsCopy copy];
      options = v14->_options;
      v14->_options = v17;

      objc_storeStrong(&v14->_delegate, delegate);
      if (delegateCopy)
      {
        v14->_delegateRespondsToLogMessage = objc_opt_respondsToSelector() & 1;
        v19 = objc_opt_respondsToSelector();
      }

      else
      {
        v19 = 0;
        v14->_delegateRespondsToLogMessage = 0;
      }

      v14->_delegateRespondsToShouldStop = v19 & 1;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)modelTrainerWithConfiguration:(id)configuration dataSet:(id)set options:(id)options delegate:(id)delegate
{
  delegateCopy = delegate;
  optionsCopy = options;
  setCopy = set;
  configurationCopy = configuration;
  v14 = [[self alloc] initWithConfiguration:configurationCopy dataSet:setCopy options:optionsCopy delegate:delegateCopy];

  return v14;
}

- (Class)modelImplClass
{
  configuration = [(NLModelTrainer *)self configuration];
  options = [configuration options];
  BOOLForKeyWithDefault(options, @"UseCRF");

  configuration2 = [(NLModelTrainer *)self configuration];
  options2 = [configuration2 options];
  BOOLForKeyWithDefault(options2, @"UseRNN");

  configuration3 = [(NLModelTrainer *)self configuration];
  options3 = [configuration3 options];
  BOOLForKeyWithDefault(options3, @"UseTransfer");

  getenv("NLUseCRFSuiteMaxEnt");
  configuration4 = [(NLModelTrainer *)self configuration];
  options4 = [configuration4 options];
  v11 = [options4 objectForKey:@"Algorithm"];

  if (v11)
  {
    [v11 isEqualToString:@"CRF"];
    [v11 isEqualToString:@"RNN"];
    [v11 isEqualToString:@"Transfer"];
  }

  configuration5 = [(NLModelTrainer *)self configuration];
  type = [configuration5 type];

  if (type > 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_opt_class();
  }

  v15 = v14;

  return v14;
}

- (void)trainModel
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [objc_alloc(-[NLModelTrainer modelImplClass](self "modelImplClass"))];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = [NLModel alloc];
    configuration = [(NLModelTrainer *)self configuration];
    v8 = [(NLModel *)v6 initWithConfiguration:configuration modelImpl:v3];

    [(NLModelTrainer *)self setModel:v8];
  }

  else
  {
    if (!v4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Failed to train model";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v5 = [v9 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v10];
    }

    [(NLModelTrainer *)self setTrainingError:v5];
  }
}

- (NLModel)trainedModel
{
  model = self->_model;
  if (!model)
  {
    if (self->_trainingError)
    {
      model = 0;
    }

    else
    {
      [(NLModelTrainer *)self logMessage:@"Tokenizing data and extracting features"];
      dataSet = [(NLModelTrainer *)self dataSet];
      v5 = [dataSet dataProviderOfType:0];
      [v5 generateMapsWithModelTrainer:self];

      [(NLModelTrainer *)self trainModel];
      model = self->_model;
    }
  }

  return model;
}

- (NSDictionary)testResults
{
  model = [(NLModelTrainer *)self model];
  dataSet = [(NLModelTrainer *)self dataSet];
  v5 = [model testResultsWithDataSet:dataSet];

  return v5;
}

- (void)logMessage:(id)message
{
  if (self->_delegateRespondsToLogMessage)
  {
    [(NLModelTrainerDelegate *)self->_delegate modelTrainer:self logMessage:message];
  }
}

- (BOOL)shouldStop
{
  if (self->_delegateRespondsToShouldStop)
  {
    return [(NLModelTrainerDelegate *)self->_delegate modelTrainerShouldStop:self];
  }

  else
  {
    return 0;
  }
}

@end
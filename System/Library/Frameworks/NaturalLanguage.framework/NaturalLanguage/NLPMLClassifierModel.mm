@interface NLPMLClassifierModel
- (NLPMLClassifierModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation NLPMLClassifierModel

- (NLPMLClassifierModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  inputDescriptionsByName = [descriptionCopy inputDescriptionsByName];
  if ([inputDescriptionsByName count] != 1)
  {
    goto LABEL_10;
  }

  selfCopy = self;
  inputDescriptionsByName2 = [descriptionCopy inputDescriptionsByName];
  allValues = [inputDescriptionsByName2 allValues];
  v14 = [allValues objectAtIndexedSubscript:0];
  if ([v14 type] != 3)
  {
LABEL_9:

    self = selfCopy;
LABEL_10:

    goto LABEL_11;
  }

  v26 = dictionaryCopy;
  outputDescriptionsByName = [descriptionCopy outputDescriptionsByName];
  if ([outputDescriptionsByName count] != 1)
  {

    dictionaryCopy = v26;
    goto LABEL_9;
  }

  outputDescriptionsByName2 = [descriptionCopy outputDescriptionsByName];
  allValues2 = [outputDescriptionsByName2 allValues];
  v17 = [allValues2 objectAtIndexedSubscript:0];
  type = [v17 type];

  dictionaryCopy = v26;
  self = selfCopy;
  if (type == 3)
  {
    v18 = [v26 objectForKey:@"modelData"];
    v28.receiver = selfCopy;
    v28.super_class = NLPMLClassifierModel;
    v19 = [(NLModel *)&v28 initWithData:v18 error:error];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_modelDescription, description);
    }

    self = v20;
    selfCopy2 = self;
    goto LABEL_13;
  }

LABEL_11:
  if (!error)
  {
    selfCopy2 = 0;
    goto LABEL_15;
  }

  v22 = MEMORY[0x1E696ABC0];
  v29 = *MEMORY[0x1E696A578];
  v30[0] = @"Failed to load model file";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:v18];
  *error = selfCopy2 = 0;
LABEL_13:

LABEL_15:
  return selfCopy2;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  modelDescription = self->_modelDescription;
  featuresCopy = features;
  inputDescriptionsByName = [(MLModelDescription *)modelDescription inputDescriptionsByName];
  allKeys = [inputDescriptionsByName allKeys];
  v11 = [allKeys objectAtIndexedSubscript:0];

  outputDescriptionsByName = [(MLModelDescription *)self->_modelDescription outputDescriptionsByName];
  allKeys2 = [outputDescriptionsByName allKeys];
  v14 = [allKeys2 objectAtIndexedSubscript:0];

  v15 = [featuresCopy featureValueForName:v11];

  stringValue = [v15 stringValue];

  if (stringValue)
  {
    v17 = [(NLModel *)self predictedLabelForString:stringValue];
    v18 = objc_alloc(MEMORY[0x1E695FE48]);
    v24 = v14;
    v19 = [MEMORY[0x1E695FE60] featureValueWithString:v17];
    v25 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = [v18 initWithDictionary:v20 error:error];

LABEL_5:
    goto LABEL_6;
  }

  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Prediction failed due to missing input";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v17];
    *error = v21 = 0;
    goto LABEL_5;
  }

  v21 = 0;
LABEL_6:

  return v21;
}

@end
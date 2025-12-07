@interface PPSanitizedStringFilter
- (PPSanitizedStringFilter)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation PPSanitizedStringFilter

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  v10 = [featuresCopy featureValueForName:self->_inputName];
  stringValue = [v10 stringValue];

  if (stringValue)
  {
    errorCopy = error;
    v12 = optionsCopy;
    alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v14 = [stringValue rangeOfCharacterFromSet:alphanumericCharacterSet];

    v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"0123456789., "}];
    invertedSet = [v15 invertedSet];

    v17 = [stringValue rangeOfCharacterFromSet:invertedSet];
    if (v14)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 == 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v18;
    v20 = objc_alloc(MEMORY[0x277CBFED0]);
    outputName = self->_outputName;
    v21 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    v34 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v23 = [PPCoreMLUtils _multiArrayForNumberArray:v22];
    v36 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&outputName count:1];
    v32 = 0;
    v25 = [v20 initWithDictionary:v24 error:&v32];
    v26 = v32;

    optionsCopy = v12;
    error = errorCopy;
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x277CBFED0]);
    v38 = self->_outputName;
    invertedSet = [MEMORY[0x277CCABB0] numberWithInt:1];
    v37 = invertedSet;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v22 = [PPCoreMLUtils _multiArrayForNumberArray:v21];
    v39[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v33 = 0;
    v25 = [v27 initWithDictionary:v23 error:&v33];
    v26 = v33;
  }

  objc_autoreleasePoolPop(context);
  if (error)
  {
    v28 = v26;
    *error = v26;
  }

  return v25;
}

- (PPSanitizedStringFilter)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PPSanitizedStringFilter;
  v7 = [(PPSanitizedStringFilter *)&v13 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"inputName"];
    inputName = v7->_inputName;
    v7->_inputName = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"outputName"];
    outputName = v7->_outputName;
    v7->_outputName = v10;
  }

  return v7;
}

@end
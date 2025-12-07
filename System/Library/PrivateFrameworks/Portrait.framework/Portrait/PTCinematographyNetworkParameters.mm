@interface PTCinematographyNetworkParameters
- (PTCinematographyNetworkParameters)initWithURL:(id)l;
- (void)_processInputSchemaDicts:(id)dicts;
@end

@implementation PTCinematographyNetworkParameters

- (PTCinematographyNetworkParameters)initWithURL:(id)l
{
  lCopy = l;
  v5 = [MEMORY[0x277CBEAE0] inputStreamWithURL:lCopy];
  [v5 open];
  v25 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v5 options:0 error:&v25];
  v7 = v25;
  v8 = v7;
  if (v7)
  {
    v9 = _PTLogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetworkParameters initWithURL:];
    }

LABEL_10:

    selfCopy = 0;
    goto LABEL_11;
  }

  v10 = objc_opt_respondsToSelector();
  if ((v10 & 1) == 0)
  {
    v9 = _PTLogSystem(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyNetworkParameters *)v6 initWithURL:lCopy, v9];
    }

    goto LABEL_10;
  }

  v24.receiver = self;
  v24.super_class = PTCinematographyNetworkParameters;
  v11 = [(PTCinematographyNetworkParameters *)&v24 init];
  if (v11)
  {
    v12 = [(objc_class *)v6 objectForKeyedSubscript:@"expected_fps"];
    [v12 floatValue];
    v11->_expectedFPS = v13;

    v14 = [(objc_class *)v6 objectForKeyedSubscript:@"detections"];
    v15 = [v14 objectForKeyedSubscript:@"forget_after_seconds"];
    [v15 floatValue];
    v11->_forgetDetectionsAfterSeconds = v16;

    v17 = [(objc_class *)v6 objectForKeyedSubscript:@"sync_with_detector"];
    v11->_runOnlyWhenDetectorDidRun = [v17 BOOLValue];

    v18 = [(objc_class *)v6 objectForKeyedSubscript:@"supported_detection_types"];
    if (v18)
    {
      [MEMORY[0x277CBEB98] setWithArray:v18];
    }

    else
    {
      [(PTCinematographyNetworkParameters *)v11 _defaultSupportedDetectionTypes];
    }
    v19 = ;
    supportedDetectionTypes = v11->_supportedDetectionTypes;
    v11->_supportedDetectionTypes = v19;

    v23 = [(objc_class *)v6 objectForKeyedSubscript:@"input_schemas"];
    [(PTCinematographyNetworkParameters *)v11 _processInputSchemaDicts:v23];
  }

  self = v11;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)_processInputSchemaDicts:(id)dicts
{
  v21 = *MEMORY[0x277D85DE8];
  dictsCopy = dicts;
  array = [MEMORY[0x277CBEB18] array];
  self->_totalInputFloatCount = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dictsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [PTCinematographyNetworkInputSchema alloc];
        v13 = [(PTCinematographyNetworkInputSchema *)v12 initWithModelDictionary:v11, v16];
        [array addObject:v13];
        self->_totalInputFloatCount += [(PTCinematographyNetworkInputSchema *)v13 count];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [array copy];
  inputSchemas = self->_inputSchemas;
  self->_inputSchemas = v14;
}

- (void)initWithURL:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  v3 = v0;
  _os_log_error_impl(&dword_2243FB000, v1, OS_LOG_TYPE_ERROR, "error %@ reading network parameters %@", v2, 0x16u);
}

- (void)initWithURL:(NSObject *)a3 .cold.2(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_0_13();
  v7 = a2;
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "expected a dictionary, got a %@ from network parameters %@", v6, 0x16u);
}

@end
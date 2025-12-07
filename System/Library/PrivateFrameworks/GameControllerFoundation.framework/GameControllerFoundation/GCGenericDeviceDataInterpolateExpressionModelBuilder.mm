@interface GCGenericDeviceDataInterpolateExpressionModelBuilder
- (GCGenericDeviceDataInterpolateExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataInterpolateExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v10 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputExpression:inputExpression];

  inputMinExpression = [modelCopy inputMinExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMinExpression:inputMinExpression];

  inputMaxExpression = [modelCopy inputMaxExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMaxExpression:inputMaxExpression];

  outputMinExpression = [modelCopy outputMinExpression];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMinExpression:outputMinExpression];

  outputMaxExpression = [modelCopy outputMaxExpression];

  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMaxExpression:outputMaxExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMinExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setInputMaxExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMinExpression:0];
  [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self setOutputMaxExpression:0];
}

- (id)build
{
  v20.receiver = self;
  v20.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v20 build];
  inputExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v5 = [inputExpression copy];
  v6 = build[1];
  build[1] = v5;

  inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputMinExpression];
  if (!inputMinExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v8 = [inputMinExpression copy];
  v9 = build[2];
  build[2] = v8;

  inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self inputMaxExpression];
  if (!inputMaxExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v11 = [inputMaxExpression copy];
  v12 = build[3];
  build[3] = v11;

  outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self outputMinExpression];
  if (!outputMinExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v14 = [outputMinExpression copy];
  v15 = build[4];
  build[4] = v14;

  outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModelBuilder *)self outputMaxExpression];
  if (!outputMaxExpression)
  {
    [GCGenericDeviceDataInterpolateExpressionModelBuilder build];
  }

  v17 = [outputMaxExpression copy];
  v18 = build[5];
  build[5] = v17;

  return build;
}

- (GCGenericDeviceDataInterpolateExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v76[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v56.receiver = self;
  v56.super_class = GCGenericDeviceDataInterpolateExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v56 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_62;
  }

  objc_opt_class();
  v55[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v18 = MEMORY[0x1E696ABC0];
    v75[0] = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v76[0] = v19;
    v75[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v76[1] = localizedFailureReason;
    v21 = MEMORY[0x1E695DF20];
    v22 = v76;
    v23 = v75;
LABEL_48:
    v43 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:2];
    *error = [(NSError *)v18 gc_modelError:v43 userInfo:?];

    goto LABEL_49;
  }

  v55[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v55];
  v11 = v55[0];

  if (!v10)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v73[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v25 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v49 = localizedDescription;
      v74[0] = localizedDescription;
      v73[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v74[1] = v27;
      v73[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null;
      v74[2] = null;
      v73[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v30 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v74[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v74;
      v33 = v73;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setInputExpression:?];

  objc_opt_class();
  v54[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v18 = MEMORY[0x1E696ABC0];
    v71[0] = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v72[0] = v19;
    v71[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v72[1] = localizedFailureReason;
    v21 = MEMORY[0x1E695DF20];
    v22 = v72;
    v23 = v71;
    goto LABEL_48;
  }

  v54[0] = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v54];
  v11 = v54[0];

  if (!v12)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v69[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v25 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMinExpression"];
      }

      v49 = localizedDescription2;
      v70[0] = localizedDescription2;
      v69[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v70[1] = v35;
      v69[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null2;
      v70[2] = null2;
      v69[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v30 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v70[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v70;
      v33 = v69;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setInputMinExpression:?];

  objc_opt_class();
  v53[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v18 = MEMORY[0x1E696ABC0];
    v67[0] = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v68[0] = v19;
    v67[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v68[1] = localizedFailureReason;
    v21 = MEMORY[0x1E695DF20];
    v22 = v68;
    v23 = v67;
    goto LABEL_48;
  }

  v53[0] = 0;
  v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v53];
  v11 = v53[0];

  if (!v13)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v65[0] = *MEMORY[0x1E696A578];
      localizedDescription3 = [v11 localizedDescription];
      v25 = localizedDescription3;
      if (!localizedDescription3)
      {
        localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMaxExpression"];
      }

      v49 = localizedDescription3;
      v66[0] = localizedDescription3;
      v65[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v66[1] = v38;
      v65[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null3;
      v66[2] = null3;
      v65[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v30 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v66[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v66;
      v33 = v65;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setInputMaxExpression:?];

  objc_opt_class();
  v52[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_49;
    }

    v18 = MEMORY[0x1E696ABC0];
    v63[0] = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v64[0] = v19;
    v63[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v64[1] = localizedFailureReason;
    v21 = MEMORY[0x1E695DF20];
    v22 = v64;
    v23 = v63;
    goto LABEL_48;
  }

  v52[0] = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v52];
  v11 = v52[0];

  if (!v14)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      localizedDescription4 = [v11 localizedDescription];
      v25 = localizedDescription4;
      if (!localizedDescription4)
      {
        localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"OutputMinExpression"];
      }

      v49 = localizedDescription4;
      v62[0] = localizedDescription4;
      v61[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v62[1] = v41;
      v61[2] = *MEMORY[0x1E696AA08];
      null4 = v11;
      if (!v11)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null4;
      v62[2] = null4;
      v61[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v30 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v62[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v62;
      v33 = v61;
      goto LABEL_56;
    }

LABEL_61:

    goto LABEL_62;
  }

  [OUTLINED_FUNCTION_0() setOutputMinExpression:?];

  objc_opt_class();
  v51[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v59[0] = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v60[0] = v19;
      v59[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v60[1] = localizedFailureReason;
      v21 = MEMORY[0x1E695DF20];
      v22 = v60;
      v23 = v59;
      goto LABEL_48;
    }

LABEL_49:

LABEL_62:
    v16 = 0;
    goto LABEL_13;
  }

  v51[0] = 0;
  v15 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v51];
  v11 = v51[0];

  if (!v15)
  {
    if (error)
    {
      v50 = MEMORY[0x1E696ABC0];
      v57[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [v11 localizedDescription];
      v25 = localizedDescription5;
      if (!localizedDescription5)
      {
        localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"OutputMaxExpression"];
      }

      v49 = localizedDescription5;
      v58[0] = localizedDescription5;
      v57[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v58[1] = v45;
      v57[2] = *MEMORY[0x1E696AA08];
      null5 = v11;
      if (!v11)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      v48 = null5;
      v58[2] = null5;
      v57[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v30 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v58[3] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v58;
      v33 = v57;
LABEL_56:
      v47 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:4];
      *error = [(NSError *)v50 gc_modelError:v47 userInfo:?];

      if (!v11)
      {
      }

      if (!v25)
      {
      }

      goto LABEL_61;
    }

    goto LABEL_61;
  }

  [OUTLINED_FUNCTION_0() setOutputMaxExpression:?];

  v16 = v7;
LABEL_13:

  return v16;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
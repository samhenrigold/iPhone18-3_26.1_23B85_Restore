@interface GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder
- (GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v11 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputExpression:inputExpression];

  inputMinExpression = [modelCopy inputMinExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMinExpression:inputMinExpression];

  inputMaxExpression = [modelCopy inputMaxExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMaxExpression:inputMaxExpression];

  maskExpression = [modelCopy maskExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setMaskExpression:maskExpression];

  trueExpression = [modelCopy trueExpression];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setTrueExpression:trueExpression];

  falseExpression = [modelCopy falseExpression];

  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setFalseExpression:falseExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMinExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setInputMaxExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setMaskExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setTrueExpression:0];
  [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self setFalseExpression:0];
}

- (id)build
{
  v23.receiver = self;
  v23.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v23 build];
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v5 = [inputExpression copy];
  v6 = build[1];
  build[1] = v5;

  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputMinExpression];
  if (!inputMinExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v8 = [inputMinExpression copy];
  v9 = build[2];
  build[2] = v8;

  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self inputMaxExpression];
  if (!inputMaxExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v11 = [inputMaxExpression copy];
  v12 = build[3];
  build[3] = v11;

  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self maskExpression];
  if (!maskExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v14 = [maskExpression copy];
  v15 = build[4];
  build[4] = v14;

  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self trueExpression];
  if (!trueExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v17 = [trueExpression copy];
  v18 = build[5];
  build[5] = v17;

  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder *)self falseExpression];
  if (!falseExpression)
  {
    [GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder build];
  }

  v20 = [falseExpression copy];
  v21 = build[6];
  build[6] = v20;

  return build;
}

- (GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v85[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v61.receiver = self;
  v61.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v61 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_72;
  }

  objc_opt_class();
  v60[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v19 = MEMORY[0x1E696ABC0];
    v84[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v85[0] = v20;
    v84[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v85[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v85;
    v24 = v84;
LABEL_58:
    v47 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
    *error = [(NSError *)v19 gc_modelError:v47 userInfo:?];

    goto LABEL_59;
  }

  v60[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v60];
  v11 = v60[0];

  if (!v10)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v82[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v26 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v53 = localizedDescription;
      v83[0] = localizedDescription;
      v82[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v83[1] = v28;
      v82[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null;
      v83[2] = null;
      v82[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v83[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v83;
      v34 = v82;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setInputExpression:?];

  objc_opt_class();
  v59[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v19 = MEMORY[0x1E696ABC0];
    v80[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v81[0] = v20;
    v80[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v81[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v81;
    v24 = v80;
    goto LABEL_58;
  }

  v59[0] = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v59];
  v11 = v59[0];

  if (!v12)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v78[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v26 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMinExpression"];
      }

      v53 = localizedDescription2;
      v79[0] = localizedDescription2;
      v78[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v79[1] = v36;
      v78[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null2;
      v79[2] = null2;
      v78[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v79[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v79;
      v34 = v78;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setInputMinExpression:?];

  objc_opt_class();
  v58[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v19 = MEMORY[0x1E696ABC0];
    v76[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v77[0] = v20;
    v76[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v77[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v77;
    v24 = v76;
    goto LABEL_58;
  }

  v58[0] = 0;
  v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v58];
  v11 = v58[0];

  if (!v13)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      localizedDescription3 = [v11 localizedDescription];
      v26 = localizedDescription3;
      if (!localizedDescription3)
      {
        localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputMaxExpression"];
      }

      v53 = localizedDescription3;
      v75[0] = localizedDescription3;
      v74[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v75[1] = v39;
      v74[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null3;
      v75[2] = null3;
      v74[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v75[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v75;
      v34 = v74;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setInputMaxExpression:?];

  objc_opt_class();
  v57[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v19 = MEMORY[0x1E696ABC0];
    v72[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v73[0] = v20;
    v72[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v73[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v73;
    v24 = v72;
    goto LABEL_58;
  }

  v57[0] = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v57];
  v11 = v57[0];

  if (!v14)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      localizedDescription4 = [v11 localizedDescription];
      v26 = localizedDescription4;
      if (!localizedDescription4)
      {
        localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaskExpression"];
      }

      v53 = localizedDescription4;
      v71[0] = localizedDescription4;
      v70[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v71[1] = v42;
      v70[2] = *MEMORY[0x1E696AA08];
      null4 = v11;
      if (!v11)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null4;
      v71[2] = null4;
      v70[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v71[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v71;
      v34 = v70;
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setMaskExpression:?];

  objc_opt_class();
  v56[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v19 = MEMORY[0x1E696ABC0];
    v68[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v69[0] = v20;
    v68[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v69[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v69;
    v24 = v68;
    goto LABEL_58;
  }

  v56[0] = 0;
  v15 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v56];
  v11 = v56[0];

  if (!v15)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      localizedDescription5 = [v11 localizedDescription];
      v26 = localizedDescription5;
      if (!localizedDescription5)
      {
        localizedDescription5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v53 = localizedDescription5;
      v67[0] = localizedDescription5;
      v66[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v67[1] = v45;
      v66[2] = *MEMORY[0x1E696AA08];
      null5 = v11;
      if (!v11)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null5;
      v67[2] = null5;
      v66[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v67[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v67;
      v34 = v66;
      goto LABEL_66;
    }

LABEL_71:

    goto LABEL_72;
  }

  [OUTLINED_FUNCTION_0() setTrueExpression:?];

  objc_opt_class();
  v55[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v64[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v65[0] = v20;
      v64[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v65[1] = localizedFailureReason;
      v22 = MEMORY[0x1E695DF20];
      v23 = v65;
      v24 = v64;
      goto LABEL_58;
    }

LABEL_59:

LABEL_72:
    v17 = 0;
    goto LABEL_15;
  }

  v55[0] = 0;
  v16 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v55];
  v11 = v55[0];

  if (!v16)
  {
    if (error)
    {
      v54 = MEMORY[0x1E696ABC0];
      v62[0] = *MEMORY[0x1E696A578];
      localizedDescription6 = [v11 localizedDescription];
      v26 = localizedDescription6;
      if (!localizedDescription6)
      {
        localizedDescription6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v53 = localizedDescription6;
      v63[0] = localizedDescription6;
      v62[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v63[1] = v49;
      v62[2] = *MEMORY[0x1E696AA08];
      null6 = v11;
      if (!v11)
      {
        null6 = [MEMORY[0x1E695DFB0] null];
      }

      v52 = null6;
      v63[2] = null6;
      v62[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v63[3] = v31;
      v32 = MEMORY[0x1E695DF20];
      v33 = v63;
      v34 = v62;
LABEL_66:
      v51 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:4];
      *error = [(NSError *)v54 gc_modelError:v51 userInfo:?];

      if (!v11)
      {
      }

      if (!v26)
      {
      }

      goto LABEL_71;
    }

    goto LABEL_71;
  }

  [OUTLINED_FUNCTION_0() setFalseExpression:?];

  v17 = v7;
LABEL_15:

  return v17;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
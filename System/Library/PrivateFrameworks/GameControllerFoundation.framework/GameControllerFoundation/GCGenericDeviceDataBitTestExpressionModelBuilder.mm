@interface GCGenericDeviceDataBitTestExpressionModelBuilder
- (GCGenericDeviceDataBitTestExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataBitTestExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v10 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setInputExpression:inputExpression];

  maskExpression = [modelCopy maskExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setMaskExpression:maskExpression];

  trueExpression = [modelCopy trueExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setTrueExpression:trueExpression];

  falseExpression = [modelCopy falseExpression];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setFalseExpression:falseExpression];

  partialMatch = [modelCopy partialMatch];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setPartialMatch:partialMatch];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setMaskExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setTrueExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setFalseExpression:0];
  [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self setPartialMatch:1];
}

- (id)build
{
  v17.receiver = self;
  v17.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v17 build];
  inputExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v5 = [inputExpression copy];
  v6 = *(build + 8);
  *(build + 8) = v5;

  maskExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self maskExpression];
  if (!maskExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v8 = [maskExpression copy];
  v9 = *(build + 16);
  *(build + 16) = v8;

  trueExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self trueExpression];
  if (!trueExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v11 = [trueExpression copy];
  v12 = *(build + 24);
  *(build + 24) = v11;

  falseExpression = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self falseExpression];
  if (!falseExpression)
  {
    [GCGenericDeviceDataBitTestExpressionModelBuilder build];
  }

  v14 = [falseExpression copy];
  v15 = *(build + 32);
  *(build + 32) = v14;

  *(build + 40) = [(GCGenericDeviceDataBitTestExpressionModelBuilder *)self partialMatch];

  return build;
}

- (GCGenericDeviceDataBitTestExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v77[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v59.receiver = self;
  v59.super_class = GCGenericDeviceDataBitTestExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v59 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_56;
  }

  objc_opt_class();
  v58[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_43;
    }

    v20 = MEMORY[0x1E696ABC0];
    v76[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v77[0] = v21;
    v76[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v77[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v77;
    v25 = v76;
LABEL_42:
    v42 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
    *error = [(NSError *)v20 gc_modelError:v42 userInfo:?];

    goto LABEL_43;
  }

  v58[0] = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v58];
  v11 = v58[0];

  if (!v10)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v74[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v27 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v52 = localizedDescription;
      v75[0] = localizedDescription;
      v74[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v75[1] = v29;
      v74[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v51 = null;
      v75[2] = null;
      v74[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v75[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v75;
      v35 = v74;
      goto LABEL_50;
    }

    goto LABEL_55;
  }

  [OUTLINED_FUNCTION_0() setInputExpression:?];

  objc_opt_class();
  v57[1] = 0;
  v8 = [OUTLINED_FUNCTION_1() gc_requiredObjectForKey:? ofClass:? error:?];
  v9 = 0;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_43;
    }

    v20 = MEMORY[0x1E696ABC0];
    v72[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v73[0] = v21;
    v72[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v73[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v73;
    v25 = v72;
    goto LABEL_42;
  }

  v57[0] = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v57];
  v11 = v57[0];

  if (!v12)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v27 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaskExpression"];
      }

      v52 = localizedDescription2;
      v71[0] = localizedDescription2;
      v70[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v71[1] = v37;
      v70[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v51 = null2;
      v71[2] = null2;
      v70[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v71[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v71;
      v35 = v70;
      goto LABEL_50;
    }

    goto LABEL_55;
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
      goto LABEL_43;
    }

    v20 = MEMORY[0x1E696ABC0];
    v68[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v69[0] = v21;
    v68[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v69[1] = localizedFailureReason;
    v23 = MEMORY[0x1E695DF20];
    v24 = v69;
    v25 = v68;
    goto LABEL_42;
  }

  v56[0] = 0;
  v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v56];
  v11 = v56[0];

  if (!v13)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      localizedDescription3 = [v11 localizedDescription];
      v27 = localizedDescription3;
      if (!localizedDescription3)
      {
        localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v52 = localizedDescription3;
      v67[0] = localizedDescription3;
      v66[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v67[1] = v40;
      v66[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v51 = null3;
      v67[2] = null3;
      v66[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v67[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v67;
      v35 = v66;
      goto LABEL_50;
    }

LABEL_55:

    goto LABEL_56;
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
      v20 = MEMORY[0x1E696ABC0];
      v64[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v65[0] = v21;
      v64[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v65[1] = localizedFailureReason;
      v23 = MEMORY[0x1E695DF20];
      v24 = v65;
      v25 = v64;
      goto LABEL_42;
    }

LABEL_43:

LABEL_56:
    v18 = 0;
    goto LABEL_15;
  }

  v55[0] = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:v55];
  v11 = v55[0];

  if (!v14)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v62[0] = *MEMORY[0x1E696A578];
      localizedDescription4 = [v11 localizedDescription];
      v27 = localizedDescription4;
      if (!localizedDescription4)
      {
        localizedDescription4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v52 = localizedDescription4;
      v63[0] = localizedDescription4;
      v62[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      OUTLINED_FUNCTION_5();
      v63[1] = v44;
      v62[2] = *MEMORY[0x1E696AA08];
      null4 = v11;
      if (!v11)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v51 = null4;
      v63[2] = null4;
      v62[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v32 = [OUTLINED_FUNCTION_4(gc_failingKeyPath MEMORY[0x1E695E0F0])];
      v63[3] = v32;
      v33 = MEMORY[0x1E695DF20];
      v34 = v63;
      v35 = v62;
LABEL_50:
      v46 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:4];
      *error = [(NSError *)v53 gc_modelError:v46 userInfo:?];

      if (!v11)
      {
      }

      if (!v27)
      {
      }

      goto LABEL_55;
    }

    goto LABEL_55;
  }

  [OUTLINED_FUNCTION_0() setFalseExpression:?];

  v54 = 0;
  v15 = [representationCopy gc_objectForKey:@"PartialMatch" ofClass:objc_opt_class() error:&v54];
  v16 = v54;
  v17 = v16;
  if (!v15 && v16)
  {
    if (error)
    {
      v47 = MEMORY[0x1E696ABC0];
      v60[0] = *MEMORY[0x1E696A578];
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v61[0] = v48;
      v60[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v17 localizedFailureReason];
      v61[1] = localizedFailureReason3;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
      *error = [(NSError *)v47 gc_modelError:v50 userInfo:?];
    }

    goto LABEL_56;
  }

  if (v15)
  {
    -[GCGenericDeviceDataBitTestExpressionModelBuilder setPartialMatch:](v7, "setPartialMatch:", [v15 BOOLValue]);
  }

  v18 = v7;
LABEL_15:

  return v18;
}

- (void)build
{
  OUTLINED_FUNCTION_3();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
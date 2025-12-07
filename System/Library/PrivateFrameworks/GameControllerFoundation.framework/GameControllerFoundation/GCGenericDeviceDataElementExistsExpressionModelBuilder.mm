@interface GCGenericDeviceDataElementExistsExpressionModelBuilder
- (GCGenericDeviceDataElementExistsExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataElementExistsExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v8 initializeWithModel:modelCopy];
  elementIdentifier = [modelCopy elementIdentifier];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setElementIdentifier:elementIdentifier];

  trueExpression = [modelCopy trueExpression];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setTrueExpression:trueExpression];

  falseExpression = [modelCopy falseExpression];

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setFalseExpression:falseExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self setElementIdentifier:0];
}

- (id)build
{
  v15.receiver = self;
  v15.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v15 build];
  elementIdentifier = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self elementIdentifier];
  if (!elementIdentifier)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v6 = [elementIdentifier copy];
  v7 = build[1];
  build[1] = v6;

  trueExpression = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self trueExpression];
  if (!trueExpression)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v9 = [trueExpression copy];
  v10 = build[2];
  build[2] = v9;

  falseExpression = [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)self falseExpression];
  if (!falseExpression)
  {
    [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)a2 build];
  }

  v12 = [falseExpression copy];
  v13 = build[3];
  build[3] = v12;

  return build;
}

- (GCGenericDeviceDataElementExistsExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v65[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v55.receiver = self;
  v55.super_class = GCGenericDeviceDataElementExistsExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v55 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_44;
  }

  v54 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v54];
  v9 = v54;
  if (!v8)
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v64[0] = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v65[0] = v18;
      v64[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v65[1] = localizedFailureReason;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
      *error = [(NSError *)v17 gc_modelError:v20 userInfo:?];
    }

    goto LABEL_44;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v53 = 0;
  v10 = [representationCopy gc_requiredObjectForKey:@"TrueExpression" ofClass:objc_opt_class() error:&v53];
  v11 = v53;
  if (!v10)
  {
    if (error)
    {
      v62[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v63[0] = v21;
      v62[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v63[1] = localizedFailureReason2;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
      objc_claimAutoreleasedReturnValue();
      v23 = OUTLINED_FUNCTION_0_14();
      *error = [(NSError *)v23 gc_modelError:v24 userInfo:v25];
LABEL_26:
    }

LABEL_27:

LABEL_44:
    v15 = 0;
    goto LABEL_8;
  }

  v52 = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v10 error:&v52];
  v13 = v52;

  if (!v12)
  {
    if (error)
    {
      v49 = MEMORY[0x1E696ABC0];
      v60[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v13 localizedDescription];
      v27 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"TrueExpression"];
      }

      v48 = localizedDescription;
      v61[0] = localizedDescription;
      v60[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v13 localizedFailureReason];
      v29 = localizedFailureReason3;
      v30 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason3)
      {
        v30 = localizedFailureReason3;
      }

      v61[1] = v30;
      v60[2] = *MEMORY[0x1E696AA08];
      null = v13;
      if (!v13)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v47 = null;
      v61[2] = null;
      v60[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v13 gc_failingKeyPath];
      v33 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v34 = [gc_failingKeyPath arrayByAddingObject:@"TrueExpression"];
      v61[3] = v34;
      v35 = MEMORY[0x1E695DF20];
      v36 = v61;
      v37 = v60;
      goto LABEL_38;
    }

LABEL_43:

    goto LABEL_44;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setTrueExpression:v12];

  v51 = 0;
  v10 = [representationCopy gc_requiredObjectForKey:@"FalseExpression" ofClass:objc_opt_class() error:&v51];
  v11 = v51;
  if (!v10)
  {
    if (error)
    {
      v58[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v59[0] = v21;
      v58[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v59[1] = localizedFailureReason2;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      objc_claimAutoreleasedReturnValue();
      v38 = OUTLINED_FUNCTION_0_14();
      *error = [(NSError *)v38 gc_modelError:v39 userInfo:v40];
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v50 = 0;
  v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v10 error:&v50];
  v13 = v50;

  if (!v14)
  {
    if (error)
    {
      v49 = MEMORY[0x1E696ABC0];
      v56[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v13 localizedDescription];
      v27 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"FalseExpression"];
      }

      v48 = localizedDescription2;
      v57[0] = localizedDescription2;
      v56[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v13 localizedFailureReason];
      v29 = localizedFailureReason4;
      v43 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason4)
      {
        v43 = localizedFailureReason4;
      }

      v57[1] = v43;
      v56[2] = *MEMORY[0x1E696AA08];
      null2 = v13;
      if (!v13)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v47 = null2;
      v57[2] = null2;
      v56[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath2 = [v13 gc_failingKeyPath];
      v33 = gc_failingKeyPath2;
      if (!gc_failingKeyPath2)
      {
        gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
      }

      v34 = [gc_failingKeyPath2 arrayByAddingObject:@"FalseExpression"];
      v57[3] = v34;
      v35 = MEMORY[0x1E695DF20];
      v36 = v57;
      v37 = v56;
LABEL_38:
      v46 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:4];
      *error = [(NSError *)v49 gc_modelError:v46 userInfo:?];

      if (!v13)
      {
      }

      if (!v27)
      {
      }

      goto LABEL_43;
    }

    goto LABEL_43;
  }

  [(GCGenericDeviceDataElementExistsExpressionModelBuilder *)v7 setFalseExpression:v14];

  v15 = v7;
LABEL_8:

  return v15;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataElementExistsExpressionModel.m" lineNumber:119 description:@"'falseExpression' can not be nil"];
}

@end
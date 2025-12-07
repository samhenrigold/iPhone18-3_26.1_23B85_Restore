@interface GCGenericDeviceDataAddExpressionModelBuilder
- (GCGenericDeviceDataAddExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataAddExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:modelCopy];
  leftExpression = [modelCopy leftExpression];
  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setLeftExpression:leftExpression];

  rightExpression = [modelCopy rightExpression];

  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setRightExpression:rightExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setLeftExpression:0];
  [(GCGenericDeviceDataAddExpressionModelBuilder *)self setRightExpression:0];
}

- (id)build
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v12 build];
  leftExpression = [(GCGenericDeviceDataAddExpressionModelBuilder *)self leftExpression];
  if (!leftExpression)
  {
    [(GCGenericDeviceDataAddExpressionModelBuilder *)a2 build];
  }

  v6 = [leftExpression copy];
  v7 = build[1];
  build[1] = v6;

  rightExpression = [(GCGenericDeviceDataAddExpressionModelBuilder *)self rightExpression];
  if (!rightExpression)
  {
    [(GCGenericDeviceDataAddExpressionModelBuilder *)a2 build];
  }

  v9 = [rightExpression copy];
  v10 = build[2];
  build[2] = v9;

  return build;
}

- (GCGenericDeviceDataAddExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v55[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v47.receiver = self;
  v47.super_class = GCGenericDeviceDataAddExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v47 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_40;
  }

  v46 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"LeftExpression" ofClass:objc_opt_class() error:&v46];
  v9 = v46;
  if (!v8)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v54[0] = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v55[0] = v16;
      v54[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v55[1] = localizedFailureReason;
      v18 = MEMORY[0x1E695DF20];
      v19 = v55;
      v20 = v54;
LABEL_22:
      v33 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:2];
      *error = [(NSError *)v15 gc_modelError:v33 userInfo:?];
    }

LABEL_23:

LABEL_40:
    v13 = 0;
    goto LABEL_7;
  }

  v45 = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v45];
  v11 = v45;

  if (!v10)
  {
    if (error)
    {
      v42 = MEMORY[0x1E696ABC0];
      v52[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      v22 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"LeftExpression"];
      }

      v41 = localizedDescription;
      v53[0] = localizedDescription;
      v52[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v24 = localizedFailureReason2;
      v25 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason2)
      {
        v25 = localizedFailureReason2;
      }

      v53[1] = v25;
      v52[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v40 = null;
      v53[2] = null;
      v52[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v28 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v29 = [gc_failingKeyPath arrayByAddingObject:@"LeftExpression"];
      v53[3] = v29;
      v30 = MEMORY[0x1E695DF20];
      v31 = v53;
      v32 = v52;
      goto LABEL_34;
    }

LABEL_39:

    goto LABEL_40;
  }

  [(GCGenericDeviceDataAddExpressionModelBuilder *)v7 setLeftExpression:v10];

  v44 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"RightExpression" ofClass:objc_opt_class() error:&v44];
  v9 = v44;
  if (!v8)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v50[0] = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v51[0] = v16;
      v50[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v51[1] = localizedFailureReason;
      v18 = MEMORY[0x1E695DF20];
      v19 = v51;
      v20 = v50;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v43 = 0;
  v12 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v43];
  v11 = v43;

  if (!v12)
  {
    if (error)
    {
      v42 = MEMORY[0x1E696ABC0];
      v48[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      v22 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"RightExpression"];
      }

      v41 = localizedDescription2;
      v49[0] = localizedDescription2;
      v48[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v11 localizedFailureReason];
      v24 = localizedFailureReason3;
      v36 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason3)
      {
        v36 = localizedFailureReason3;
      }

      v49[1] = v36;
      v48[2] = *MEMORY[0x1E696AA08];
      null2 = v11;
      if (!v11)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v40 = null2;
      v49[2] = null2;
      v48[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath2 = [v11 gc_failingKeyPath];
      v28 = gc_failingKeyPath2;
      if (!gc_failingKeyPath2)
      {
        gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
      }

      v29 = [gc_failingKeyPath2 arrayByAddingObject:@"RightExpression"];
      v49[3] = v29;
      v30 = MEMORY[0x1E695DF20];
      v31 = v49;
      v32 = v48;
LABEL_34:
      v39 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:4];
      *error = [(NSError *)v42 gc_modelError:v39 userInfo:?];

      if (!v11)
      {
      }

      if (!v22)
      {
      }

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  [(GCGenericDeviceDataAddExpressionModelBuilder *)v7 setRightExpression:v12];

  v13 = v7;
LABEL_7:

  return v13;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataAddExpressionModel.m" lineNumber:108 description:@"'rightExpression' can not be nil"];
}

@end
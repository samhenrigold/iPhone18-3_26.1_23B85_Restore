@interface GCGenericDeviceDataClampExpressionModelBuilder
- (GCGenericDeviceDataClampExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataClampExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v8 initializeWithModel:modelCopy];
  inputExpression = [modelCopy inputExpression];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setInputExpression:inputExpression];

  minExpression = [modelCopy minExpression];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMinExpression:minExpression];

  maxExpression = [modelCopy maxExpression];

  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMaxExpression:maxExpression];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setInputExpression:0];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMinExpression:0];
  [(GCGenericDeviceDataClampExpressionModelBuilder *)self setMaxExpression:0];
}

- (id)build
{
  v15.receiver = self;
  v15.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v15 build];
  inputExpression = [(GCGenericDeviceDataClampExpressionModelBuilder *)self inputExpression];
  if (!inputExpression)
  {
    [(GCGenericDeviceDataClampExpressionModelBuilder *)a2 build];
  }

  v6 = [inputExpression copy];
  v7 = build[1];
  build[1] = v6;

  minExpression = [(GCGenericDeviceDataClampExpressionModelBuilder *)self minExpression];
  v9 = [minExpression copy];
  v10 = build[2];
  build[2] = v9;

  maxExpression = [(GCGenericDeviceDataClampExpressionModelBuilder *)self maxExpression];
  v12 = [maxExpression copy];
  v13 = build[3];
  build[3] = v12;

  return build;
}

- (GCGenericDeviceDataClampExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v78[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v66.receiver = self;
  v66.super_class = GCGenericDeviceDataClampExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v66 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_66;
  }

  v65 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"InputExpression" ofClass:objc_opt_class() error:&v65];
  v9 = v65;
  if (!v8)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v77[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v78[0] = v20;
      v77[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v78[1] = localizedFailureReason;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
      *error = [(NSError *)v19 gc_modelError:v22 userInfo:?];
    }

    goto LABEL_66;
  }

  v64 = 0;
  v10 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v64];
  v11 = v64;

  if (!v10)
  {
    if (error)
    {
      errorCopy = error;
      v58 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v11 localizedDescription];
      localizedDescription2 = localizedDescription;
      if (!localizedDescription)
      {
        localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"InputExpression"];
      }

      v56 = localizedDescription;
      v76[0] = localizedDescription;
      v75[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v27 = localizedFailureReason2;
      v28 = @"Invalid 'Expression' definition.";
      if (localizedFailureReason2)
      {
        v28 = localizedFailureReason2;
      }

      v76[1] = v28;
      v75[2] = *MEMORY[0x1E696AA08];
      null = v11;
      if (!v11)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v54 = null;
      v76[2] = null;
      v75[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v11 gc_failingKeyPath];
      v31 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v32 = [gc_failingKeyPath arrayByAddingObject:@"InputExpression"];
      v76[3] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:4];
      *errorCopy = [(NSError *)v58 gc_modelError:v33 userInfo:?];

      if (!v11)
      {
      }

      if (!localizedDescription2)
      {
      }

      goto LABEL_64;
    }

    goto LABEL_65;
  }

  [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setInputExpression:v10];

  v63 = 0;
  v8 = [representationCopy gc_objectForKey:@"MinExpression" ofClass:objc_opt_class() error:&v63];
  v12 = v63;
  v13 = v12;
  if (!v8 && v12)
  {
    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v73[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v74[0] = localizedDescription2;
      v73[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v13 localizedFailureReason];
      v74[1] = localizedFailureReason3;
      v36 = MEMORY[0x1E695DF20];
      v37 = v74;
      v38 = v73;
LABEL_38:
      v39 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:2];
      *error = [(NSError *)v34 gc_modelError:v39 userInfo:?];

      v11 = v13;
LABEL_39:

LABEL_64:
      goto LABEL_65;
    }

LABEL_40:
    v11 = v13;
    goto LABEL_65;
  }

  if (v8)
  {
    v62 = 0;
    v14 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v62];
    v11 = v62;

    if (!v14)
    {
      if (error)
      {
        v59 = MEMORY[0x1E696ABC0];
        v71[0] = *MEMORY[0x1E696A578];
        localizedDescription2 = [v11 localizedDescription];
        localizedFailureReason3 = localizedDescription2;
        if (!localizedDescription2)
        {
          localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MinExpression"];
        }

        v72[0] = localizedFailureReason3;
        v71[1] = *MEMORY[0x1E696A588];
        localizedFailureReason4 = [v11 localizedFailureReason];
        v41 = @"Invalid 'Expression' definition.";
        v57 = localizedFailureReason4;
        if (localizedFailureReason4)
        {
          v41 = localizedFailureReason4;
        }

        v72[1] = v41;
        v71[2] = *MEMORY[0x1E696AA08];
        null2 = v11;
        if (!v11)
        {
          null2 = [MEMORY[0x1E695DFB0] null];
        }

        v55 = null2;
        v72[2] = null2;
        v71[3] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath2 = [v11 gc_failingKeyPath];
        v44 = gc_failingKeyPath2;
        if (!gc_failingKeyPath2)
        {
          gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
        }

        v45 = [gc_failingKeyPath2 arrayByAddingObject:@"MinExpression"];
        v72[3] = v45;
        v46 = MEMORY[0x1E695DF20];
        v47 = v72;
        v48 = v71;
LABEL_61:
        v53 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:4];
        *error = [(NSError *)v59 gc_modelError:v53 userInfo:?];

        if (!v11)
        {
        }

        if (localizedDescription2)
        {
          goto LABEL_64;
        }

        goto LABEL_39;
      }

LABEL_65:

LABEL_66:
      v17 = 0;
      goto LABEL_17;
    }

    [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setMinExpression:v14];
  }

  else
  {
    v11 = v12;
  }

  v61 = 0;
  v8 = [representationCopy gc_objectForKey:@"MaxExpression" ofClass:objc_opt_class() error:&v61];
  v15 = v61;
  v13 = v15;
  if (!v8 && v15)
  {
    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v69[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v70[0] = localizedDescription2;
      v69[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v13 localizedFailureReason];
      v70[1] = localizedFailureReason3;
      v36 = MEMORY[0x1E695DF20];
      v37 = v70;
      v38 = v69;
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (!v8)
  {
    v11 = v15;
    goto LABEL_16;
  }

  v60 = 0;
  v16 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v8 error:&v60];
  v11 = v60;

  if (!v16)
  {
    if (error)
    {
      v59 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v11 localizedDescription];
      localizedFailureReason3 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating model for '%@'.", @"MaxExpression"];
      }

      v68[0] = localizedFailureReason3;
      v67[1] = *MEMORY[0x1E696A588];
      localizedFailureReason5 = [v11 localizedFailureReason];
      v50 = @"Invalid 'Expression' definition.";
      v57 = localizedFailureReason5;
      if (localizedFailureReason5)
      {
        v50 = localizedFailureReason5;
      }

      v68[1] = v50;
      v67[2] = *MEMORY[0x1E696AA08];
      null3 = v11;
      if (!v11)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v55 = null3;
      v68[2] = null3;
      v67[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath3 = [v11 gc_failingKeyPath];
      v44 = gc_failingKeyPath3;
      if (!gc_failingKeyPath3)
      {
        gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
      }

      v45 = [gc_failingKeyPath3 arrayByAddingObject:@"MaxExpression"];
      v68[3] = v45;
      v46 = MEMORY[0x1E695DF20];
      v47 = v68;
      v48 = v67;
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  [(GCGenericDeviceDataClampExpressionModelBuilder *)v7 setMaxExpression:v16];

LABEL_16:
  v17 = v7;
LABEL_17:

  return v17;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataClampExpressionModel.m" lineNumber:115 description:@"'inputExpression' can not be nil"];
}

@end
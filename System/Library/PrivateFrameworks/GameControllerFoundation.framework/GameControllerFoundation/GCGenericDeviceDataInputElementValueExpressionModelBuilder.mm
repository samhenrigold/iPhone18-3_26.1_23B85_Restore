@interface GCGenericDeviceDataInputElementValueExpressionModelBuilder
- (GCGenericDeviceDataInputElementValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataInputElementValueExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:modelCopy];
  elementIdentifier = [modelCopy elementIdentifier];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setElementIdentifier:elementIdentifier];

  scaleType = [modelCopy scaleType];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setScaleType:scaleType];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setElementIdentifier:0];
  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self setScaleType:-2];
}

- (id)build
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v9 build];
  elementIdentifier = [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self elementIdentifier];
  if (!elementIdentifier)
  {
    [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)a2 build];
  }

  v6 = [elementIdentifier copy];
  v7 = build[1];
  build[1] = v6;

  build[2] = [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)self scaleType];

  return build;
}

- (GCGenericDeviceDataInputElementValueExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v28.receiver = self;
  v28.super_class = GCGenericDeviceDataInputElementValueExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v28 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_26;
  }

  v27 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:&v27];
  v9 = v27;
  if (!v8)
  {
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v33[0] = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v34[0] = v23;
      v33[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v34[1] = localizedFailureReason;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      *error = [(NSError *)v22 gc_modelError:v25 userInfo:?];
    }

    goto LABEL_25;
  }

  [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)v7 setElementIdentifier:v8];

  v26 = 0;
  v10 = [representationCopy gc_objectForKey:@"ScaleType" ofClass:objc_opt_class() error:&v26];
  v11 = v26;
  v9 = v11;
  if (!v10 && v11)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    v15 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v32[0] = v16;
    v31[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v9 localizedFailureReason];
    v32[1] = localizedFailureReason2;
    v18 = MEMORY[0x1E695DF20];
    v19 = v32;
    v20 = v31;
LABEL_23:
    v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:2];
    *error = [(NSError *)v15 gc_modelError:v21 userInfo:?];

LABEL_24:
LABEL_25:

LABEL_26:
    v13 = 0;
    goto LABEL_20;
  }

  if (v10)
  {
    if ([v10 isEqualToString:@"Raw"])
    {
      v12 = -3;
LABEL_18:
      [(GCGenericDeviceDataInputElementValueExpressionModelBuilder *)v7 setScaleType:v12];
      goto LABEL_19;
    }

    if ([v10 isEqualToString:@"None"])
    {
      v12 = -2;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Logical"])
    {
      v12 = -1;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Physical"])
    {
      v12 = 1;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Exponent"])
    {
      v12 = 2;
      goto LABEL_18;
    }

    if ([v10 isEqualToString:@"Calibrated"])
    {
      v12 = 0;
      goto LABEL_18;
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v15 = MEMORY[0x1E696ABC0];
    v29[0] = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v30[0] = v16;
    v29[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid '%@'.", v10, @"ScaleType"];
    v30[1] = localizedFailureReason2;
    v18 = MEMORY[0x1E695DF20];
    v19 = v30;
    v20 = v29;
    goto LABEL_23;
  }

LABEL_19:

  v13 = v7;
LABEL_20:

  return v13;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDataInputElementValueExpressionModel.m" lineNumber:122 description:@"'elementIdentifier' can not be nil"];
}

@end
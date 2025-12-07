@interface GCGenericDeviceDataConstantExpressionModelBuilder
- (GCGenericDeviceDataConstantExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceDataConstantExpressionModelBuilder

- (void)initializeWithModel:(id)model
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  modelCopy = model;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v7 initializeWithModel:modelCopy];
  [modelCopy value];
  v6 = v5;

  [(GCGenericDeviceDataConstantExpressionModelBuilder *)self setValue:v6];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v3 reset];
  [(GCGenericDeviceDataConstantExpressionModelBuilder *)self setValue:0.0];
}

- (id)build
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  build = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v6 build];
  [(GCGenericDeviceDataConstantExpressionModelBuilder *)self value];
  build[1] = v4;

  return build;
}

- (GCGenericDeviceDataConstantExpressionModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = GCGenericDeviceDataConstantExpressionModelBuilder;
  v7 = [(GCGenericDeviceDataProcessorExpressionModelBuilder *)&v17 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_4;
  }

  v16 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"Value" ofClass:objc_opt_class() error:&v16];
  v9 = v16;
  if (!v8)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v18[0] = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v19[0] = v13;
      v18[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v19[1] = localizedFailureReason;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      *error = [(NSError *)v12 gc_modelError:v15 userInfo:?];
    }

    goto LABEL_8;
  }

  [v8 doubleValue];
  [(GCGenericDeviceDataConstantExpressionModelBuilder *)v7 setValue:?];

  v10 = v7;
LABEL_4:

  return v10;
}

@end
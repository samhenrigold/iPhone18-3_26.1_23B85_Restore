@interface GCGenericDevicePhysicalInputDpadModelBuilder
- (GCGenericDevicePhysicalInputDpadModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDevicePhysicalInputDpadModelBuilder

- (void)initializeWithModel:(id)model
{
  v6.receiver = self;
  v6.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  modelCopy = model;
  [(GCGenericDevicePhysicalInputElementModelBuilder *)&v6 initializeWithModel:modelCopy];
  -[GCGenericDevicePhysicalInputDpadModelBuilder setSourceUpExtendedEventFieldIndex:](self, "setSourceUpExtendedEventFieldIndex:", [modelCopy sourceUpExtendedEventFieldIndex]);
  -[GCGenericDevicePhysicalInputDpadModelBuilder setSourceDownExtendedEventFieldIndex:](self, "setSourceDownExtendedEventFieldIndex:", [modelCopy sourceDownExtendedEventFieldIndex]);
  -[GCGenericDevicePhysicalInputDpadModelBuilder setSourceLeftExtendedEventFieldIndex:](self, "setSourceLeftExtendedEventFieldIndex:", [modelCopy sourceLeftExtendedEventFieldIndex]);
  sourceRightExtendedEventFieldIndex = [modelCopy sourceRightExtendedEventFieldIndex];

  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceRightExtendedEventFieldIndex:sourceRightExtendedEventFieldIndex];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  [(GCGenericDevicePhysicalInputElementModelBuilder *)&v3 reset];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceUpExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceDownExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceLeftExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
  [(GCGenericDevicePhysicalInputDpadModelBuilder *)self setSourceRightExtendedEventFieldIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (id)build
{
  v5.receiver = self;
  v5.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  build = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v5 build];
  build[6] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceUpExtendedEventFieldIndex];
  build[7] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceDownExtendedEventFieldIndex];
  build[8] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceLeftExtendedEventFieldIndex];
  build[9] = [(GCGenericDevicePhysicalInputDpadModelBuilder *)self sourceRightExtendedEventFieldIndex];

  return build;
}

- (GCGenericDevicePhysicalInputDpadModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v38[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v30.receiver = self;
  v30.super_class = GCGenericDevicePhysicalInputDpadModelBuilder;
  v7 = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v30 initWithDictionaryRepresentation:representationCopy error:error];
  if (!v7)
  {
    goto LABEL_30;
  }

  v29 = 0;
  v8 = [representationCopy gc_objectForKey:@"UpValueSource" ofClass:objc_opt_class() error:&v29];
  v9 = v29;
  v10 = v9;
  if (!v8 && v9)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v19 = MEMORY[0x1E696ABC0];
    v37[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v38[0] = v20;
    v37[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v10 localizedFailureReason];
    v38[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v38;
    v24 = v37;
LABEL_28:
    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
    *error = [(NSError *)v19 gc_modelError:v25 userInfo:?];

    goto LABEL_29;
  }

  if (v8)
  {
    [v8 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceUpExtendedEventFieldIndex:?];
  }

  v28 = 0;
  v11 = [representationCopy gc_objectForKey:@"DownValueSource" ofClass:objc_opt_class() error:&v28];
  v12 = v28;
  v10 = v12;
  if (!v11 && v12)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v19 = MEMORY[0x1E696ABC0];
    v35[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v36[0] = v20;
    v35[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v10 localizedFailureReason];
    v36[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v36;
    v24 = v35;
    goto LABEL_28;
  }

  if (v11)
  {
    [v11 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceDownExtendedEventFieldIndex:?];
  }

  v27 = 0;
  v13 = [representationCopy gc_objectForKey:@"LeftValueSource" ofClass:objc_opt_class() error:&v27];
  v14 = v27;
  v10 = v14;
  if (!v13 && v14)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v19 = MEMORY[0x1E696ABC0];
    v33[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
    v34[0] = v20;
    v33[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v10 localizedFailureReason];
    v34[1] = localizedFailureReason;
    v22 = MEMORY[0x1E695DF20];
    v23 = v34;
    v24 = v33;
    goto LABEL_28;
  }

  if (v13)
  {
    [v13 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceLeftExtendedEventFieldIndex:?];
  }

  v26 = 0;
  v15 = [representationCopy gc_objectForKey:@"RightValueSource" ofClass:objc_opt_class() error:&v26];
  v16 = v26;
  v10 = v16;
  if (!v15 && v16)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v31[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v32[0] = v20;
      v31[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v10 localizedFailureReason];
      v32[1] = localizedFailureReason;
      v22 = MEMORY[0x1E695DF20];
      v23 = v32;
      v24 = v31;
      goto LABEL_28;
    }

LABEL_29:

LABEL_30:
    v17 = 0;
    goto LABEL_19;
  }

  if (v15)
  {
    [v15 integerValue];
    [OUTLINED_FUNCTION_0_10() setSourceRightExtendedEventFieldIndex:?];
  }

  v17 = v7;
LABEL_19:

  return v17;
}

@end
@interface GCGenericDeviceDataMultiplyExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataMultiplyExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataMultiplyExpressionModel

- (GCGenericDeviceDataMultiplyExpressionModel)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataMultiplyExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v10 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"leftExpression", v10.receiver, v10.super_class}];
  leftExpression = v4->_leftExpression;
  v4->_leftExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rightExpression"];

  rightExpression = v4->_rightExpression;
  v4->_rightExpression = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GCGenericDeviceDataMultiplyExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v7 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"leftExpression"];

  rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
  [coderCopy encodeObject:rightExpression forKey:@"rightExpression"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataMultiplyExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v11 isEqual:equalCopy])
  {
    leftExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression];
    leftExpression2 = [equalCopy leftExpression];
    if ([leftExpression isEqual:leftExpression2])
    {
      rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
      rightExpression2 = [equalCopy rightExpression];
      v9 = [rightExpression isEqual:rightExpression2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression];
  v5 = [leftExpression description];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
  v8 = [rightExpression description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v10 = [v3 stringWithFormat:@"(multiply\n\t%@\n\t%@\n)", v6, v9];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  leftExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression];
  v7 = [leftExpression debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
  v10 = [rightExpression debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v3 stringWithFormat:@"<%@ %p> {\n\t left = %@\n\t right = %@\n}", v5, self, v8, v11];

  return v12;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v43[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_respondsToSelector();
  leftExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression];
  v9 = leftExpression;
  if (v7)
  {
    v39 = 0;
    v10 = &v39;
    v11 = [contextCopy buildExpression:leftExpression error:&v39];
  }

  else
  {
    v38 = 0;
    v10 = &v38;
    v11 = [leftExpression buildExpressionWithContext:contextCopy error:&v38];
  }

  v12 = v11;
  v13 = *v10;

  if (v12)
  {
    v14 = _Block_copy(v12);

    v15 = objc_opt_respondsToSelector();
    rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
    v17 = rightExpression;
    if (v15)
    {
      v37 = 0;
      v18 = &v37;
      v19 = [contextCopy buildExpression:rightExpression error:&v37];
    }

    else
    {
      v36 = 0;
      v18 = &v36;
      v19 = [rightExpression buildExpressionWithContext:contextCopy error:&v36];
    }

    v26 = v19;
    v21 = *v18;

    if (v26)
    {
      v27 = _Block_copy(v26);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__GCGenericDeviceDataMultiplyExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E8413A80;
      v13 = v14;
      v34 = v13;
      v35 = v27;
      v21 = v27;
      v25 = _Block_copy(aBlock);

      v24 = v34;
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        v13 = v14;
        goto LABEL_15;
      }

      v28 = MEMORY[0x1E696ABC0];
      v40[0] = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v29 = *MEMORY[0x1E696A588];
      v41[0] = v24;
      v41[1] = @"The 'rightExpression' sub-expression failed to build.";
      v30 = *MEMORY[0x1E696AA08];
      v40[1] = v29;
      v40[2] = v30;
      v41[2] = v21;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
      *error = [v28 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v31];

      v25 = 0;
      v13 = v14;
    }

LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v42[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v43[0] = v21;
    v43[1] = @"The 'leftExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v42[1] = v22;
    v42[2] = v23;
    v43[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *error = v25 = 0;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_16:

  return v25;
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v45[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  if (objc_opt_respondsToSelector())
  {
    leftExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression];
    v11 = v38;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __109__GCGenericDeviceDataMultiplyExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v38[3] = &unk_1E8413AA8;
    v38[5] = v40;
    v38[4] = consumerCopy;
    v38[6] = v39;
    v37 = 0;
    v12 = &v37;
    v13 = [contextCopy buildReactiveExpression:leftExpression consumer:v38 error:&v37];
  }

  else
  {
    leftExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self leftExpression];
    v11 = v36;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __109__GCGenericDeviceDataMultiplyExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v36[3] = &unk_1E8413AA8;
    v36[5] = v40;
    v36[4] = consumerCopy;
    v36[6] = v39;
    v35 = 0;
    v12 = &v35;
    v13 = [leftExpression buildReactiveExpressionWithContext:contextCopy consumer:v36 error:&v35];
  }

  v14 = v13;
  v15 = *v12;

  if (!v14)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v20 = MEMORY[0x1E696ABC0];
    v43[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v44[0] = v21;
    v44[1] = @"The 'leftExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v43[1] = v22;
    v43[2] = v23;
    v44[2] = v15;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
    *error = [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    goto LABEL_14;
  }

  v45[0] = v14;
  if (objc_opt_respondsToSelector())
  {
    rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
    v17 = v34;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __109__GCGenericDeviceDataMultiplyExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v34[3] = &unk_1E8413AA8;
    v34[5] = v39;
    v34[4] = consumerCopy;
    v34[6] = v40;
    v33 = 0;
    v18 = &v33;
    v19 = [contextCopy buildReactiveExpression:rightExpression consumer:v34 error:&v33];
  }

  else
  {
    rightExpression = [(GCGenericDeviceDataMultiplyExpressionModel *)self rightExpression];
    v17 = v32;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __109__GCGenericDeviceDataMultiplyExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v32[3] = &unk_1E8413AA8;
    v32[5] = v39;
    v32[4] = consumerCopy;
    v32[6] = v40;
    v31 = 0;
    v18 = &v31;
    v19 = [rightExpression buildReactiveExpressionWithContext:contextCopy consumer:v32 error:&v31];
  }

  v25 = v19;
  v21 = *v18;

  if (!v25)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v26 = MEMORY[0x1E696ABC0];
    v41[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v27 = *MEMORY[0x1E696A588];
    v42[0] = v24;
    v42[1] = @"The 'rightExpression' sub-expression failed to build.";
    v28 = *MEMORY[0x1E696AA08];
    v41[1] = v27;
    v41[2] = v28;
    v42[2] = v21;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
    *error = [v26 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v29];

    v15 = v14;
LABEL_14:

    error = 0;
    v14 = v15;
    goto LABEL_15;
  }

  v45[1] = v25;
  error = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v21 = v25;
LABEL_15:

  v15 = v14;
LABEL_16:

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);

  return error;
}

@end
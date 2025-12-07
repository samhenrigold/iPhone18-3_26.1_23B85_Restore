@interface GCGenericDeviceDataClampExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataClampExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataClampExpressionModel

- (GCGenericDeviceDataClampExpressionModel)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataClampExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v12 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v12.receiver, v12.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minExpression"];
  minExpression = v4->_minExpression;
  v4->_minExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxExpression"];

  maxExpression = v4->_maxExpression;
  v4->_maxExpression = v9;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataClampExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v8 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputExpression"];

  minExpression = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  [coderCopy encodeObject:minExpression forKey:@"minExpression"];

  maxExpression = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  [coderCopy encodeObject:maxExpression forKey:@"maxExpression"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v22.receiver = self;
  v22.super_class = GCGenericDeviceDataClampExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v22 isEqual:equalCopy])
  {
    inputExpression = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
    inputExpression2 = [equalCopy inputExpression];
    if (![inputExpression isEqual:inputExpression2])
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    minExpression = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
    minExpression2 = [equalCopy minExpression];
    if (minExpression == minExpression2)
    {
      [(GCGenericDeviceDataClampExpressionModel *)self maxExpression:v18];
    }

    else
    {
      minExpression3 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
      minExpression4 = [equalCopy minExpression];
      if (![minExpression3 isEqual:minExpression4])
      {
        v11 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(GCGenericDeviceDataClampExpressionModel *)self maxExpression:minExpression4];
    }
    v12 = ;
    maxExpression = [equalCopy maxExpression];
    v14 = maxExpression;
    if (v12 == maxExpression)
    {

      v11 = 1;
    }

    else
    {
      maxExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
      maxExpression3 = [equalCopy maxExpression];
      v11 = [maxExpression2 isEqual:maxExpression3];
    }

    minExpression4 = v19;
    minExpression3 = v21;
    if (minExpression == minExpression2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  inputExpression = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
  v4 = [inputExpression description];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  minExpression = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  v7 = [minExpression description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maxExpression = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  v10 = [maxExpression description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v14 stringWithFormat:@"(clamp\n\t%@\n\t%@\n\t%@\n)", v5, v8, v11];

  return v12;
}

- (id)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  inputExpression = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
  v4 = [inputExpression debugDescription];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  minExpression = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  v7 = [minExpression debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maxExpression = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  v10 = [maxExpression debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v15 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t min = %@\n\t max = %@\n}", v14, self, v5, v8, v11];

  return v12;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v60[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_respondsToSelector();
  inputExpression = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
  v9 = inputExpression;
  if (v7)
  {
    v54 = 0;
    v10 = &v54;
    v11 = [contextCopy buildExpression:inputExpression error:&v54];
  }

  else
  {
    v53 = 0;
    v10 = &v53;
    v11 = [inputExpression buildExpressionWithContext:contextCopy error:&v53];
  }

  v12 = v11;
  v13 = *v10;

  if (v12)
  {
    v14 = _Block_copy(v12);

    minExpression = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];

    if (minExpression)
    {
      v16 = objc_opt_respondsToSelector();
      minExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
      v18 = minExpression2;
      if (v16)
      {
        v52 = 0;
        v19 = &v52;
        v20 = [contextCopy buildExpression:minExpression2 error:&v52];
      }

      else
      {
        v51 = 0;
        v19 = &v51;
        v20 = [minExpression2 buildExpressionWithContext:contextCopy error:&v51];
      }

      v26 = v20;
      minExpression = *v19;

      if (!v26)
      {
        if (!error)
        {
          v25 = 0;
          goto LABEL_22;
        }

        v38 = MEMORY[0x1E696ABC0];
        v57[0] = *MEMORY[0x1E696A578];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v39 = *MEMORY[0x1E696A588];
        v58[0] = v24;
        v58[1] = @"The 'minExpression' sub-expression failed to build.";
        v40 = *MEMORY[0x1E696AA08];
        v57[1] = v39;
        v57[2] = v40;
        v58[2] = minExpression;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
        [v38 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v36];
        *error = v25 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = minExpression;
    minExpression = _Block_copy(v26);

    maxExpression = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];

    if (maxExpression)
    {
      v29 = objc_opt_respondsToSelector();
      maxExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
      v31 = maxExpression2;
      if (v29)
      {
        v50 = 0;
        v32 = &v50;
        v33 = [contextCopy buildExpression:maxExpression2 error:&v50];
      }

      else
      {
        v49 = 0;
        v32 = &v49;
        v33 = [maxExpression2 buildExpressionWithContext:contextCopy error:&v49];
      }

      v34 = v33;
      v24 = *v32;

      if (!v34)
      {
        if (!error)
        {
          v25 = 0;
          goto LABEL_21;
        }

        v41 = MEMORY[0x1E696ABC0];
        v55[0] = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v42 = *MEMORY[0x1E696A588];
        v56[0] = v36;
        v56[1] = @"The 'maxExpression' sub-expression failed to build.";
        v43 = *MEMORY[0x1E696AA08];
        v55[1] = v42;
        v55[2] = v43;
        v56[2] = v24;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
        *error = [v41 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v44];

        v25 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v24 = 0;
      v34 = 0;
    }

    v35 = _Block_copy(v34);

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__GCGenericDeviceDataClampExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
    aBlock[3] = &unk_1E8414CD0;
    v46 = v14;
    minExpression = minExpression;
    v47 = minExpression;
    v48 = v35;
    v24 = v35;
    v25 = _Block_copy(aBlock);

    v36 = v46;
LABEL_20:

    goto LABEL_21;
  }

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v59[0] = *MEMORY[0x1E696A578];
    minExpression = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v60[0] = minExpression;
    v60[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v59[1] = v22;
    v59[2] = v23;
    v60[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
    [v21 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *error = v25 = 0;
    v14 = v13;
LABEL_21:

LABEL_22:
    v13 = v14;
    goto LABEL_23;
  }

  v25 = 0;
LABEL_23:

  return v25;
}

double __89__GCGenericDeviceDataClampExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  v3 = a1[5];
  if (v3)
  {
    v4 = (*(v3 + 16))();
    if (v4 > v2)
    {
      v2 = v4;
    }
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = (*(v5 + 16))();
    if (v6 < v2)
    {
      return v6;
    }
  }

  return v2;
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v84[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v75[3] = 0;
  minExpression = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  v9 = minExpression != 0;

  maxExpression = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  v11 = maxExpression != 0;

  null = [MEMORY[0x1E695DFB0] null];
  inputExpression = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];

  if (!inputExpression)
  {
LABEL_7:

    v84[0] = null;
    null2 = [MEMORY[0x1E695DFB0] null];
    minExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];

    if (minExpression2)
    {
      if (objc_opt_respondsToSelector())
      {
        minExpression3 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
        v22 = v64;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
        v64[3] = &unk_1E8414CF8;
        v64[5] = v76;
        v64[6] = v77;
        v65 = v11;
        v64[7] = v75;
        v66 = v9;
        v64[4] = consumerCopy;
        v63 = 0;
        v23 = &v63;
        v24 = [contextCopy buildReactiveExpression:minExpression3 consumer:v64 error:&v63];
      }

      else
      {
        minExpression3 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
        v22 = v60;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
        v60[3] = &unk_1E8414CF8;
        v60[5] = v76;
        v60[6] = v77;
        v61 = v11;
        v60[7] = v75;
        v62 = v9;
        v60[4] = consumerCopy;
        v59 = 0;
        v23 = &v59;
        v24 = [minExpression3 buildReactiveExpressionWithContext:contextCopy consumer:v60 error:&v59];
      }

      v26 = v24;
      v25 = *v23;

      if (!v26)
      {
        if (!error)
        {
          v36 = 0;
          goto LABEL_31;
        }

        v39 = MEMORY[0x1E696ABC0];
        v80[0] = *MEMORY[0x1E696A578];
        maxExpression2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v40 = *MEMORY[0x1E696A588];
        v81[0] = maxExpression2;
        v81[1] = @"The 'minExpression' sub-expression failed to build.";
        v41 = *MEMORY[0x1E696AA08];
        v80[1] = v40;
        v80[2] = v41;
        v81[2] = v25;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];
        *error = [v39 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v42];

        v36 = 0;
        goto LABEL_29;
      }

      null2 = v26;
    }

    else
    {
      v25 = 0;
    }

    v84[1] = null2;
    null3 = [MEMORY[0x1E695DFB0] null];
    maxExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];

    if (maxExpression2)
    {
      if (objc_opt_respondsToSelector())
      {
        maxExpression3 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
        v30 = v56;
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
        v56[3] = &unk_1E8414CF8;
        v56[5] = v75;
        v56[6] = v77;
        v57 = v11;
        v58 = v9;
        v56[7] = v76;
        v56[4] = consumerCopy;
        v55 = 0;
        v31 = &v55;
        v32 = [contextCopy buildReactiveExpression:maxExpression3 consumer:v56 error:&v55];
      }

      else
      {
        maxExpression3 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
        v30 = v52;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
        v52[3] = &unk_1E8414CF8;
        v52[5] = v75;
        v52[6] = v77;
        v53 = v11;
        v54 = v9;
        v52[7] = v76;
        v52[4] = consumerCopy;
        v51 = 0;
        v31 = &v51;
        v32 = [maxExpression3 buildReactiveExpressionWithContext:contextCopy consumer:v52 error:&v51];
      }

      v37 = v32;
      v38 = (v30 + 4);
      maxExpression2 = *v31;

      if (!v37)
      {
        if (error)
        {
          v43 = MEMORY[0x1E696ABC0];
          v78[0] = *MEMORY[0x1E696A578];
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
          v45 = *MEMORY[0x1E696A588];
          v79[0] = v44;
          v79[1] = @"The 'maxExpression' sub-expression failed to build.";
          v46 = *MEMORY[0x1E696AA08];
          v78[1] = v45;
          v78[2] = v46;
          v79[2] = maxExpression2;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:3];
          *error = [v43 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v47];
        }

        v36 = 0;
        goto LABEL_28;
      }

      null3 = v37;
    }

    v84[2] = null3;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:3];
    maxExpression2 = null3;
LABEL_28:
    v25 = null2;
LABEL_29:
    inputExpression = null;
    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector())
  {
    inputExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
    v15 = v72;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v72[3] = &unk_1E8414CF8;
    v73 = v11;
    v72[5] = v77;
    v72[6] = v75;
    v74 = v9;
    v72[7] = v76;
    v72[4] = consumerCopy;
    v71 = 0;
    v16 = &v71;
    v17 = [contextCopy buildReactiveExpression:inputExpression2 consumer:v72 error:&v71];
  }

  else
  {
    inputExpression2 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
    v15 = v68;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v68[3] = &unk_1E8414CF8;
    v69 = v11;
    v68[5] = v77;
    v68[6] = v75;
    v70 = v9;
    v68[7] = v76;
    v68[4] = consumerCopy;
    v67 = 0;
    v16 = &v67;
    v17 = [inputExpression2 buildReactiveExpressionWithContext:contextCopy consumer:v68 error:&v67];
  }

  v18 = v17;
  inputExpression = *v16;

  if (v18)
  {
    null = v18;
    goto LABEL_7;
  }

  if (error)
  {
    v33 = MEMORY[0x1E696ABC0];
    v82[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v34 = *MEMORY[0x1E696A588];
    v83[0] = v25;
    v83[1] = @"The 'inputExpression' sub-expression failed to build.";
    v35 = *MEMORY[0x1E696AA08];
    v82[1] = v34;
    v82[2] = v35;
    v83[2] = inputExpression;
    maxExpression2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:maxExpression2];
    *error = v36 = 0;
LABEL_30:

    null = inputExpression;
LABEL_31:

    inputExpression = null;
    goto LABEL_32;
  }

  v36 = 0;
LABEL_32:

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v77, 8);

  return v36;
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 48) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 48) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 56) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 56) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 40) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 40) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

@end
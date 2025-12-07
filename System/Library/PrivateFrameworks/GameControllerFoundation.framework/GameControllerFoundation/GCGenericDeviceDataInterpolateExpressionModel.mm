@interface GCGenericDeviceDataInterpolateExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataInterpolateExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataInterpolateExpressionModel

- (GCGenericDeviceDataInterpolateExpressionModel)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = GCGenericDeviceDataInterpolateExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v16 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v16.receiver, v16.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMinExpression"];
  inputMinExpression = v4->_inputMinExpression;
  v4->_inputMinExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMaxExpression"];
  inputMaxExpression = v4->_inputMaxExpression;
  v4->_inputMaxExpression = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputMinExpression"];
  outputMinExpression = v4->_outputMinExpression;
  v4->_outputMinExpression = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputMaxExpression"];

  outputMaxExpression = v4->_outputMaxExpression;
  v4->_outputMaxExpression = v13;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInterpolateExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v10 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputExpression"];

  inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  [coderCopy encodeObject:inputMinExpression forKey:@"inputMinExpression"];

  inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
  [coderCopy encodeObject:inputMaxExpression forKey:@"inputMaxExpression"];

  outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
  [coderCopy encodeObject:outputMinExpression forKey:@"outputMinExpression"];

  outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
  [coderCopy encodeObject:outputMaxExpression forKey:@"outputMaxExpression"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataInterpolateExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v18 isEqual:equalCopy])
  {
    inputExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
    inputExpression2 = [equalCopy inputExpression];
    if ([inputExpression isEqual:inputExpression2])
    {
      inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
      inputMinExpression2 = [equalCopy inputMinExpression];
      if ([inputMinExpression isEqual:inputMinExpression2])
      {
        inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
        inputMaxExpression2 = [equalCopy inputMaxExpression];
        if ([inputMaxExpression isEqual:inputMaxExpression2])
        {
          outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
          outputMinExpression2 = [equalCopy outputMinExpression];
          if ([outputMinExpression isEqual:outputMinExpression2])
          {
            outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
            [equalCopy outputMaxExpression];
            v13 = v17 = outputMinExpression;
            v14 = [outputMaxExpression isEqual:v13];

            outputMinExpression = v17;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  inputExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
  v19 = [inputExpression description];
  v13 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  v17 = [inputMinExpression description];
  v3 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
  v4 = [inputMaxExpression description];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
  v7 = [outputMinExpression description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
  v10 = [outputMaxExpression description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v16 = [v15 stringWithFormat:@"(interpolate\n\t%@\n\t%@\n\t%@\n\t%@\n\t%@\n)", v13, v3, v5, v8, v11];

  return v16;
}

- (id)debugDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  inputExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
  v21 = [inputExpression debugDescription];
  v13 = [v21 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  v19 = [inputMinExpression debugDescription];
  v4 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
  v14 = [inputMaxExpression debugDescription];
  v5 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
  v7 = [outputMinExpression debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
  v10 = [outputMaxExpression debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t inputMin = %@\n\t inputMax = %@\n\t outputMin = %@\n\t outputMax = %@\n}", v16, self, v13, v4, v5, v8, v11];

  return v18;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v91[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_respondsToSelector();
  inputExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
  v9 = inputExpression;
  if (v7)
  {
    v81 = 0;
    v10 = &v81;
    v11 = [contextCopy buildExpression:inputExpression error:&v81];
  }

  else
  {
    v80 = 0;
    v10 = &v80;
    v11 = [inputExpression buildExpressionWithContext:contextCopy error:&v80];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_39;
    }

    v20 = MEMORY[0x1E696ABC0];
    v90[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v91[0] = v21;
    v91[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v90[1] = v22;
    v90[2] = v23;
    v91[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *error = v25 = 0;
    v14 = v13;
    goto LABEL_37;
  }

  v14 = _Block_copy(v12);

  v15 = objc_opt_respondsToSelector();
  inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  v17 = inputMinExpression;
  if (v15)
  {
    v79 = 0;
    v18 = &v79;
    v19 = [contextCopy buildExpression:inputMinExpression error:&v79];
  }

  else
  {
    v78 = 0;
    v18 = &v78;
    v19 = [inputMinExpression buildExpressionWithContext:contextCopy error:&v78];
  }

  v26 = v19;
  v27 = *v18;

  if (v26)
  {
    v21 = _Block_copy(v26);

    v28 = objc_opt_respondsToSelector();
    inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
    v30 = inputMaxExpression;
    if (v28)
    {
      v77 = 0;
      v31 = &v77;
      v32 = [contextCopy buildExpression:inputMaxExpression error:&v77];
    }

    else
    {
      v76 = 0;
      v31 = &v76;
      v32 = [inputMaxExpression buildExpressionWithContext:contextCopy error:&v76];
    }

    v38 = v32;
    v24 = *v31;

    if (!v38)
    {
      if (!error)
      {
        v25 = 0;
        goto LABEL_37;
      }

      v44 = MEMORY[0x1E696ABC0];
      v86[0] = *MEMORY[0x1E696A578];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v46 = *MEMORY[0x1E696A588];
      v87[0] = v45;
      v87[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v47 = *MEMORY[0x1E696AA08];
      v86[1] = v46;
      v86[2] = v47;
      v87[2] = v24;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];
      [v44 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v48];
      *error = v25 = 0;
      v34 = v24;
      goto LABEL_35;
    }

    v34 = _Block_copy(v38);

    v39 = objc_opt_respondsToSelector();
    outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
    v41 = outputMinExpression;
    if (v39)
    {
      v75 = 0;
      v42 = &v75;
      v43 = [contextCopy buildExpression:outputMinExpression error:&v75];
    }

    else
    {
      v74 = 0;
      v42 = &v74;
      v43 = [outputMinExpression buildExpressionWithContext:contextCopy error:&v74];
    }

    v49 = v43;
    v37 = *v42;

    if (v49)
    {
      v45 = _Block_copy(v49);

      v50 = objc_opt_respondsToSelector();
      outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
      v52 = outputMaxExpression;
      if (v50)
      {
        v73 = 0;
        v53 = &v73;
        v54 = [contextCopy buildExpression:outputMaxExpression error:&v73];
      }

      else
      {
        v72 = 0;
        v53 = &v72;
        v54 = [outputMaxExpression buildExpressionWithContext:contextCopy error:&v72];
      }

      v58 = v54;
      v48 = *v53;

      if (v58)
      {
        v59 = _Block_copy(v58);

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __95__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
        aBlock[3] = &unk_1E8415308;
        v67 = v14;
        v68 = v21;
        v69 = v34;
        v37 = v45;
        v70 = v37;
        v71 = v59;
        v48 = v59;
        v25 = _Block_copy(aBlock);

        v57 = v67;
      }

      else
      {
        if (!error)
        {
          v25 = 0;
          goto LABEL_35;
        }

        v65 = MEMORY[0x1E696ABC0];
        v82[0] = *MEMORY[0x1E696A578];
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v60 = *MEMORY[0x1E696A588];
        v83[0] = v57;
        v83[1] = @"The 'outputMaxExpression' sub-expression failed to build.";
        v61 = *MEMORY[0x1E696AA08];
        v82[1] = v60;
        v82[2] = v61;
        v83[2] = v48;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
        *error = [v65 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v62];

        v25 = 0;
        v37 = v45;
      }
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        goto LABEL_36;
      }

      v64 = MEMORY[0x1E696ABC0];
      v84[0] = *MEMORY[0x1E696A578];
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v55 = *MEMORY[0x1E696A588];
      v85[0] = v48;
      v85[1] = @"The 'outputMinExpression' sub-expression failed to build.";
      v56 = *MEMORY[0x1E696AA08];
      v84[1] = v55;
      v84[2] = v56;
      v85[2] = v37;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:3];
      [v64 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v57];
      *error = v25 = 0;
    }

    v45 = v37;
LABEL_35:

    v37 = v45;
    goto LABEL_36;
  }

  if (error)
  {
    v33 = MEMORY[0x1E696ABC0];
    v88[0] = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v35 = *MEMORY[0x1E696A588];
    v89[0] = v34;
    v89[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v36 = *MEMORY[0x1E696AA08];
    v88[1] = v35;
    v88[2] = v36;
    v89[2] = v27;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v37];
    *error = v25 = 0;
    v21 = v27;
LABEL_36:

    v24 = v34;
LABEL_37:

    v27 = v21;
    goto LABEL_38;
  }

  v25 = 0;
LABEL_38:

  v13 = v14;
LABEL_39:

  return v25;
}

double __95__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  v3 = (*(a1[5] + 16))();
  v4 = (*(a1[6] + 16))();
  v5 = (*(a1[7] + 16))();
  return v5 + fabs((v2 - v3) / (v4 - v3)) * ((*(a1[8] + 16))() - v5);
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v96[5] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v85[3] = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v84[3] = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v83[3] = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v81[3] = 0;
  if (objc_opt_respondsToSelector())
  {
    inputExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
    v9 = v80;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v80[3] = &unk_1E8415330;
    v80[5] = v85;
    v80[6] = v84;
    v80[7] = v83;
    v80[8] = v82;
    v80[9] = v81;
    v80[4] = consumerCopy;
    v79 = 0;
    v10 = &v79;
    v11 = [contextCopy buildReactiveExpression:inputExpression consumer:v80 error:&v79];
  }

  else
  {
    inputExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
    v9 = v78;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v78[3] = &unk_1E8415330;
    v78[5] = v85;
    v78[6] = v84;
    v78[7] = v83;
    v78[8] = v82;
    v78[9] = v81;
    v78[4] = consumerCopy;
    v77 = 0;
    v10 = &v77;
    v11 = [inputExpression buildReactiveExpressionWithContext:contextCopy consumer:v78 error:&v77];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!error)
    {
      v23 = 0;
      goto LABEL_43;
    }

    v18 = MEMORY[0x1E696ABC0];
    v94[0] = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v20 = *MEMORY[0x1E696A588];
    v95[0] = v19;
    v95[1] = @"The 'inputExpression' sub-expression failed to build.";
    v21 = *MEMORY[0x1E696AA08];
    v94[1] = v20;
    v94[2] = v21;
    v95[2] = v13;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:3];
    [v18 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v22];
    *error = v23 = 0;
    goto LABEL_41;
  }

  v96[0] = v12;
  if (objc_opt_respondsToSelector())
  {
    inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
    v15 = v76;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v76[3] = &unk_1E8415330;
    v76[5] = v84;
    v76[6] = v85;
    v76[7] = v83;
    v76[8] = v82;
    v76[9] = v81;
    v76[4] = consumerCopy;
    v75 = 0;
    v16 = &v75;
    v17 = [contextCopy buildReactiveExpression:inputMinExpression consumer:v76 error:&v75];
  }

  else
  {
    inputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
    v15 = v74;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v74[3] = &unk_1E8415330;
    v74[5] = v84;
    v74[6] = v85;
    v74[7] = v83;
    v74[8] = v82;
    v74[9] = v81;
    v74[4] = consumerCopy;
    v73 = 0;
    v16 = &v73;
    v17 = [inputMinExpression buildReactiveExpressionWithContext:contextCopy consumer:v74 error:&v73];
  }

  v19 = v17;
  v24 = (v15 + 4);
  v25 = *v16;

  if (v19)
  {

    v96[1] = v19;
    if (objc_opt_respondsToSelector())
    {
      inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
      v27 = v72;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
      v72[3] = &unk_1E8415330;
      v72[5] = v83;
      v72[6] = v85;
      v72[7] = v84;
      v72[8] = v82;
      v72[9] = v81;
      v72[4] = consumerCopy;
      v71 = 0;
      v28 = &v71;
      v29 = [contextCopy buildReactiveExpression:inputMaxExpression consumer:v72 error:&v71];
    }

    else
    {
      inputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
      v27 = v70;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
      v70[3] = &unk_1E8415330;
      v70[5] = v83;
      v70[6] = v85;
      v70[7] = v84;
      v70[8] = v82;
      v70[9] = v81;
      v70[4] = consumerCopy;
      v69 = 0;
      v28 = &v69;
      v29 = [inputMaxExpression buildReactiveExpressionWithContext:contextCopy consumer:v70 error:&v69];
    }

    v31 = v29;
    v22 = *v28;

    if (!v31)
    {
      if (!error)
      {
        v23 = 0;
        goto LABEL_40;
      }

      v38 = MEMORY[0x1E696ABC0];
      v90[0] = *MEMORY[0x1E696A578];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v39 = *MEMORY[0x1E696A588];
      v91[0] = v34;
      v91[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v40 = *MEMORY[0x1E696AA08];
      v90[1] = v39;
      v90[2] = v40;
      v91[2] = v22;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:3];
      [v38 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v41];
      *error = v23 = 0;
      goto LABEL_37;
    }

    v96[2] = v31;
    if (objc_opt_respondsToSelector())
    {
      outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
      v36 = v68;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7;
      v68[3] = &unk_1E8415330;
      v68[5] = v82;
      v68[6] = v85;
      v68[7] = v84;
      v68[8] = v83;
      v68[9] = v81;
      v68[4] = consumerCopy;
      v67 = 0;
      v37 = &v67;
      v58 = [contextCopy buildReactiveExpression:outputMinExpression consumer:v68 error:&v67];
    }

    else
    {
      outputMinExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
      v36 = v66;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8;
      v66[3] = &unk_1E8415330;
      v66[5] = v82;
      v66[6] = v85;
      v66[7] = v84;
      v66[8] = v83;
      v66[9] = v81;
      v66[4] = consumerCopy;
      v65 = 0;
      v37 = &v65;
      v58 = [outputMinExpression buildReactiveExpressionWithContext:contextCopy consumer:v66 error:&v65];
    }

    v42 = (v36 + 4);
    v34 = *v37;

    if (v58)
    {

      v96[3] = v58;
      if (objc_opt_respondsToSelector())
      {
        outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
        v44 = v64;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9;
        v64[3] = &unk_1E8415330;
        v64[5] = v81;
        v64[6] = v85;
        v64[7] = v84;
        v64[8] = v83;
        v64[9] = v82;
        v64[4] = consumerCopy;
        v63 = 0;
        v45 = &v63;
        v46 = [contextCopy buildReactiveExpression:outputMaxExpression consumer:v64 error:&v63];
      }

      else
      {
        outputMaxExpression = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
        v44 = v62;
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10;
        v62[3] = &unk_1E8415330;
        v62[5] = v81;
        v62[6] = v85;
        v62[7] = v84;
        v62[8] = v83;
        v62[9] = v82;
        v62[4] = consumerCopy;
        v61 = 0;
        v45 = &v61;
        v46 = [outputMaxExpression buildReactiveExpressionWithContext:contextCopy consumer:v62 error:&v61];
      }

      v51 = v46;
      v52 = (v44 + 4);
      v41 = *v45;

      v34 = v58;
      if (v51)
      {

        v96[4] = v51;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:5];
        v41 = v51;
LABEL_36:
        v22 = v31;
LABEL_37:

        v31 = v22;
LABEL_38:
        v25 = v19;
        goto LABEL_39;
      }

      if (!error)
      {
LABEL_35:
        v23 = 0;
        goto LABEL_36;
      }

      v53 = MEMORY[0x1E696ABC0];
      v86[0] = *MEMORY[0x1E696A578];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v54 = *MEMORY[0x1E696A588];
      v87[0] = v50;
      v87[1] = @"The 'outputMaxExpression' sub-expression failed to build.";
      v55 = *MEMORY[0x1E696AA08];
      v86[1] = v54;
      v86[2] = v55;
      v87[2] = v41;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];
      [v53 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v56];
      *error = v34 = v58;
    }

    else
    {
      if (!error)
      {
        v23 = 0;
        goto LABEL_38;
      }

      v47 = MEMORY[0x1E696ABC0];
      v88[0] = *MEMORY[0x1E696A578];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v48 = *MEMORY[0x1E696A588];
      v89[0] = v41;
      v89[1] = @"The 'outputMinExpression' sub-expression failed to build.";
      v49 = *MEMORY[0x1E696AA08];
      v88[1] = v48;
      v88[2] = v49;
      v89[2] = v34;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];
      *error = [v47 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v50];
    }

    goto LABEL_35;
  }

  if (error)
  {
    v30 = MEMORY[0x1E696ABC0];
    v92[0] = *MEMORY[0x1E696A578];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v32 = *MEMORY[0x1E696A588];
    v93[0] = v31;
    v93[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v33 = *MEMORY[0x1E696AA08];
    v92[1] = v32;
    v92[2] = v33;
    v93[2] = v25;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:3];
    [v30 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v34];
    *error = v23 = 0;
LABEL_39:

    v22 = v31;
    v19 = v25;
LABEL_40:
    v13 = v12;
LABEL_41:

    v25 = v19;
    v12 = v13;
    goto LABEL_42;
  }

  v23 = 0;
LABEL_42:

  v13 = v12;
LABEL_43:

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v85, 8);

  return v23;
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[6] + 8) + 24);
  v3 = (*(*(a1[5] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[6] + 8) + 24);
  v3 = (*(*(a1[5] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[5] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[5] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[5] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[5] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[9] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[5] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[9] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[5] + 8) + 24) - v4));
}

@end
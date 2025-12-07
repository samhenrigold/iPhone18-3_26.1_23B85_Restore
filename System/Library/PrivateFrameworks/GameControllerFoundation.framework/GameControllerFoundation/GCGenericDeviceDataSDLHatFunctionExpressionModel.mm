@interface GCGenericDeviceDataSDLHatFunctionExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataSDLHatFunctionExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataSDLHatFunctionExpressionModel

- (GCGenericDeviceDataSDLHatFunctionExpressionModel)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v18 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v18.receiver, v18.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMinExpression"];
  inputMinExpression = v4->_inputMinExpression;
  v4->_inputMinExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMaxExpression"];
  inputMaxExpression = v4->_inputMaxExpression;
  v4->_inputMaxExpression = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskExpression"];
  maskExpression = v4->_maskExpression;
  v4->_maskExpression = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trueExpression"];
  trueExpression = v4->_trueExpression;
  v4->_trueExpression = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"falseExpression"];

  falseExpression = v4->_falseExpression;
  v4->_falseExpression = v15;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v11 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputExpression"];

  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  [coderCopy encodeObject:inputMinExpression forKey:@"inputMinExpression"];

  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
  [coderCopy encodeObject:inputMaxExpression forKey:@"inputMaxExpression"];

  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
  [coderCopy encodeObject:maskExpression forKey:@"maskExpression"];

  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
  [coderCopy encodeObject:trueExpression forKey:@"trueExpression"];

  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
  [coderCopy encodeObject:falseExpression forKey:@"falseExpression"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v23.receiver = self;
  v23.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v23 isEqual:equalCopy])
  {
    inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
    inputExpression2 = [equalCopy inputExpression];
    if ([inputExpression isEqual:inputExpression2])
    {
      inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
      inputMinExpression2 = [equalCopy inputMinExpression];
      if ([inputMinExpression isEqual:inputMinExpression2])
      {
        inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
        inputMaxExpression2 = [equalCopy inputMaxExpression];
        if ([inputMaxExpression isEqual:inputMaxExpression2])
        {
          maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
          maskExpression2 = [equalCopy maskExpression];
          if ([maskExpression isEqual:maskExpression2])
          {
            v21 = maskExpression;
            trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
            trueExpression2 = [equalCopy trueExpression];
            v22 = trueExpression;
            v15 = trueExpression;
            v16 = trueExpression2;
            if ([v15 isEqual:trueExpression2])
            {
              falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
              falseExpression2 = [equalCopy falseExpression];
              v17 = [falseExpression isEqual:falseExpression2];
            }

            else
            {
              v17 = 0;
            }

            maskExpression = v21;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
  v22 = [inputExpression description];
  v15 = [v22 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  v20 = [inputMinExpression description];
  v12 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
  v16 = [inputMaxExpression description];
  v3 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
  v13 = [maskExpression description];
  v4 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
  v6 = [trueExpression description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
  v9 = [falseExpression description];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"(sdl-hat-function\n\t%@\n\t%@\n\t%@\n\t%@\n\t%@\n\t%@\n)", v15, v12, v3, v4, v7, v10];

  return v18;
}

- (id)debugDescription
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
  v24 = [inputExpression debugDescription];
  v15 = [v24 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  v22 = [inputMinExpression debugDescription];
  v13 = [v22 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
  v17 = [inputMaxExpression debugDescription];
  v12 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
  v14 = [maskExpression debugDescription];
  v4 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
  v6 = [trueExpression debugDescription];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
  v9 = [falseExpression debugDescription];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v21 = [v20 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t inputMin = %@\n\t inputMax = %@\n\t mask = %@\n\t true = %@\n\t false = %@\n}", v18, self, v15, v13, v12, v4, v7, v10];

  return v21;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v110[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_respondsToSelector();
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
  v9 = inputExpression;
  if (v7)
  {
    v98 = 0;
    v10 = &v98;
    v11 = [contextCopy buildExpression:inputExpression error:&v98];
  }

  else
  {
    v97 = 0;
    v10 = &v97;
    v11 = [inputExpression buildExpressionWithContext:contextCopy error:&v97];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_48;
    }

    v20 = MEMORY[0x1E696ABC0];
    v109[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v110[0] = v21;
    v110[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v109[1] = v22;
    v109[2] = v23;
    v110[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *error = v25 = 0;
    v14 = v13;
    goto LABEL_46;
  }

  v14 = _Block_copy(v12);

  v15 = objc_opt_respondsToSelector();
  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  v17 = inputMinExpression;
  if (v15)
  {
    v96 = 0;
    v18 = &v96;
    v19 = [contextCopy buildExpression:inputMinExpression error:&v96];
  }

  else
  {
    v95 = 0;
    v18 = &v95;
    v19 = [inputMinExpression buildExpressionWithContext:contextCopy error:&v95];
  }

  v26 = v19;
  v27 = *v18;

  if (v26)
  {
    v21 = _Block_copy(v26);

    v28 = objc_opt_respondsToSelector();
    inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
    v30 = inputMaxExpression;
    if (v28)
    {
      v94 = 0;
      v31 = &v94;
      v32 = [contextCopy buildExpression:inputMaxExpression error:&v94];
    }

    else
    {
      v93 = 0;
      v31 = &v93;
      v32 = [inputMaxExpression buildExpressionWithContext:contextCopy error:&v93];
    }

    v37 = v32;
    v24 = *v31;

    if (!v37)
    {
      if (!error)
      {
        v25 = 0;
LABEL_46:

        v27 = v21;
        goto LABEL_47;
      }

      v43 = MEMORY[0x1E696ABC0];
      v105[0] = *MEMORY[0x1E696A578];
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v45 = *MEMORY[0x1E696A588];
      v106[0] = v44;
      v106[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v46 = *MEMORY[0x1E696AA08];
      v105[1] = v45;
      v105[2] = v46;
      v106[2] = v24;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];
      v48 = v43;
      v49 = v44;
      [v48 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v47];
      *error = v25 = 0;
      goto LABEL_44;
    }

    v79 = _Block_copy(v37);

    v38 = objc_opt_respondsToSelector();
    maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
    v40 = maskExpression;
    if (v38)
    {
      v92 = 0;
      v41 = &v92;
      v42 = [contextCopy buildExpression:maskExpression error:&v92];
    }

    else
    {
      v91 = 0;
      v41 = &v91;
      v42 = [maskExpression buildExpressionWithContext:contextCopy error:&v91];
    }

    v50 = v42;
    v36 = *v41;

    if (!v50)
    {
      if (!error)
      {
        v25 = 0;
        v24 = v79;
        goto LABEL_45;
      }

      v56 = MEMORY[0x1E696ABC0];
      v103[0] = *MEMORY[0x1E696A578];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v58 = *MEMORY[0x1E696A588];
      v104[0] = v57;
      v104[1] = @"The 'maskExpression' sub-expression failed to build.";
      v59 = *MEMORY[0x1E696AA08];
      v103[1] = v58;
      v103[2] = v59;
      v104[2] = v36;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:3];
      [v56 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v60];
      *error = v25 = 0;
      v49 = v36;
      goto LABEL_43;
    }

    v78 = _Block_copy(v50);

    v51 = objc_opt_respondsToSelector();
    trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
    v53 = trueExpression;
    if (v51)
    {
      v90 = 0;
      v54 = &v90;
      v55 = [contextCopy buildExpression:trueExpression error:&v90];
    }

    else
    {
      v89 = 0;
      v54 = &v89;
      v55 = [trueExpression buildExpressionWithContext:contextCopy error:&v89];
    }

    v61 = v55;
    v47 = *v54;

    if (v61)
    {
      v57 = _Block_copy(v61);

      v62 = objc_opt_respondsToSelector();
      falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
      v64 = falseExpression;
      if (v62)
      {
        v88 = 0;
        v65 = &v88;
        v66 = [contextCopy buildExpression:falseExpression error:&v88];
      }

      else
      {
        v87 = 0;
        v65 = &v87;
        v66 = [falseExpression buildExpressionWithContext:contextCopy error:&v87];
      }

      v71 = v66;
      v60 = *v65;

      if (v71)
      {
        v72 = _Block_copy(v71);

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
        aBlock[3] = &unk_1E84147D8;
        v81 = v14;
        v82 = v21;
        v83 = v79;
        v49 = v78;
        v84 = v78;
        v47 = v57;
        v85 = v47;
        v86 = v72;
        v60 = v72;
        v25 = _Block_copy(aBlock);

        v70 = v81;
LABEL_42:

        v57 = v47;
LABEL_43:

        v47 = v57;
        v24 = v79;
LABEL_44:

        v36 = v49;
        goto LABEL_45;
      }

      if (!error)
      {
        v25 = 0;
        v49 = v78;
        goto LABEL_43;
      }

      v73 = MEMORY[0x1E696ABC0];
      v99[0] = *MEMORY[0x1E696A578];
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v74 = *MEMORY[0x1E696A588];
      v100[0] = v70;
      v100[1] = @"The 'falseExpression' sub-expression failed to build.";
      v75 = *MEMORY[0x1E696AA08];
      v99[1] = v74;
      v99[2] = v75;
      v100[2] = v60;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:3];
      *error = [v73 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v76];

      v25 = 0;
      v47 = v57;
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        v49 = v78;
        v24 = v79;
        goto LABEL_44;
      }

      v67 = MEMORY[0x1E696ABC0];
      v101[0] = *MEMORY[0x1E696A578];
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v68 = *MEMORY[0x1E696A588];
      v102[0] = v60;
      v102[1] = @"The 'trueExpression' sub-expression failed to build.";
      v69 = *MEMORY[0x1E696AA08];
      v101[1] = v68;
      v101[2] = v69;
      v102[2] = v47;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
      [v67 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v70];
      *error = v25 = 0;
    }

    v49 = v78;
    goto LABEL_42;
  }

  if (error)
  {
    v33 = MEMORY[0x1E696ABC0];
    v107[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v34 = *MEMORY[0x1E696A588];
    v108[0] = v24;
    v108[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v35 = *MEMORY[0x1E696AA08];
    v107[1] = v34;
    v107[2] = v35;
    v108[2] = v27;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v36];
    *error = v25 = 0;
    v21 = v27;
LABEL_45:

    goto LABEL_46;
  }

  v25 = 0;
LABEL_47:

  v13 = v14;
LABEL_48:

  return v25;
}

uint64_t __98__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
  (*(a1[7] + 16))();
  (*(a1[8] + 16))();
  return (*(a1[9] + 16))();
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v112[6] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v99[3] = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x2020000000;
  v98[3] = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v97[3] = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v96[3] = 0;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x2020000000;
  v95[3] = 0;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v94[3] = 0;
  if (objc_opt_respondsToSelector())
  {
    inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
    v10 = v93;
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v93[3] = &unk_1E8414800;
    v93[5] = v99;
    v93[4] = consumerCopy;
    v93[6] = v97;
    v93[7] = v98;
    v93[8] = v96;
    v93[9] = v95;
    v93[10] = v94;
    v11 = &v92;
    v92 = 0;
    v12 = [contextCopy buildReactiveExpression:inputExpression consumer:v93 error:&v92];
  }

  else
  {
    inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
    v10 = v91;
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v91[3] = &unk_1E8414800;
    v91[5] = v99;
    v91[4] = consumerCopy;
    v91[6] = v97;
    v91[7] = v98;
    v91[8] = v96;
    v91[9] = v95;
    v91[10] = v94;
    v11 = &v90;
    v90 = 0;
    v12 = [inputExpression buildReactiveExpressionWithContext:contextCopy consumer:v91 error:&v90];
  }

  v13 = v12;
  v14 = *v11;

  if (!v13)
  {
    if (!error)
    {
      v24 = 0;
      goto LABEL_51;
    }

    v19 = MEMORY[0x1E696ABC0];
    v110[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v21 = *MEMORY[0x1E696A588];
    v111[0] = v20;
    v111[1] = @"The 'inputExpression' sub-expression failed to build.";
    v22 = *MEMORY[0x1E696AA08];
    v110[1] = v21;
    v110[2] = v22;
    v111[2] = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:3];
    [v19 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v23];
    *error = v24 = 0;
    goto LABEL_49;
  }

  v112[0] = v13;
  if (objc_opt_respondsToSelector())
  {
    inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
    v16 = v89;
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v89[3] = &unk_1E8414800;
    v89[5] = v98;
    v89[4] = consumerCopy;
    v89[6] = v99;
    v89[7] = v97;
    v89[8] = v96;
    v89[9] = v95;
    v89[10] = v94;
    v17 = &v88;
    v88 = 0;
    v18 = [contextCopy buildReactiveExpression:inputMinExpression consumer:v89 error:&v88];
  }

  else
  {
    inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
    v16 = v87;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v87[3] = &unk_1E8414800;
    v87[5] = v98;
    v87[4] = consumerCopy;
    v87[6] = v99;
    v87[7] = v97;
    v87[8] = v96;
    v87[9] = v95;
    v87[10] = v94;
    v17 = &v86;
    v86 = 0;
    v18 = [inputMinExpression buildReactiveExpressionWithContext:contextCopy consumer:v87 error:&v86];
  }

  v20 = v18;
  v25 = (v16 + 4);
  v26 = *v17;

  if (v20)
  {

    v112[1] = v20;
    if (objc_opt_respondsToSelector())
    {
      inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
      v28 = v85;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
      v85[3] = &unk_1E8414800;
      v85[5] = v97;
      v85[4] = consumerCopy;
      v85[6] = v99;
      v85[7] = v98;
      v85[8] = v96;
      v85[9] = v95;
      v85[10] = v94;
      v29 = &v84;
      v84 = 0;
      v68 = [contextCopy buildReactiveExpression:inputMaxExpression consumer:v85 error:&v84];
    }

    else
    {
      inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
      v28 = v83;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
      v83[3] = &unk_1E8414800;
      v83[5] = v97;
      v83[4] = consumerCopy;
      v83[6] = v99;
      v83[7] = v98;
      v83[8] = v96;
      v83[9] = v95;
      v83[10] = v94;
      v29 = &v82;
      v82 = 0;
      v68 = [inputMaxExpression buildReactiveExpressionWithContext:contextCopy consumer:v83 error:&v82];
    }

    v23 = *v29;

    if (!v68)
    {
      if (!error)
      {
        v24 = 0;
LABEL_48:
        v14 = v13;
LABEL_49:

        v26 = v20;
        v13 = v14;
        goto LABEL_50;
      }

      v37 = MEMORY[0x1E696ABC0];
      v106[0] = *MEMORY[0x1E696A578];
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v38 = *MEMORY[0x1E696A588];
      v107[0] = v67;
      v107[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v39 = *MEMORY[0x1E696AA08];
      v106[1] = v38;
      v106[2] = v39;
      v107[2] = v23;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
      [v37 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v40];
      *error = v24 = 0;
      goto LABEL_45;
    }

    v112[2] = v68;
    if (objc_opt_respondsToSelector())
    {
      maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
      v35 = v81;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7;
      v81[3] = &unk_1E8414800;
      v81[5] = v96;
      v81[4] = consumerCopy;
      v81[6] = v99;
      v81[7] = v97;
      v81[8] = v98;
      v81[9] = v95;
      v81[10] = v94;
      v36 = &v80;
      v80 = 0;
      v67 = [contextCopy buildReactiveExpression:maskExpression consumer:v81 error:&v80];
    }

    else
    {
      maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
      v35 = v79;
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8;
      v79[3] = &unk_1E8414800;
      v79[5] = v96;
      v79[4] = consumerCopy;
      v79[6] = v99;
      v79[7] = v97;
      v79[8] = v98;
      v79[9] = v95;
      v79[10] = v94;
      v36 = &v78;
      v78 = 0;
      v67 = [maskExpression buildReactiveExpressionWithContext:contextCopy consumer:v79 error:&v78];
    }

    v41 = (v35 + 4);
    v33 = *v36;

    if (!v67)
    {
      if (!error)
      {
        v24 = 0;
        goto LABEL_46;
      }

      v45 = MEMORY[0x1E696ABC0];
      v104[0] = *MEMORY[0x1E696A578];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v47 = *MEMORY[0x1E696A588];
      v105[0] = v46;
      v105[1] = @"The 'maskExpression' sub-expression failed to build.";
      v48 = *MEMORY[0x1E696AA08];
      v104[1] = v47;
      v104[2] = v48;
      v105[2] = v33;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
      [v45 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v49];
      *error = v24 = 0;
      goto LABEL_43;
    }

    v112[3] = v67;
    if (objc_opt_respondsToSelector())
    {
      trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
      v43 = v77;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9;
      v77[3] = &unk_1E8414800;
      v77[5] = v95;
      v77[4] = consumerCopy;
      v77[6] = v99;
      v77[7] = v97;
      v77[8] = v98;
      v77[9] = v96;
      v77[10] = v94;
      v44 = &v76;
      v76 = 0;
      v66 = [contextCopy buildReactiveExpression:trueExpression consumer:v77 error:&v76];
    }

    else
    {
      trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
      v43 = v75;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10;
      v75[3] = &unk_1E8414800;
      v75[5] = v95;
      v75[4] = consumerCopy;
      v75[6] = v99;
      v75[7] = v97;
      v75[8] = v98;
      v75[9] = v96;
      v75[10] = v94;
      v44 = &v74;
      v74 = 0;
      v66 = [trueExpression buildReactiveExpressionWithContext:contextCopy consumer:v75 error:&v74];
    }

    v50 = (v43 + 4);
    v40 = *v44;

    if (v66)
    {

      v112[4] = v66;
      if (objc_opt_respondsToSelector())
      {
        falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
        v52 = v73;
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_11;
        v73[3] = &unk_1E8414800;
        v73[5] = v94;
        v73[4] = consumerCopy;
        v73[6] = v99;
        v73[7] = v97;
        v73[8] = v98;
        v73[9] = v96;
        v73[10] = v95;
        v53 = &v72;
        v72 = 0;
        v54 = [contextCopy buildReactiveExpression:falseExpression consumer:v73 error:&v72];
      }

      else
      {
        falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
        v52 = v71;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_12;
        v71[3] = &unk_1E8414800;
        v71[5] = v94;
        v71[4] = consumerCopy;
        v71[6] = v99;
        v71[7] = v97;
        v71[8] = v98;
        v71[9] = v96;
        v71[10] = v95;
        v53 = &v70;
        v70 = 0;
        v54 = [falseExpression buildReactiveExpressionWithContext:contextCopy consumer:v71 error:&v70];
      }

      v59 = v54;
      v60 = (v52 + 4);
      v49 = *v53;

      v46 = v66;
      if (v59)
      {

        v112[5] = v59;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:6];
        v49 = v59;
LABEL_42:
        v33 = v67;
LABEL_43:

        v40 = v46;
        v67 = v33;
LABEL_44:
        v23 = v68;
LABEL_45:

        v33 = v67;
        v68 = v23;
LABEL_46:
        v26 = v20;
        goto LABEL_47;
      }

      if (!error)
      {
        v24 = 0;
        goto LABEL_42;
      }

      v61 = MEMORY[0x1E696ABC0];
      v100[0] = *MEMORY[0x1E696A578];
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v62 = *MEMORY[0x1E696A588];
      v101[0] = v58;
      v101[1] = @"The 'falseExpression' sub-expression failed to build.";
      v63 = *MEMORY[0x1E696AA08];
      v100[1] = v62;
      v100[2] = v63;
      v101[2] = v49;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
      [v61 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v64];
      *error = v40 = v66;
    }

    else
    {
      if (!error)
      {
        v24 = 0;
        goto LABEL_44;
      }

      v55 = MEMORY[0x1E696ABC0];
      v102[0] = *MEMORY[0x1E696A578];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v56 = *MEMORY[0x1E696A588];
      v103[0] = v49;
      v103[1] = @"The 'trueExpression' sub-expression failed to build.";
      v57 = *MEMORY[0x1E696AA08];
      v102[1] = v56;
      v102[2] = v57;
      v103[2] = v40;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
      *error = [v55 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v58];
    }

    v24 = 0;
    v46 = v40;
    goto LABEL_42;
  }

  if (error)
  {
    v30 = MEMORY[0x1E696ABC0];
    v108[0] = *MEMORY[0x1E696A578];
    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v31 = *MEMORY[0x1E696A588];
    v109[0] = v68;
    v109[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v32 = *MEMORY[0x1E696AA08];
    v108[1] = v31;
    v108[2] = v32;
    v109[2] = v26;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:3];
    [v30 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v33];
    *error = v24 = 0;
LABEL_47:

    v23 = v68;
    v20 = v26;
    goto LABEL_48;
  }

  v24 = 0;
LABEL_50:

  v14 = v13;
LABEL_51:

  _Block_object_dispose(v94, 8);
  _Block_object_dispose(v95, 8);
  _Block_object_dispose(v96, 8);
  _Block_object_dispose(v97, 8);
  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v99, 8);

  return v24;
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v3 = a1[4];
  v4 = *(*(a1[7] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24) - v4 + 1.0;
  v6 = *(*(a1[5] + 8) + 24) - v4;
  if (v5 == 4.0)
  {
    v6 = v6 + v6;
  }

  else if (v5 != 8.0)
  {
    v6 = -1.0;
  }

  v7 = rint(v6);
  if (v7 > 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1D2CB2990[v7];
  }

  v9 = (rint(*(*(a1[8] + 8) + 24)) & v8) == 0;
  v10 = 9;
  if (v9)
  {
    v10 = 10;
  }

  return (*(v3 + 16))(*(*(a1[v10] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v3 = a1[4];
  v4 = *(*(a1[7] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24) - v4 + 1.0;
  v6 = *(*(a1[5] + 8) + 24) - v4;
  if (v5 == 4.0)
  {
    v6 = v6 + v6;
  }

  else if (v5 != 8.0)
  {
    v6 = -1.0;
  }

  v7 = rint(v6);
  if (v7 > 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1D2CB2990[v7];
  }

  v9 = (rint(*(*(a1[8] + 8) + 24)) & v8) == 0;
  v10 = 9;
  if (v9)
  {
    v10 = 10;
  }

  return (*(v3 + 16))(*(*(a1[v10] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = *(*(a1[5] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = *(*(a1[5] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[5] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[5] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 5;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 5;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_11(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 10;
  if (v7)
  {
    v8 = 5;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_12(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 10;
  if (v7)
  {
    v8 = 5;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

@end
@interface GCGenericDeviceDataBitTestExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataBitTestExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataBitTestExpressionModel

- (GCGenericDeviceDataBitTestExpressionModel)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = GCGenericDeviceDataBitTestExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v15 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v15.receiver, v15.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskExpression"];
  maskExpression = v4->_maskExpression;
  v4->_maskExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trueExpression"];
  trueExpression = v4->_trueExpression;
  v4->_trueExpression = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"falseExpression"];
  falseExpression = v4->_falseExpression;
  v4->_falseExpression = v11;

  v13 = [coderCopy decodeBoolForKey:@"partialMatch"];
  v4->_partialMatch = v13;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataBitTestExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v9 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputExpression"];

  maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  [coderCopy encodeObject:maskExpression forKey:@"maskExpression"];

  trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  [coderCopy encodeObject:trueExpression forKey:@"trueExpression"];

  falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
  [coderCopy encodeObject:falseExpression forKey:@"falseExpression"];

  [coderCopy encodeBool:-[GCGenericDeviceDataBitTestExpressionModel partialMatch](self forKey:{"partialMatch"), @"partialMatch"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = GCGenericDeviceDataBitTestExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v16 isEqual:equalCopy])
  {
    inputExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
    inputExpression2 = [equalCopy inputExpression];
    if ([inputExpression isEqual:inputExpression2])
    {
      maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
      maskExpression2 = [equalCopy maskExpression];
      if ([maskExpression isEqual:maskExpression2])
      {
        trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
        trueExpression2 = [equalCopy trueExpression];
        if ([trueExpression isEqual:trueExpression2])
        {
          falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
          falseExpression2 = [equalCopy falseExpression];
          if ([falseExpression isEqual:falseExpression2])
          {
            partialMatch = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
            v14 = partialMatch ^ [equalCopy partialMatch] ^ 1;
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  partialMatch = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
  inputExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
  v17 = [inputExpression description];
  v3 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  v4 = [maskExpression description];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  v7 = [trueExpression description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
  v10 = [falseExpression description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v15 stringWithFormat:@"(bit-test %i\n\t%@\n\t%@\n\t%@\n\t%@\n)", partialMatch, v3, v5, v8, v11];

  return v12;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  inputExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
  v18 = [inputExpression debugDescription];
  v4 = [v18 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  v15 = [maskExpression debugDescription];
  v5 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  v7 = [trueExpression debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
  v10 = [falseExpression debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v16 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t mask = %@\n\t trueExpression = %@\n\t falseExpression = %@\n\t partialMatch = %i\n}", v14, self, v4, v5, v8, v11, -[GCGenericDeviceDataBitTestExpressionModel partialMatch](self, "partialMatch")];

  return v12;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v77[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_respondsToSelector();
  inputExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
  v9 = inputExpression;
  if (v7)
  {
    v69 = 0;
    v10 = &v69;
    v11 = [contextCopy buildExpression:inputExpression error:&v69];
  }

  else
  {
    v68 = 0;
    v10 = &v68;
    v11 = [inputExpression buildExpressionWithContext:contextCopy error:&v68];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_31;
    }

    v20 = MEMORY[0x1E696ABC0];
    v76[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v77[0] = v21;
    v77[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v76[1] = v22;
    v76[2] = v23;
    v77[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *error = v25 = 0;
    v14 = v13;
    goto LABEL_29;
  }

  v14 = _Block_copy(v12);

  v15 = objc_opt_respondsToSelector();
  maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  v17 = maskExpression;
  if (v15)
  {
    v67 = 0;
    v18 = &v67;
    v19 = [contextCopy buildExpression:maskExpression error:&v67];
  }

  else
  {
    v66 = 0;
    v18 = &v66;
    v19 = [maskExpression buildExpressionWithContext:contextCopy error:&v66];
  }

  v26 = v19;
  v27 = *v18;

  if (!v26)
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_30;
    }

    v33 = MEMORY[0x1E696ABC0];
    v74[0] = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v35 = *MEMORY[0x1E696A588];
    v75[0] = v34;
    v75[1] = @"The 'maskExpression' sub-expression failed to build.";
    v36 = *MEMORY[0x1E696AA08];
    v74[1] = v35;
    v74[2] = v36;
    v75[2] = v27;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v37];
    *error = v25 = 0;
    v21 = v27;
    goto LABEL_28;
  }

  v21 = _Block_copy(v26);

  v28 = objc_opt_respondsToSelector();
  trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  v30 = trueExpression;
  if (v28)
  {
    v65 = 0;
    v31 = &v65;
    v32 = [contextCopy buildExpression:trueExpression error:&v65];
  }

  else
  {
    v64 = 0;
    v31 = &v64;
    v32 = [trueExpression buildExpressionWithContext:contextCopy error:&v64];
  }

  v38 = v32;
  v24 = *v31;

  if (v38)
  {
    v34 = _Block_copy(v38);

    v39 = objc_opt_respondsToSelector();
    falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
    v41 = falseExpression;
    if (v39)
    {
      v63 = 0;
      v42 = &v63;
      v43 = [contextCopy buildExpression:falseExpression error:&v63];
    }

    else
    {
      v62 = 0;
      v42 = &v62;
      v43 = [falseExpression buildExpressionWithContext:contextCopy error:&v62];
    }

    v48 = v43;
    v37 = *v42;

    if (v48)
    {
      v49 = _Block_copy(v48);

      partialMatch = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E8413A30;
      v57 = v14;
      v58 = v21;
      v61 = partialMatch;
      v24 = v34;
      v59 = v24;
      v60 = v49;
      v37 = v49;
      v25 = _Block_copy(aBlock);

      v47 = v57;
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        goto LABEL_28;
      }

      v51 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v52 = *MEMORY[0x1E696A588];
      v71[0] = v47;
      v71[1] = @"The 'falseExpression' sub-expression failed to build.";
      v53 = *MEMORY[0x1E696AA08];
      v70[1] = v52;
      v70[2] = v53;
      v71[2] = v37;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];
      *error = [v51 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v54];

      v25 = 0;
      v24 = v34;
    }
  }

  else
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_29;
    }

    v44 = MEMORY[0x1E696ABC0];
    v72[0] = *MEMORY[0x1E696A578];
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v45 = *MEMORY[0x1E696A588];
    v73[0] = v37;
    v73[1] = @"The 'trueExpression' sub-expression failed to build.";
    v46 = *MEMORY[0x1E696AA08];
    v72[1] = v45;
    v72[2] = v46;
    v73[2] = v24;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:3];
    [v44 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v47];
    *error = v25 = 0;
  }

  v34 = v24;
LABEL_28:

  v24 = v34;
LABEL_29:

  v27 = v21;
LABEL_30:

  v13 = v14;
LABEL_31:

  return v25;
}

uint64_t __91__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = rint((*(*(a1 + 40) + 16))());
  v4 = v3 & rint(v2);
  if (v4)
  {
    v5 = 48;
  }

  else
  {
    v5 = 56;
  }

  if (v4 == v3)
  {
    v6 = 48;
  }

  else
  {
    v6 = 56;
  }

  if (*(a1 + 64))
  {
    v6 = v5;
  }

  v7 = *(*(a1 + v6) + 16);

  return v7();
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v89[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  partialMatch = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
  if (objc_opt_respondsToSelector())
  {
    inputExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
    v10 = v75;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v75[3] = &unk_1E8413A58;
    v75[5] = v80;
    v75[4] = consumerCopy;
    v75[6] = v79;
    v76 = partialMatch;
    v75[7] = v78;
    v75[8] = v77;
    v11 = &v74;
    v74 = 0;
    v12 = [contextCopy buildReactiveExpression:inputExpression consumer:v75 error:&v74];
  }

  else
  {
    inputExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
    v10 = v72;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v72[3] = &unk_1E8413A58;
    v72[5] = v80;
    v72[4] = consumerCopy;
    v72[6] = v79;
    v73 = partialMatch;
    v72[7] = v78;
    v72[8] = v77;
    v11 = &v71;
    v71 = 0;
    v12 = [inputExpression buildReactiveExpressionWithContext:contextCopy consumer:v72 error:&v71];
  }

  v13 = v12;
  v14 = *v11;

  if (!v13)
  {
    if (!error)
    {
      v24 = 0;
      goto LABEL_34;
    }

    v19 = MEMORY[0x1E696ABC0];
    v87[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v21 = *MEMORY[0x1E696A588];
    v88[0] = v20;
    v88[1] = @"The 'inputExpression' sub-expression failed to build.";
    v22 = *MEMORY[0x1E696AA08];
    v87[1] = v21;
    v87[2] = v22;
    v88[2] = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:3];
    [v19 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v23];
    *error = v24 = 0;
    goto LABEL_32;
  }

  v89[0] = v13;
  if (objc_opt_respondsToSelector())
  {
    maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
    v16 = v69;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v69[3] = &unk_1E8413A58;
    v69[5] = v79;
    v69[4] = consumerCopy;
    v69[6] = v80;
    v70 = partialMatch;
    v69[7] = v78;
    v69[8] = v77;
    v17 = &v68;
    v68 = 0;
    v18 = [contextCopy buildReactiveExpression:maskExpression consumer:v69 error:&v68];
  }

  else
  {
    maskExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
    v16 = v66;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v66[3] = &unk_1E8413A58;
    v66[5] = v79;
    v66[4] = consumerCopy;
    v66[6] = v80;
    v67 = partialMatch;
    v66[7] = v78;
    v66[8] = v77;
    v17 = &v65;
    v65 = 0;
    v18 = [maskExpression buildReactiveExpressionWithContext:contextCopy consumer:v66 error:&v65];
  }

  v20 = v18;
  v25 = (v16 + 4);
  v26 = *v17;

  if (!v20)
  {
    if (!error)
    {
      v24 = 0;
      goto LABEL_33;
    }

    v30 = MEMORY[0x1E696ABC0];
    v85[0] = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v31 = *MEMORY[0x1E696A588];
    v86[0] = v23;
    v86[1] = @"The 'maskExpression' sub-expression failed to build.";
    v32 = *MEMORY[0x1E696AA08];
    v85[1] = v31;
    v85[2] = v32;
    v86[2] = v26;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
    [v30 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v33];
    *error = v24 = 0;
    goto LABEL_30;
  }

  v89[1] = v20;
  if (objc_opt_respondsToSelector())
  {
    trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
    v28 = v63;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
    v63[3] = &unk_1E8413A58;
    v63[5] = v78;
    v63[4] = consumerCopy;
    v63[6] = v80;
    v64 = partialMatch;
    v63[7] = v79;
    v63[8] = v77;
    v29 = &v62;
    v62 = 0;
    v50 = [contextCopy buildReactiveExpression:trueExpression consumer:v63 error:&v62];
  }

  else
  {
    trueExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
    v28 = v60;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
    v60[3] = &unk_1E8413A58;
    v60[5] = v78;
    v60[4] = consumerCopy;
    v60[6] = v80;
    v61 = partialMatch;
    v60[7] = v79;
    v60[8] = v77;
    v29 = &v59;
    v59 = 0;
    v50 = [trueExpression buildReactiveExpressionWithContext:contextCopy consumer:v60 error:&v59];
  }

  v34 = (v28 + 4);
  v23 = *v29;

  if (!v50)
  {
    if (!error)
    {
      v24 = 0;
      goto LABEL_31;
    }

    v39 = MEMORY[0x1E696ABC0];
    v83[0] = *MEMORY[0x1E696A578];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v40 = *MEMORY[0x1E696A588];
    v84[0] = v33;
    v84[1] = @"The 'trueExpression' sub-expression failed to build.";
    v41 = *MEMORY[0x1E696AA08];
    v83[1] = v40;
    v83[2] = v41;
    v84[2] = v23;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:3];
    *error = [v39 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v42];
    goto LABEL_27;
  }

  v89[2] = v50;
  if (objc_opt_respondsToSelector())
  {
    falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
    v36 = v57;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7;
    v57[3] = &unk_1E8413A58;
    v57[5] = v77;
    v57[4] = consumerCopy;
    v57[6] = v80;
    v58 = partialMatch;
    v57[7] = v79;
    v57[8] = v78;
    v37 = &v56;
    v56 = 0;
    v38 = [contextCopy buildReactiveExpression:falseExpression consumer:v57 error:&v56];
  }

  else
  {
    falseExpression = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
    v36 = v54;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8;
    v54[3] = &unk_1E8413A58;
    v54[5] = v77;
    v54[4] = consumerCopy;
    v54[6] = v80;
    v55 = partialMatch;
    v54[7] = v79;
    v54[8] = v78;
    v37 = &v53;
    v53 = 0;
    v38 = [falseExpression buildReactiveExpressionWithContext:contextCopy consumer:v54 error:&v53];
  }

  v43 = v38;
  v44 = (v36 + 4);
  v33 = *v37;

  v23 = v50;
  if (!v43)
  {
    if (!error)
    {
LABEL_28:
      v24 = 0;
      goto LABEL_29;
    }

    v45 = MEMORY[0x1E696ABC0];
    v81[0] = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v46 = *MEMORY[0x1E696A588];
    v82[0] = v42;
    v82[1] = @"The 'falseExpression' sub-expression failed to build.";
    v47 = *MEMORY[0x1E696AA08];
    v81[1] = v46;
    v81[2] = v47;
    v82[2] = v33;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];
    [v45 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v48];
    *error = v23 = v50;

LABEL_27:
    goto LABEL_28;
  }

  v89[3] = v43;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
  v33 = v43;
LABEL_29:
  v26 = v20;
LABEL_30:

  v20 = v26;
LABEL_31:
  v14 = v13;
LABEL_32:

  v26 = v20;
  v13 = v14;
LABEL_33:

  v14 = v13;
LABEL_34:

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v79, 8);
  _Block_object_dispose(v80, 8);

  return v24;
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 48) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 40) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 48) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 40) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 40) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 40) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 40;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 40;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 40;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 40;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 64;
  }

  else
  {
    v4 = 40;
  }

  if (v3 == v2)
  {
    v5 = 64;
  }

  else
  {
    v5 = 40;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 64;
  }

  else
  {
    v4 = 40;
  }

  if (v3 == v2)
  {
    v5 = 64;
  }

  else
  {
    v5 = 40;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

@end
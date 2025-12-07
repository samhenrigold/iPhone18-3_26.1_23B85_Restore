@interface TMLBlock
+ (id)createBlockForJSFunction:(id)function argumentsEncoding:(id)encoding;
+ (id)createBlockWithValueForJSFunction:(id)function argumentsEncoding:(id)encoding;
+ (void)callBlock:(id)block arguments:(id)arguments;
+ (void)initializeJSContext:(id)context;
- (TMLBlock)initWithFunction:(id)function argumentsEncoding:(id)encoding;
- (TMLBlock)initWithFunctionWithValue:(id)value argumentsEncoding:(id)encoding;
- (void)dealloc;
@end

@implementation TMLBlock

- (TMLBlock)initWithFunction:(id)function argumentsEncoding:(id)encoding
{
  functionCopy = function;
  encodingCopy = encoding;
  v18.receiver = self;
  v18.super_class = TMLBlock;
  v8 = [(TMLBlock *)&v18 init];
  if (v8 && ([objc_opt_class() createBlockForJSFunction:functionCopy argumentsEncoding:encodingCopy], v9 = objc_claimAutoreleasedReturnValue(), block = v8->_block, v8->_block = v9, block, !v8->_block))
  {
    v12 = MEMORY[0x277CD4658];
    encodingCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported block signature <%@>", encodingCopy];
    currentContext = [MEMORY[0x277CD4640] currentContext];
    v15 = [v12 valueWithNewErrorFromMessage:encodingCopy inContext:currentContext];
    currentContext2 = [MEMORY[0x277CD4640] currentContext];
    [currentContext2 setException:v15];

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (TMLBlock)initWithFunctionWithValue:(id)value argumentsEncoding:(id)encoding
{
  valueCopy = value;
  encodingCopy = encoding;
  v18.receiver = self;
  v18.super_class = TMLBlock;
  v8 = [(TMLBlock *)&v18 init];
  if (v8 && ([objc_opt_class() createBlockWithValueForJSFunction:valueCopy argumentsEncoding:encodingCopy], v9 = objc_claimAutoreleasedReturnValue(), block = v8->_block, v8->_block = v9, block, !v8->_block))
  {
    v12 = MEMORY[0x277CD4658];
    encodingCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported block signature <%@>", encodingCopy];
    currentContext = [MEMORY[0x277CD4640] currentContext];
    v15 = [v12 valueWithNewErrorFromMessage:encodingCopy inContext:currentContext];
    currentContext2 = [MEMORY[0x277CD4640] currentContext];
    [currentContext2 setException:v15];

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (void)dealloc
{
  block = self->_block;
  self->_block = 0;

  v4.receiver = self;
  v4.super_class = TMLBlock;
  [(TMLBlock *)&v4 dealloc];
}

+ (void)callBlock:(id)block arguments:(id)arguments
{
  blockCopy = block;
  argumentsCopy = arguments;
  if (blockCopy)
  {
    v6 = [argumentsCopy count];
    if (v6 == 1)
    {
      v7 = [argumentsCopy objectAtIndexedSubscript:0];
      blockCopy[2](blockCopy, v7);
    }

    else if (!v6)
    {
      (blockCopy[2])();
    }
  }
}

+ (id)createBlockForJSFunction:(id)function argumentsEncoding:(id)encoding
{
  functionCopy = function;
  encodingCopy = encoding;
  v7 = +[TMLJSEnvironment currentContext];
  v8 = [MEMORY[0x277CD4650] managedValueWithValue:functionCopy];
  v9 = [encodingCopy length];
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      if ([encodingCopy isEqualToString:@"@"])
      {
        v10 = v40;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v11 = &unk_279DC5A78;
        v12 = sub_26F19CD34;
      }

      else
      {
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
        v16 = [encodingCopy isEqualToString:v15];

        if (v16)
        {
          v10 = v39;
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v11 = &unk_279DC5AC8;
          v12 = sub_26F19CEC0;
        }

        else
        {
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"f"];
          v20 = [encodingCopy isEqualToString:v19];

          if (!v20)
          {
            goto LABEL_25;
          }

          v10 = v38;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v11 = &unk_279DC5B18;
          v12 = sub_26F19D024;
        }
      }

      goto LABEL_23;
    }

    if (v9 == 2)
    {
      if ([encodingCopy isEqualToString:@"@@"])
      {
        v10 = v37;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v11 = &unk_279DC5B68;
        v12 = sub_26F19D190;
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s@", "B"];
        v14 = [encodingCopy isEqualToString:v13];

        if (!v14)
        {
          goto LABEL_25;
        }

        v10 = v36;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v11 = &unk_279DC5BB8;
        v12 = sub_26F19D384;
      }

      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v9 == 3)
  {
    if ([encodingCopy isEqualToString:@"@@@"])
    {
      v10 = v35;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v11 = &unk_279DC5C08;
      v12 = sub_26F19D540;
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%s@", "B"];
      v18 = [encodingCopy isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_25;
      }

      v10 = v34;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v11 = &unk_279DC5C58;
      v12 = sub_26F19D78C;
    }

    goto LABEL_23;
  }

  if (v9 != 4)
  {
LABEL_10:
    v10 = v41;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v11 = &unk_279DC5A28;
    v12 = sub_26F19CB00;
    goto LABEL_23;
  }

  if (![encodingCopy isEqualToString:@"@@@@"])
  {
    goto LABEL_25;
  }

  v10 = v33;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v11 = &unk_279DC5CA8;
  v12 = sub_26F19D9A0;
LABEL_23:
  v10[2] = v12;
  v10[3] = v11;
  v21 = v7;
  v10[4] = v21;
  v22 = v8;
  v10[5] = v22;
  v23 = MEMORY[0x27438BB60](v10);

  if (v23)
  {
    context = [functionCopy context];
    virtualMachine = [context virtualMachine];

    [virtualMachine addManagedReference:v22 withOwner:v21];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_26F19DC4C;
    v29[3] = &unk_279DC5A50;
    v30 = virtualMachine;
    v31 = v22;
    v32 = v21;
    v26 = virtualMachine;
    [TMLObjectFinalizer runBlock:v29 onFinalize:v23];
    v27 = v23;

    goto LABEL_26;
  }

LABEL_25:
  v27 = 0;
LABEL_26:

  return v27;
}

+ (id)createBlockWithValueForJSFunction:(id)function argumentsEncoding:(id)encoding
{
  functionCopy = function;
  encodingCopy = encoding;
  v7 = +[TMLJSEnvironment currentContext];
  v8 = [MEMORY[0x277CD4650] managedValueWithValue:functionCopy];
  v9 = [encodingCopy length];
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      if ([encodingCopy isEqualToString:@"@"])
      {
        v10 = v43;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v11 = &unk_279DC5CF8;
        v12 = sub_26F19E3DC;
      }

      else
      {
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"B"];
        v16 = [encodingCopy isEqualToString:v15];

        if (v16)
        {
          v10 = v42;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v11 = &unk_279DC5D20;
          v12 = sub_26F19E4D4;
        }

        else
        {
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"f"];
          v22 = [encodingCopy isEqualToString:v21];

          if (!v22)
          {
            goto LABEL_27;
          }

          v10 = v41;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v11 = &unk_279DC5D48;
          v12 = sub_26F19E5B8;
        }
      }

      goto LABEL_25;
    }

    if (v9 == 2)
    {
      if ([encodingCopy isEqualToString:@"@@"])
      {
        v10 = v40;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v11 = &unk_279DC5D70;
        v12 = sub_26F19E69C;
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s@", "B"];
        v14 = [encodingCopy isEqualToString:v13];

        if (v14)
        {
          v10 = v39;
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v11 = &unk_279DC5D98;
          v12 = sub_26F19E7DC;
        }

        else
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s@", "q"];
          v20 = [encodingCopy isEqualToString:v19];

          if (!v20)
          {
            goto LABEL_27;
          }

          v10 = v38;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v11 = &unk_279DC5DC0;
          v12 = sub_26F19E8F8;
        }
      }

      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (v9 == 3)
  {
    if ([encodingCopy isEqualToString:@"@@@"])
    {
      v10 = v37;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v11 = &unk_279DC5DE8;
      v12 = sub_26F19EA14;
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%s@", "B"];
      v18 = [encodingCopy isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_27;
      }

      v10 = v36;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v11 = &unk_279DC5E10;
      v12 = sub_26F19EB98;
    }

    goto LABEL_25;
  }

  if (v9 != 4)
  {
LABEL_10:
    v10 = v44;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v11 = &unk_279DC5CD0;
    v12 = sub_26F19E25C;
    goto LABEL_25;
  }

  if (![encodingCopy isEqualToString:@"@@@@"])
  {
    goto LABEL_27;
  }

  v10 = v35;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v11 = &unk_279DC5E38;
  v12 = sub_26F19ECF4;
LABEL_25:
  v10[2] = v12;
  v10[3] = v11;
  v23 = v7;
  v10[4] = v23;
  v24 = v8;
  v10[5] = v24;
  v25 = MEMORY[0x27438BB60](v10);

  if (v25)
  {
    context = [functionCopy context];
    virtualMachine = [context virtualMachine];

    [virtualMachine addManagedReference:v24 withOwner:v23];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_26F19EEB8;
    v31[3] = &unk_279DC5A50;
    v32 = virtualMachine;
    v33 = v24;
    v34 = v23;
    v28 = virtualMachine;
    [TMLObjectFinalizer runBlock:v31 onFinalize:v25];
    v29 = v25;

    goto LABEL_28;
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

+ (void)initializeJSContext:(id)context
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F19F00C;
  v9[3] = &unk_279DC5E58;
  v9[4] = self;
  contextCopy = context;
  v5 = MEMORY[0x27438BB60](v9);
  [contextCopy setObject:v5 forKeyedSubscript:@"block"];

  v6 = [contextCopy objectForKeyedSubscript:@"block"];
  [v6 setObject:&unk_287F2BAF0 forKeyedSubscript:@"invoke"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F19FADC;
  v8[3] = &unk_279DC5E58;
  v8[4] = self;
  v7 = MEMORY[0x27438BB60](v8);
  [contextCopy setObject:v7 forKeyedSubscript:@"blockWithValue"];
}

@end
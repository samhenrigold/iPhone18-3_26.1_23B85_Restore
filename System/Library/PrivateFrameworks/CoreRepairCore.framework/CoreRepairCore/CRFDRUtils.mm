@interface CRFDRUtils
+ (BOOL)hasMesaUnsealedData;
+ (BOOL)hasUnsealedComponent:(int)component;
+ (BOOL)isDcSignedComponent:(int)component error:(id *)error;
@end

@implementation CRFDRUtils

+ (BOOL)isDcSignedComponent:(int)component error:(id *)error
{
  v5 = *&component;
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  if (component == 1033)
  {
    if ([CRFDRUtils isDataClassSupported:@"AlsC"])
    {
      v6 = ZhuGeCopyValue();
      if (!v6)
      {
        v7 = handleForCategory(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(CRFDRUtils(ComponentState) *)&v41 isDcSignedComponent:v7 error:v30, v31, v32, v33, v34, v35];
        }

        goto LABEL_33;
      }

LABEL_9:
      v14 = @"AlsC";
      goto LABEL_21;
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (component != 1034 || ![CRFDRUtils isDataClassSupported:@"AlsC"])
  {
    goto LABEL_10;
  }

  v6 = ZhuGeCopyValue();
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = handleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(CRFDRUtils(ComponentState) *)&v41 isDcSignedComponent:v7 error:v8, v9, v10, v11, v12, v13];
  }

LABEL_33:

LABEL_11:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [CRDeviceMap getKeysInComponent:v5];
  v16 = [v15 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
LABEL_13:
    v19 = 0;
    while (1)
    {
      if (*v38 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v37 + 1) + 8 * v19);
      if ([CRFDRUtils isDataClassSupported:v20])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v17)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v14 = v20;

    if (!v14)
    {
      goto LABEL_23;
    }

LABEL_21:
    if ([(__CFString *)v14 isEqualToString:@"CmCl"])
    {
      v21 = [CRFDRUtils isDcSignedCombinedDataClass:v14 error:error];
    }

    else
    {
      if ([(__CFString *)v14 isEqualToString:@"SrvP"])
      {
        v28 = [CRFDRUtils isServicePartWithError:error];
        v29 = v28;
        if (v28)
        {
          v26 = [v28 isEqual:@"0"];
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_36;
      }

      v21 = [CRFDRUtils isDcSignedDataClass:v14 instance:v6 error:error];
    }

    v26 = v21;
LABEL_36:

    v25 = 0;
    goto LABEL_37;
  }

LABEL_19:

LABEL_23:
  v22 = MEMORY[0x1E696ABC0];
  v42 = *MEMORY[0x1E696A578];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Component %d is not supported for authorized repair for this device", v5];
  v43 = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v25 = [v22 errorWithDomain:@"com.apple.corerepair" code:-72 userInfo:v24];

  v26 = 0;
  if (error && v25)
  {
    v27 = v25;
    v26 = 0;
    *error = v25;
  }

LABEL_37:

  return v26;
}

+ (BOOL)hasUnsealedComponent:(int)component
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [CRDeviceMap getKeysInComponent:*&component];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [CRFDRUtils findUnsealedDataWithKey:*(*(&v12 + 1) + 8 * i) error:0, v12];
          v10 = v9;
          if (v9 && [v9 count])
          {

            LOBYTE(v6) = 1;
            goto LABEL_15;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)hasMesaUnsealedData
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v2 = [self findUnsealedDataWithError:&v24];
  v3 = v24;
  v4 = v3;
  if (!v2 || v3)
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CRFDRUtils(ComponentState) *)v4 hasMesaUnsealedData:v11];
    }

    goto LABEL_15;
  }

  if (![v2 count])
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v11, OS_LOG_TYPE_DEFAULT, "No delta components found", buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [&unk_1F4BCD108 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (!v5)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *v20;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(&unk_1F4BCD108);
      }

      v9 = [v2 objectForKey:*(*(&v19 + 1) + 8 * i)];

      if (v9)
      {
        v10 = 1;
        goto LABEL_17;
      }
    }

    v6 = [&unk_1F4BCD108 countByEnumeratingWithState:&v19 objects:v25 count:16];
    v10 = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v10;
}

@end
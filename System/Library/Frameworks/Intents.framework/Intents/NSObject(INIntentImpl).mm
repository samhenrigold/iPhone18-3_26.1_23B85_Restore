@interface NSObject(INIntentImpl)
+ (id)intents_arrayOfWidgetPlistRepresentableInDict:()INIntentImpl key:error:resultTransformer:;
@end

@implementation NSObject(INIntentImpl)

+ (id)intents_arrayOfWidgetPlistRepresentableInDict:()INIntentImpl key:error:resultTransformer:
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 intents_safeObjectForKey:v11 ofType:objc_opt_class()];
  if ([v13 count])
  {
    v32 = a5;
    v34 = v11;
    v35 = v10;
    v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v13;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = 0;
          v20 = [self makeFromWidgetPlistableRepresentation:v19 error:&v37];
          v21 = v37;
          if (v21)
          {
            v26 = v21;
            if (v32)
            {
              v30 = v21;
              *v32 = v26;
            }

LABEL_22:
            v11 = v34;
            v10 = v35;
            v13 = v33;
            v27 = v36;

            v28 = 0;
            goto LABEL_23;
          }

          if (v12)
          {
            v12[2](v12, v20);
          }

          [v36 addObject:v20];
        }

        else
        {
          v22 = MEMORY[0x1E696AEC0];
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = [v22 stringWithFormat:@"Unable to decode %@ expected a dictionary form but found %@", v24, v19];;
          v26 = INIntentError(8001, v25, 0);

          if (v26)
          {
            if (v32)
            {
              v29 = v26;
              *v32 = v26;
            }

            goto LABEL_22;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v27 = v36;
    v28 = [v36 copy];
    v11 = v34;
    v10 = v35;
    v13 = v33;
LABEL_23:
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end
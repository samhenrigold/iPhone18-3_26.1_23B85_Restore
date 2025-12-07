@interface WFAskParameterDialogRequest(Parameter)
+ (uint64_t)dialogComponentStyleForParameter:()Parameter;
@end

@implementation WFAskParameterDialogRequest(Parameter)

+ (uint64_t)dialogComponentStyleForParameter:()Parameter
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([objc_opt_class() isSubclassOfClass:*(*(&v15 + 1) + 8 * v12)])
        {

          liveUpdatesPossibleStatesInEditor = 1;
          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    liveUpdatesPossibleStatesInEditor = [v3 liveUpdatesPossibleStatesInEditor];
  }

  else
  {
    liveUpdatesPossibleStatesInEditor = 0;
  }

LABEL_13:

  return liveUpdatesPossibleStatesInEditor;
}

@end
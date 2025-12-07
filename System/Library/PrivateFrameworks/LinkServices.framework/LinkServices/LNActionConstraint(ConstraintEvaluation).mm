@interface LNActionConstraint(ConstraintEvaluation)
+ (uint64_t)evaluate:()ConstraintEvaluation inContext:error:;
- (uint64_t)evaluateInContext:()ConstraintEvaluation error:;
@end

@implementation LNActionConstraint(ConstraintEvaluation)

- (uint64_t)evaluateInContext:()ConstraintEvaluation error:
{
  v22[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKey:@"action"];
  condition = [self condition];

  if (condition && ([self condition], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "evaluateWithObject:substitutionVariables:", v7, v6), v9, (v10 & 1) == 0))
  {
    if (a4)
    {
      *a4 = 0;
    }

    requirement = -1;
  }

  else
  {
    requirement = [self requirement];
    v12 = [requirement evaluateWithObject:v7 substitutionVariables:v6];

    if (v12)
    {
      requirement = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }

    else
    {
      behavior = [self behavior];
      if (behavior == 9999)
      {
        if (a4)
        {
          *a4 = 0;
        }

        requirement = 9999;
      }

      else if (behavior == 1)
      {
        if (a4)
        {
          message = [self message];
          autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
          localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];
          v17 = [message localizedStringForLocaleIdentifier:localeIdentifier];

          v18 = MEMORY[0x1E696ABC0];
          v21 = *MEMORY[0x1E696A578];
          v22[0] = v17;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
          *a4 = [v18 errorWithDomain:@"AppIntentConstraints" code:1 userInfo:v19];
        }

        requirement = 1;
      }
    }
  }

  return requirement;
}

+ (uint64_t)evaluate:()ConstraintEvaluation inContext:error:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      v13 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) evaluateInContext:v8 error:{a5, v18}];
          if (v15)
          {
            if (v15 == 1 || v15 == 9999)
            {
              v13 = v15;
              goto LABEL_21;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = -1;
    }

LABEL_21:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
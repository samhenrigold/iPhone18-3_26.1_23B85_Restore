@interface LAPasscodeHelperPasscodeStateSimulator
- (int64_t)passcodeType;
@end

@implementation LAPasscodeHelperPasscodeStateSimulator

- (int64_t)passcodeType
{
  v2 = __54__LAPasscodeHelperPasscodeStateSimulator_passcodeType__block_invoke(self, @"LA.simulator.passcodeType", &unk_1F5A79338);
  integerValue = [v2 integerValue];

  return integerValue;
}

id __54__LAPasscodeHelperPasscodeStateSimulator_passcodeType__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_variant_allows_internal_security_policies())
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 environment];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (!v8 || (v9 = objc_alloc_init(MEMORY[0x1E696ADA0]), [MEMORY[0x1E696AE30] processInfo], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "environment"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", v4), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "numberFromString:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v9, !v13))
    {
      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      v15 = [v14 persistentDomainForName:*MEMORY[0x1E696A400]];

      v16 = [v15 objectForKeyedSubscript:v4];
      if (v16 && (v17 = v16, [v15 objectForKeyedSubscript:v4], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, v17, (isKindOfClass & 1) != 0))
      {
        v20 = [v15 objectForKeyedSubscript:v4];
      }

      else
      {
        v20 = v5;
      }

      v13 = v20;
    }
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

@end
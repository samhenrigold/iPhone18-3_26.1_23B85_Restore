@interface NSString(HomeKit)
- (id)hm_generateSHA1;
- (id)hm_truncatedDisplayableVersionString;
- (id)hm_truncatedNameString;
- (id)stringByTransformingFirstWordUsingBlock:()HomeKit;
- (uint64_t)hm_containsAnyTextCheckingTypeInTypes:()HomeKit;
@end

@implementation NSString(HomeKit)

- (uint64_t)hm_containsAnyTextCheckingTypeInTypes:()HomeKit
{
  v49 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v5 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:a3 error:&v45];
  v6 = v45;
  [v5 matchesInString:self options:0 range:{0, objc_msgSend(self, "length")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v44 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (([*(*(&v41 + 1) + 8 * i) resultType] & a3) != 0)
        {
          v12 = 1;
          v13 = v7;
          goto LABEL_33;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ((a3 & 0x800) != 0)
  {
    v30 = v6;
    v31 = v5;
    v14 = &unk_1F0EFDB38;
    v15 = [self copy];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    allKeys = [&unk_1F0EFDB38 allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        v21 = v15;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v37 + 1) + 8 * v20);
          v23 = [&unk_1F0EFDB38 objectForKeyedSubscript:{v22, v30}];
          v15 = [v21 stringByReplacingOccurrencesOfString:v22 withString:v23];

          ++v20;
          v21 = v15;
        }

        while (v18 != v20);
        v18 = [allKeys countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v18);
    }

    if ([self isEqualToString:v15])
    {
      v12 = 0;
      v6 = v30;
      v5 = v31;
    }

    else
    {
      v36 = v30;
      v5 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2048 error:&v36];
      v6 = v36;

      v24 = [v5 matchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = v24;
      v25 = [v7 countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v33;
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v33 != v27)
            {
              objc_enumerationMutation(v7);
            }

            if (([*(*(&v32 + 1) + 8 * j) resultType] & 0x800) != 0)
            {
              v12 = 1;
              goto LABEL_31;
            }
          }

          v26 = [v7 countByEnumeratingWithState:&v32 objects:v46 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v12 = 0;
LABEL_31:
    }

    v13 = v7;

    v7 = &unk_1F0EFDB38;
LABEL_33:

    v7 = v13;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)hm_truncatedNameString
{
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  v2 = HMMaxLengthForNaming__hmf_once_v9;
  if (HMMaxLengthForNaming__hmf_once_v9 && [self length] > v2)
  {
    v3 = [self rangeOfComposedCharacterSequencesForRange:{0, v2}];
    v5 = [self substringWithRange:{v3, v4}];
    if ([v5 length] <= v2)
    {
      v6 = v5;
    }

    else
    {
      v6 = [v5 substringToIndex:v2 - 1];
    }

    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)hm_truncatedDisplayableVersionString
{
  if ([self length] > 0x40)
  {
    v3 = [self rangeOfComposedCharacterSequencesForRange:{0, 64}];
    v5 = [self substringWithRange:{v3, v4}];
    if ([v5 length] <= 0x40)
    {
      v6 = v5;
    }

    else
    {
      v6 = [v5 substringToIndex:63];
    }

    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)stringByTransformingFirstWordUsingBlock:()HomeKit
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v24 = &unk_19BEA266B;
  v25 = xmmword_19BE37690;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__66567;
  v19 = __Block_byref_object_dispose__66568;
  v20 = 0;
  v5 = [self length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__NSString_HomeKit__stringByTransformingFirstWordUsingBlock___block_invoke;
  v11[3] = &unk_1E754E4F0;
  v13 = &v21;
  v14 = &v15;
  v6 = v4;
  v12 = v6;
  [self enumerateSubstringsInRange:0 options:v5 usingBlock:{3, v11}];
  v7 = v22[4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self stringByReplacingCharactersInRange:v7 withString:{v22[5], v16[5]}];
  }

  v9 = selfCopy;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)hm_generateSHA1
{
  v1 = [self dataUsingEncoding:4];
  hm_generateSHA1 = [v1 hm_generateSHA1];

  return hm_generateSHA1;
}

@end
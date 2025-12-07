@interface CKShare(HealthDaemon)
+ (id)hd_shareWithSystemData:()HealthDaemon error:;
@end

@implementation CKShare(HealthDaemon)

+ (id)hd_shareWithSystemData:()HealthDaemon error:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _recordClasses;
  if (!_recordClasses)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;
  v8 = [v7 arrayByAddingObject:objc_opt_class()];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v30;
    v27 = a4;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v29 + 1) + 8 * v14);
        v17 = objc_alloc(MEMORY[0x277CCAAC8]);
        v28 = v15;
        v18 = [v17 initForReadingFromData:v5 error:&v28];
        v12 = v28;

        if (!v18)
        {
          v23 = MEMORY[0x277CCA9B8];
          v24 = MEMORY[0x277CCACA8];
          v22 = NSStringFromClass(v16);
          v25 = [v24 stringWithFormat:@"Failed to initialize unarchiver for class %@", v22];
          [v23 hk_assignError:v27 code:100 description:v25 underlyingError:v12];

          v20 = v9;
          goto LABEL_16;
        }

        [v18 _enableStrictSecureDecodingMode];
        v19 = [[v16 alloc] initWithCoder:v18];
        [v18 finishDecoding];

        if (v19)
        {
          v20 = v9;
          goto LABEL_18;
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      a4 = v27;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = [v9 hk_map:&__block_literal_global_35];
  v21 = MEMORY[0x277CCA9B8];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to unarchive data for classes %@", v20];
  [v21 hk_assignError:a4 code:100 description:v22];
LABEL_16:

  v19 = 0;
LABEL_18:

  return v19;
}

@end
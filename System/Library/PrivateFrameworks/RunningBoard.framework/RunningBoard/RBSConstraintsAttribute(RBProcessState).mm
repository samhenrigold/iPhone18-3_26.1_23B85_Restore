@interface RBSConstraintsAttribute(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)hasMandatoryAttributes:()RBProcessState error:;
@end

@implementation RBSConstraintsAttribute(RBProcessState)

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([self constraints] & 4) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D47050];
      v11 = *MEMORY[0x277CCA470];
      v12[0] = @"Constraints not met - assertion has a duration";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *a4 = [v7 errorWithDomain:v8 code:4 userInfo:v9];

      a4 = 0;
    }
  }

  else
  {
    a4 = 1;
  }

  return a4;
}

- (uint64_t)hasMandatoryAttributes:()RBProcessState error:
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([self constraints] & 3) == 0)
  {
    goto LABEL_16;
  }

  v22 = a4;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v10 |= [*(*(&v23 + 1) + 8 * i) preventsSuspension];
        objc_opt_class();
        v11 |= objc_opt_isKindOfClass();
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
  }

  if (([self constraints] & 1) != 0 && (v10 & 1) == 0)
  {
    v14 = v22;
    if (v22)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D47050];
      v29 = *MEMORY[0x277CCA470];
      v30 = @"Constraints not met - assertion does not prevent suspension";
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v30;
      v19 = &v29;
LABEL_19:
      v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
      *v14 = [v15 errorWithDomain:v16 code:4 userInfo:v20];

      v14 = 0;
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if ((([self constraints] & 2) == 0) | v11 & 1)
  {
LABEL_16:
    v14 = 1;
    goto LABEL_20;
  }

  v14 = v22;
  if (v22)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D47050];
    v27 = *MEMORY[0x277CCA470];
    v28 = @"Constraints not met - assertion is not launching";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v28;
    v19 = &v27;
    goto LABEL_19;
  }

LABEL_20:

  return v14;
}

@end
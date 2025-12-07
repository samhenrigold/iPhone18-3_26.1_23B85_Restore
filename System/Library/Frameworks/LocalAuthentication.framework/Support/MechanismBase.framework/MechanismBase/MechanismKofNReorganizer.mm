@interface MechanismKofNReorganizer
- (MechanismKofNReorganizer)initWithMin:(int64_t)min max:(int64_t)max k:(id)k request:(id)request apply:(id)apply;
- (id)reorganizeMechanisms:(id)mechanisms k:(int64_t)k error:(id *)error;
@end

@implementation MechanismKofNReorganizer

- (MechanismKofNReorganizer)initWithMin:(int64_t)min max:(int64_t)max k:(id)k request:(id)request apply:(id)apply
{
  kCopy = k;
  applyCopy = apply;
  v20.receiver = self;
  v20.super_class = MechanismKofNReorganizer;
  v15 = [(MechanismBase *)&v20 initWithEventIdentifier:0 remoteViewController:0 cachedExternalizationDelegate:0 request:request];
  v16 = v15;
  if (v15)
  {
    v15->_min = min;
    v15->_max = max;
    objc_storeStrong(&v15->_k, k);
    v17 = MEMORY[0x23EE73C30](applyCopy);
    apply = v16->_apply;
    v16->_apply = v17;
  }

  return v16;
}

- (id)reorganizeMechanisms:(id)mechanisms k:(int64_t)k error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  mechanismsCopy = mechanisms;
  v9 = objc_opt_new();
  if ([mechanismsCopy count] >= self->_min && objc_msgSend(mechanismsCopy, "count") <= self->_max)
  {
    k = self->_k;
    if (k && [(NSNumber *)k integerValue]!= k)
    {
      v28 = MEMORY[0x277CD47F0];
      v29 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:k];
      v31 = [v29 stringWithFormat:@"k is %@, but should be %@", v30, self->_k];
      v16 = [v28 internalErrorWithMessage:v31];
    }

    else
    {
      if ([mechanismsCopy count])
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = mechanismsCopy;
        v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          do
          {
            v26 = 0;
            do
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = (*(self->_apply + 2))();
              if (v27)
              {
                [v9 addObject:v27];
              }

              ++v26;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v24);
        }
      }

      else
      {
        v32 = (*(self->_apply + 2))();
        if (v32)
        {
          [v9 addObject:v32];
        }
      }

      v16 = 0;
    }
  }

  else
  {
    v10 = MEMORY[0x277CD47F0];
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(mechanismsCopy, "count")}];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_min];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_max];
    v15 = [v11 stringWithFormat:@"number of mechanisms to reorganize is %@, but should be in [%@-%@]", v12, v13, v14];
    v16 = [v10 internalErrorWithMessage:v15];
  }

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  v19 = v18;

  return v18;
}

@end
@interface NLPModelTrainingDataProvider
- (NLPModelTrainingDataProvider)initWithConfiguration:(id)configuration numberOfInstances:(unint64_t)instances dataSource:(void *)source instanceDataProvider:(id)provider;
- (id)instanceAtIndex:(unint64_t)index;
@end

@implementation NLPModelTrainingDataProvider

- (NLPModelTrainingDataProvider)initWithConfiguration:(id)configuration numberOfInstances:(unint64_t)instances dataSource:(void *)source instanceDataProvider:(id)provider
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = NLPModelTrainingDataProvider;
  v11 = [(NLDataProvider *)&v16 initWithConfiguration:configuration dataURL:0];
  v12 = v11;
  if (v11)
  {
    v11->_numberOfInstances = instances;
    v11->_dataSource = source;
    v13 = MEMORY[0x19EAFC6F0](providerCopy);
    instanceDataProvider = v12->_instanceDataProvider;
    v12->_instanceDataProvider = v13;
  }

  return v12;
}

- (id)instanceAtIndex:(unint64_t)index
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = (*(self->_instanceDataProvider + 2))();
  if (!v5)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  configuration = [(NLDataProvider *)self configuration];
  type = [configuration type];

  if (type != 1)
  {
    if (!type)
    {
      v8 = [v5 objectForKey:kNLPStringKey];
      v9 = [v5 objectForKey:kNLPLabelKey];
      if (v8)
      {
        objc_opt_class();
        v10 = 0;
        if ((objc_opt_isKindOfClass() & 1) == 0 || !v9)
        {
LABEL_25:

          if (v10)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[NLClassifierModelDataInstance alloc] initWithString:v8 label:v9 tokenizer:[(NLDataProvider *)self tokenizer]];
          goto LABEL_25;
        }
      }

      v10 = 0;
      goto LABEL_25;
    }

LABEL_26:
    NSLog(&cfstr_SkippingInvali.isa, index);
    v10 = 0;
    goto LABEL_27;
  }

  v11 = [v5 objectForKey:kNLPTokenArrayKey];
  v12 = [v5 objectForKey:kNLPLabelArrayKey];
  if (!v11)
  {
LABEL_42:
    v10 = 0;
    goto LABEL_43;
  }

  objc_opt_class();
  v10 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v11 count];
      if (v13 == [v12 count])
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v11;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v26 = 0;
                goto LABEL_31;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v26 = 1;
LABEL_31:
        v25 = v14;

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v20 = v12;
        v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v28;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(v20);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_42;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        if (v26)
        {
          v10 = [[NLSequenceModelDataInstance alloc] initWithTokens:v25 labels:v20];
          goto LABEL_43;
        }
      }
    }

    goto LABEL_42;
  }

LABEL_43:

  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_27:

  return v10;
}

@end
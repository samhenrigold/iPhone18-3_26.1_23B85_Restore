@interface PBCodable(Redactor)
- (id)_redact:()Redactor;
- (uint64_t)_isRedactable:()Redactor;
@end

@implementation PBCodable(Redactor)

- (id)_redact:()Redactor
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self _isRedactable:v4])
  {
    v29 = v4;
    if (objc_opt_respondsToSelector())
    {
      dictionaryRepresentation = [v4 dictionaryRepresentation];
      v6 = [dictionaryRepresentation mutableCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 mutableCopy];
      }

      else
      {
        v6 = 0;
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = [&unk_28544B400 countByEnumeratingWithState:&v42 objects:v48 count:{16, v29}];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(&unk_28544B400);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];

          if (v12)
          {
            [v6 setObject:@"<<redacted>>" forKeyedSubscript:v11];
          }
        }

        v8 = [&unk_28544B400 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v8);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = [&unk_28544B418 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      v31 = *v39;
      v32 = v6;
      do
      {
        v16 = 0;
        v33 = v14;
        do
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(&unk_28544B418);
          }

          v17 = *(*(&v38 + 1) + 8 * v16);
          v18 = [v6 objectForKeyedSubscript:v17];
          if (v18)
          {
            if ([self _isRedactable:v18])
            {
              v19 = [self _redact:v18];
              [v6 setObject:v19 forKeyedSubscript:v17];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_38;
              }

              v20 = v18;
              v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v19 = v20;
              v22 = [v19 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v35;
                do
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v35 != v24)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v26 = *(*(&v34 + 1) + 8 * j);
                    if ([self _isRedactable:v26])
                    {
                      v27 = [self _redact:v26];
                      [v21 addObject:v27];
                    }

                    else
                    {
                      [v21 addObject:v26];
                    }
                  }

                  v23 = [v19 countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v23);
              }

              v6 = v32;
              [v32 setObject:v21 forKeyedSubscript:v17];

              v15 = v31;
              v14 = v33;
            }
          }

LABEL_38:

          ++v16;
        }

        while (v16 != v14);
        v14 = [&unk_28544B418 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v14);
    }

    v4 = v30;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (uint64_t)_isRedactable:()Redactor
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

@end
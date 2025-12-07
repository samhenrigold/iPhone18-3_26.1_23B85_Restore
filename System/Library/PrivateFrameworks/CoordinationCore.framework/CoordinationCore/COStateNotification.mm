@interface COStateNotification
- (COStateNotification)initWithCoder:(id)coder;
- (COStateNotification)initWithState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COStateNotification

- (COStateNotification)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = COStateNotification;
  v6 = [(COMeshCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, state);
  }

  return v7;
}

- (COStateNotification)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = COStateNotification;
  v5 = [(COMeshCommand *)&v38 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"state"];
    state = v5->_state;
    v5->_state = v11;

    if (v5->_state)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        allKeys = [(NSDictionary *)v5->_state allKeys];
        v14 = [allKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
          v28 = allKeys;
          v29 = v10;
          v26 = *v35;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              v27 = v17;
              v18 = *(*(&v34 + 1) + 8 * v17);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v19 = [(NSDictionary *)v5->_state objectForKeyedSubscript:v18];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
LABEL_24:

LABEL_25:
                goto LABEL_26;
              }

              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v20 = v19;
              v21 = [v20 countByEnumeratingWithState:&v30 objects:v39 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v31;
                while (2)
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v31 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {

                      allKeys = v28;
                      v10 = v29;
                      goto LABEL_24;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v30 objects:v39 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

              v17 = v27 + 1;
              allKeys = v28;
              v10 = v29;
              v16 = v26;
            }

            while (v27 + 1 != v15);
            v15 = [v28 countByEnumeratingWithState:&v34 objects:v40 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        allKeys = v5;
LABEL_26:
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COStateNotification;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COStateNotification *)self state:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"state"];
}

@end
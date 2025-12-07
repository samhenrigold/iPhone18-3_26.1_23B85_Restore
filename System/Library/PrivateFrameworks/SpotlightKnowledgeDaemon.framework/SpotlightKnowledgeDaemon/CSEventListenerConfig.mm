@interface CSEventListenerConfig
- (BOOL)supportsBundleID:(id)d;
- (BOOL)supportsContentType:(id)type;
@end

@implementation CSEventListenerConfig

- (BOOL)supportsBundleID:(id)d
{
  dCopy = d;
  includeBundleIDs = [(CSEventListenerConfig *)self includeBundleIDs];
  if ([includeBundleIDs count])
  {
    includeBundleIDs2 = [(CSEventListenerConfig *)self includeBundleIDs];
    v7 = [includeBundleIDs2 containsObject:dCopy];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  excludeBundleIDs = [(CSEventListenerConfig *)self excludeBundleIDs];
  if ([excludeBundleIDs count])
  {
    excludeBundleIDs2 = [(CSEventListenerConfig *)self excludeBundleIDs];
    v11 = [excludeBundleIDs2 containsObject:dCopy];

    v8 = v11 ^ 1;
  }

  else
  {

    v8 = 1;
  }

LABEL_8:

  return v8 & 1;
}

- (BOOL)supportsContentType:(id)type
{
  v36 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  includeContentTypes = [(CSEventListenerConfig *)self includeContentTypes];
  if ([includeContentTypes count])
  {
    v6 = 0;
  }

  else
  {
    excludeContentTypes = [(CSEventListenerConfig *)self excludeContentTypes];
    v6 = [excludeContentTypes count] == 0;
  }

  v8 = 1;
  if (typeCopy)
  {
    if (!v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSMutableSet *)self->_positiveSet containsObject:typeCopy]& 1) == 0)
      {
        if (([(NSMutableSet *)self->_negativeSet containsObject:typeCopy]& 1) == 0)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          includeContentTypes2 = [(CSEventListenerConfig *)self includeContentTypes];
          v10 = [includeContentTypes2 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v31;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v31 != v12)
                {
                  objc_enumerationMutation(includeContentTypes2);
                }

                if (UTTypeConformsTo(typeCopy, *(*(&v30 + 1) + 8 * i)))
                {
                  positiveSet = self->_positiveSet;
                  if (!positiveSet)
                  {
                    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v21 = self->_positiveSet;
                    self->_positiveSet = v20;

                    positiveSet = self->_positiveSet;
                  }

                  [(NSMutableSet *)positiveSet addObject:typeCopy];

                  v8 = 1;
                  goto LABEL_30;
                }
              }

              v11 = [includeContentTypes2 countByEnumeratingWithState:&v30 objects:v35 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          excludeContentTypes2 = [(CSEventListenerConfig *)self excludeContentTypes];
          v15 = [excludeContentTypes2 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v27;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(excludeContentTypes2);
                }

                if (UTTypeConformsTo(typeCopy, *(*(&v26 + 1) + 8 * j)))
                {
                  negativeSet = self->_negativeSet;
                  if (!negativeSet)
                  {
                    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v25 = self->_negativeSet;
                    self->_negativeSet = v24;

                    negativeSet = self->_negativeSet;
                  }

                  [(NSMutableSet *)negativeSet addObject:typeCopy];

                  goto LABEL_9;
                }
              }

              v16 = [excludeContentTypes2 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          [(NSMutableSet *)self->_negativeSet addObject:typeCopy];
        }

LABEL_9:
        v8 = 0;
      }
    }
  }

LABEL_30:

  return v8;
}

@end
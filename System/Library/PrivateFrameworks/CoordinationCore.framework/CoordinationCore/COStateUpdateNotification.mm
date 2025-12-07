@interface COStateUpdateNotification
- (COStateUpdateNotification)initWithCoder:(id)coder;
- (COStateUpdateNotification)initWithUpdates:(id)updates removals:(id)removals;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COStateUpdateNotification

- (COStateUpdateNotification)initWithUpdates:(id)updates removals:(id)removals
{
  updatesCopy = updates;
  removalsCopy = removals;
  v12.receiver = self;
  v12.super_class = COStateUpdateNotification;
  v9 = [(COMeshCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updates, updates);
    objc_storeStrong(&v10->_removals, removals);
  }

  return v10;
}

- (COStateUpdateNotification)initWithCoder:(id)coder
{
  v64 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v59.receiver = self;
  v59.super_class = COStateUpdateNotification;
  v5 = [(COMeshCommand *)&v59 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"updates"];
    updates = v5->_updates;
    v5->_updates = v12;

    v14 = [coderCopy decodeObjectOfClasses:v11 forKey:@"removals"];
    removals = v5->_removals;
    v5->_removals = v14;

    if (v5->_updates)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      allKeys = [(NSDictionary *)v5->_updates allKeys];
      v17 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v17)
      {
        v18 = *v56;
        v41 = allKeys;
        v42 = v11;
        v36 = *v56;
LABEL_6:
        v19 = 0;
        v37 = v17;
        while (1)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(allKeys);
          }

          v39 = v19;
          v20 = *(*(&v55 + 1) + 8 * v19);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v21 = [(NSDictionary *)v5->_updates objectForKeyedSubscript:v20];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_44:

            break;
          }

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          allKeys2 = [v21 allKeys];
          v23 = [allKeys2 countByEnumeratingWithState:&v51 objects:v62 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v52;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v52 != v25)
                {
                  objc_enumerationMutation(allKeys2);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_43:

                  allKeys = v41;
                  v11 = v42;
                  goto LABEL_44;
                }
              }

              v24 = [allKeys2 countByEnumeratingWithState:&v51 objects:v62 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          v19 = v39 + 1;
          allKeys = v41;
          v11 = v42;
          v18 = v36;
          if (v39 + 1 == v37)
          {
            v17 = [v41 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v17)
            {
              goto LABEL_6;
            }

            goto LABEL_21;
          }
        }

LABEL_45:

        goto LABEL_46;
      }

LABEL_21:
    }

    if (!v5->_removals)
    {
LABEL_48:

      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      allKeys = [(NSDictionary *)v5->_removals allKeys];
      v27 = [allKeys countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (!v27)
      {
LABEL_47:

        goto LABEL_48;
      }

      v28 = *v48;
      v41 = allKeys;
      v42 = v11;
      v38 = *v48;
LABEL_26:
      v29 = 0;
      v40 = v27;
      while (1)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v47 + 1) + 8 * v29);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v21 = [(NSDictionary *)v5->_removals objectForKeyedSubscript:v30];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_44;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        allKeys2 = v21;
        v31 = [allKeys2 countByEnumeratingWithState:&v43 objects:v60 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v44;
LABEL_33:
          v34 = 0;
          while (1)
          {
            if (*v44 != v33)
            {
              objc_enumerationMutation(allKeys2);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_43;
            }

            if (v32 == ++v34)
            {
              v32 = [allKeys2 countByEnumeratingWithState:&v43 objects:v60 count:16];
              if (v32)
              {
                goto LABEL_33;
              }

              break;
            }
          }
        }

        ++v29;
        allKeys = v41;
        v11 = v42;
        v28 = v38;
        if (v29 == v40)
        {
          v27 = [v41 countByEnumeratingWithState:&v47 objects:v61 count:16];
          if (v27)
          {
            goto LABEL_26;
          }

          goto LABEL_47;
        }
      }
    }

LABEL_42:
    allKeys = v5;
LABEL_46:
    v5 = 0;
    goto LABEL_47;
  }

LABEL_49:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = COStateUpdateNotification;
  coderCopy = coder;
  [(COMeshCommand *)&v7 encodeWithCoder:coderCopy];
  v5 = [(COStateUpdateNotification *)self updates:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"updates"];

  removals = [(COStateUpdateNotification *)self removals];
  [coderCopy encodeObject:removals forKey:@"removals"];
}

@end
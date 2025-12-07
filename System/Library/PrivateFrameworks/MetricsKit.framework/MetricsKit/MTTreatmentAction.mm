@interface MTTreatmentAction
+ (id)treatmentActionWithField:(id)field configData:(id)data;
- (MTTreatmentAction)initWithField:(id)field configDictionary:(id)dictionary;
- (id)performAction:(id)action atKeyIndex:(int64_t)index context:(id)context;
- (id)performAction:(id)action context:(id)context;
- (void)computeKeyPaths;
- (void)performActionWithContext:(id)context;
@end

@implementation MTTreatmentAction

+ (id)treatmentActionWithField:(id)field configData:(id)data
{
  fieldCopy = field;
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = dataCopy;
    v8 = [v7 objectForKeyedSubscript:@"treatmentType"];
    v9 = objc_opt_class();
    if (([v8 isEqualToString:@"numberDeres"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"urlDeres") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"hash") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"versionDeres"))
    {
      v9 = objc_opt_class();
    }

    v10 = [[v9 alloc] initWithField:fieldCopy configDictionary:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MTTreatmentAction)initWithField:(id)field configDictionary:(id)dictionary
{
  fieldCopy = field;
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = MTTreatmentAction;
  v8 = [(MTTreatmentAction *)&v44 init];
  v9 = v8;
  if (v8)
  {
    [(MTTreatmentAction *)v8 setField:fieldCopy];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"sourceField"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setSourceField:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"overrideFieldValue"];
    [(MTTreatmentAction *)v9 setOverrideFieldValue:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"denylisted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTTreatmentAction setDenylisted:](v9, "setDenylisted:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"allowlistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setAllowlistedFields:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"denylistedFields"];
    objc_opt_class();
    v43 = v14;
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setDenylistedFields:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"blacklisted"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !-[MTTreatmentAction denylisted](v9, "denylisted") && [v15 BOOLValue])
    {
      -[MTTreatmentAction setDenylisted:](v9, "setDenylisted:", [v15 BOOLValue]);
    }

    v42 = v15;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"whitelistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      allowlistedFields = [(MTTreatmentAction *)v9 allowlistedFields];
      if (allowlistedFields)
      {
        v18 = MEMORY[0x277CBEB70];
        [(MTTreatmentAction *)v9 allowlistedFields];
        v20 = v19 = v16;
        [v20 arrayByAddingObjectsFromArray:v19];
        v38 = v12;
        v21 = v40 = fieldCopy;
        v22 = [v18 orderedSetWithArray:v21];
        [v22 array];
        v23 = v13;
        v25 = v24 = v10;
        [(MTTreatmentAction *)v9 setAllowlistedFields:v25];

        v10 = v24;
        v13 = v23;

        v12 = v38;
        fieldCopy = v40;

        v16 = v19;
      }

      else
      {
        [(MTTreatmentAction *)v9 setAllowlistedFields:v16];
      }
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"blacklistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      denylistedFields = [(MTTreatmentAction *)v9 denylistedFields];
      if (denylistedFields)
      {
        v37 = v16;
        v28 = MEMORY[0x277CBEB70];
        [(MTTreatmentAction *)v9 denylistedFields];
        v29 = v41 = fieldCopy;
        [v29 arrayByAddingObjectsFromArray:v26];
        v30 = v39 = v10;
        v31 = [v28 orderedSetWithArray:v30];
        [v31 array];
        v32 = v13;
        v34 = v33 = v12;
        [(MTTreatmentAction *)v9 setDenylistedFields:v34];

        v12 = v33;
        v13 = v32;

        v16 = v37;
        v10 = v39;

        fieldCopy = v41;
      }

      else
      {
        [(MTTreatmentAction *)v9 setDenylistedFields:v26];
      }
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"fieldsMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setFieldsMap:v35];
    }

    [(MTTreatmentAction *)v9 computeKeyPaths];
  }

  return v9;
}

- (void)computeKeyPaths
{
  field = [(MTTreatmentAction *)self field];
  v4 = [field componentsSeparatedByString:@"."];
  dstKeyPath = self->_dstKeyPath;
  self->_dstKeyPath = v4;

  sourceField = [(MTTreatmentAction *)self sourceField];
  v7 = [sourceField length];

  v8 = self->_dstKeyPath;
  if (v7)
  {
    v12 = [(NSArray *)v8 mutableCopy];
    [v12 removeLastObject];
    sourceField2 = [(MTTreatmentAction *)self sourceField];
    [v12 addObject:sourceField2];

    v10 = [v12 copy];
    srcKeyPath = self->_srcKeyPath;
    self->_srcKeyPath = v10;
  }

  else
  {
    self->_srcKeyPath = v8;
  }

  MEMORY[0x2821F96F8]();
}

- (void)performActionWithContext:(id)context
{
  contextCopy = context;
  metrics = [contextCopy metrics];
  v5 = [(MTTreatmentAction *)self performAction:metrics atKeyIndex:0 context:contextCopy];
  [contextCopy setMetrics:v5];
}

- (id)performAction:(id)action context:(id)context
{
  v64 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if ([(MTTreatmentAction *)self denylisted])
  {
    v6 = 0;
    goto LABEL_45;
  }

  overrideFieldValue = [(MTTreatmentAction *)self overrideFieldValue];

  if (overrideFieldValue)
  {
    overrideFieldValue2 = [(MTTreatmentAction *)self overrideFieldValue];

    actionCopy = overrideFieldValue2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fieldsMap = [(MTTreatmentAction *)self fieldsMap];
    v10 = [fieldsMap count];

    if (v10)
    {
      v47 = [actionCopy mutableCopy];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = [(MTTreatmentAction *)self fieldsMap];
      v11 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = v11;
      v13 = *v57;
      v14 = 0x277CBE000uLL;
      v44 = *v57;
      while (1)
      {
        v15 = 0;
        v45 = v12;
        do
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v56 + 1) + 8 * v15);
          fieldsMap2 = [(MTTreatmentAction *)self fieldsMap];
          v18 = [fieldsMap2 objectForKeyedSubscript:v16];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v62 = v18;
            v19 = [*(v14 + 2656) arrayWithObjects:&v62 count:1];
            if (!v19)
            {
              goto LABEL_28;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_28;
            }

            v19 = v18;
            if (!v19)
            {
              goto LABEL_28;
            }
          }

          selfCopy = self;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v53;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v53 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [actionCopy mt_nullableValueForKeyPathExt:*(*(&v52 + 1) + 8 * i)];
                if (v26)
                {
                  v27 = v26;
                  [v47 setObject:v26 forKeyedSubscript:v16];

                  goto LABEL_27;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_27:

          self = selfCopy;
          v13 = v44;
          v12 = v45;
          v14 = 0x277CBE000;
LABEL_28:

          ++v15;
        }

        while (v15 != v12);
        v12 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (!v12)
        {
LABEL_30:

          goto LABEL_32;
        }
      }
    }

    v47 = actionCopy;
LABEL_32:
    allowlistedFields = [(MTTreatmentAction *)self allowlistedFields];
    v29 = [allowlistedFields count];

    if (v29)
    {
      v30 = MEMORY[0x277CBEB38];
      allowlistedFields2 = [(MTTreatmentAction *)self allowlistedFields];
      actionCopy = [v30 dictionaryWithCapacity:{objc_msgSend(allowlistedFields2, "count")}];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      allowlistedFields3 = [(MTTreatmentAction *)self allowlistedFields];
      v33 = [allowlistedFields3 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v49;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v49 != v35)
            {
              objc_enumerationMutation(allowlistedFields3);
            }

            v37 = *(*(&v48 + 1) + 8 * j);
            v38 = [v47 objectForKeyedSubscript:v37];
            [actionCopy setObject:v38 forKeyedSubscript:v37];
          }

          v34 = [allowlistedFields3 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v34);
      }
    }

    else
    {
      actionCopy = v47;
    }

    denylistedFields = [(MTTreatmentAction *)self denylistedFields];
    v40 = [denylistedFields count];

    if (v40)
    {
      v41 = [actionCopy mutableCopy];
      denylistedFields2 = [(MTTreatmentAction *)self denylistedFields];
      [v41 removeObjectsForKeys:denylistedFields2];

      actionCopy = v41;
    }
  }

  actionCopy = actionCopy;
  v6 = actionCopy;
LABEL_45:

  return v6;
}

- (id)performAction:(id)action atKeyIndex:(int64_t)index context:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  contextCopy = context;
  srcKeyPath = [(MTTreatmentAction *)self srcKeyPath];
  v11 = [srcKeyPath count];

  if (v11 == index)
  {
    v12 = [(MTTreatmentAction *)self performAction:actionCopy context:contextCopy];
LABEL_21:
    self = v12;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = actionCopy;
  srcKeyPath2 = [(MTTreatmentAction *)self srcKeyPath];
  v15 = [srcKeyPath2 objectAtIndexedSubscript:index];

  dstKeyPath = [(MTTreatmentAction *)self dstKeyPath];
  v17 = [dstKeyPath objectAtIndexedSubscript:index];

  if (![v15 hasSuffix:@"[]"])
  {
    v30 = [v13 objectForKeyedSubscript:v15];
    v31 = [(MTTreatmentAction *)self performAction:v30 atKeyIndex:index + 1 context:contextCopy];

    self = [v13 mt_dictionarybyReplacingKey:v17 value:v31];

    goto LABEL_22;
  }

  v18 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 2}];

  v19 = [v13 objectForKeyedSubscript:v18];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v21 = isKindOfClass;
  if (isKindOfClass)
  {
    v34 = isKindOfClass;
    v35 = v18;
    v36 = v17;
    v37 = v13;
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v19;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [(MTTreatmentAction *)self performAction:*(*(&v38 + 1) + 8 * i) atKeyIndex:index + 1 context:contextCopy];
          if (v28)
          {
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v25);
    }

    v17 = v36;
    if ([v36 hasSuffix:@"[]"])
    {
      v29 = [v36 substringToIndex:{objc_msgSend(v36, "length") - 2}];

      v17 = v29;
    }

    v13 = v37;
    v18 = v35;
    v21 = v34;
    v19 = v33;
    self = [v37 mt_dictionarybyReplacingKey:v17 value:v22];
  }

  if ((v21 & 1) == 0)
  {
LABEL_20:
    v12 = actionCopy;
    goto LABEL_21;
  }

LABEL_22:

  return self;
}

@end
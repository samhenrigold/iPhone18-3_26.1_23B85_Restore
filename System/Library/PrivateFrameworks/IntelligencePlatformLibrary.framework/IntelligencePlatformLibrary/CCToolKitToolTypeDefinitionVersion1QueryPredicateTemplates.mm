@interface CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAllPredicate)all;
- (CCToolKitToolIdSearchPredicateTemplate)idSearch;
- (CCToolKitToolSearchableItemPredicateTemplate)searchableItem;
- (CCToolKitToolStringSearchPredicateTemplate)stringSearch;
- (CCToolKitToolSuggestedPredicate)suggested;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithComparison:(id)comparison stringSearch:(id)search idSearch:(id)idSearch all:(id)all suggested:(id)suggested sampleInvocations:(id)invocations searchableItem:(id)item valid:(id)self0 valueSearch:(id)self1 metadata:(id)self2 error:(id *)self3;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata)metadata;
- (CCToolKitToolValidPredicate)valid;
- (CCToolKitToolValueSearchPredicateTemplate)valueSearch;
- (NSArray)comparison;
- (NSArray)sampleInvocations;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v102 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"comparison"];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      v101 = v8;
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v37 = 0;
        v13 = v10;
LABEL_88:

        v8 = v12;
        goto LABEL_89;
      }

      obj = v12;
      v13 = objc_opt_new();
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v97 objects:v104 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v98;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v98 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v97 + 1) + 8 * i);
            v20 = [CCToolKitToolComparisonPredicateTemplate alloc];
            v96 = 0;
            v21 = [(CCToolKitToolComparisonPredicateTemplate *)v20 initWithJSONDictionary:v19 error:&v96];
            v22 = v96;
            if (v21)
            {
              v23 = v22 == 0;
            }

            else
            {
              v23 = 0;
            }

            if (!v23)
            {
              v36 = v22;
              CCSetError();

              v37 = 0;
              v13 = v14;
              v12 = obj;
              goto LABEL_88;
            }

            [v13 addObject:v21];
          }

          v16 = [v14 countByEnumeratingWithState:&v97 objects:v104 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v13 = 0;
      v12 = v8;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"stringSearch"];
    if (v24)
    {
      v95 = 0;
      v25 = [[CCToolKitToolStringSearchPredicateTemplate alloc] initWithJSONDictionary:v24 error:&v95];
      v26 = v95;
      v27 = v26;
      if (!v25 || v26)
      {
        CCSetError();
        v37 = 0;
LABEL_87:

        goto LABEL_88;
      }

      v24 = v25;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"idSearch"];
    if (v27)
    {
      v94 = 0;
      v28 = [[CCToolKitToolIdSearchPredicateTemplate alloc] initWithJSONDictionary:v27 error:&v94];
      v29 = v94;
      v25 = v29;
      if (!v28 || v29)
      {
        CCSetError();
        v37 = 0;
LABEL_86:

        goto LABEL_87;
      }

      v27 = v28;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"all"];
    if (v25)
    {
      v93 = 0;
      v30 = [[CCToolKitToolAllPredicate alloc] initWithJSONDictionary:v25 error:&v93];
      v31 = v93;
      v28 = v31;
      if (!v30 || v31)
      {
        CCSetError();
        v37 = 0;
        goto LABEL_85;
      }

      v25 = v30;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"suggested"];
    v77 = v25;
    if (v28)
    {
      v92 = 0;
      v32 = [[CCToolKitToolSuggestedPredicate alloc] initWithJSONDictionary:v28 error:&v92];
      v33 = v92;
      v34 = v33;
      if (!v32 || v33)
      {
        CCSetError();

        v37 = 0;
        v30 = v34;
LABEL_62:
        v25 = v77;
        goto LABEL_85;
      }

      v73 = v27;
      v74 = v24;
      v35 = v12;

      v28 = v32;
      v25 = v77;
    }

    else
    {
      v73 = v27;
      v74 = v24;
      v35 = v12;
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"sampleInvocations"];
    if (!v38)
    {
      v30 = 0;
      v70 = v35;
      v27 = v73;
      v24 = v74;
      goto LABEL_57;
    }

    v39 = v38;
    objc_opt_class();
    v91 = v35;
    v40 = CCValidateIsInstanceOfExpectedClass();
    v41 = v35;

    if (v40)
    {
      v70 = v41;
      v71 = v28;
      v42 = objc_opt_new();
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      obja = v39;
      v43 = [(CCToolKitToolAllPredicate *)obja countByEnumeratingWithState:&v87 objects:v103 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v88;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v88 != v45)
            {
              objc_enumerationMutation(obja);
            }

            v47 = *(*(&v87 + 1) + 8 * j);
            v48 = [CCToolKitToolSampleInvocationDefinition alloc];
            v86 = 0;
            v49 = [(CCToolKitToolSampleInvocationDefinition *)v48 initWithJSONDictionary:v47 error:&v86];
            v50 = v86;
            if (v49)
            {
              v51 = v50 == 0;
            }

            else
            {
              v51 = 0;
            }

            if (!v51)
            {
              v56 = v50;
              CCSetError();

              v30 = obja;
              v37 = 0;
              v12 = v70;
              v28 = v71;
              v27 = v73;
              v24 = v74;
              goto LABEL_62;
            }

            [(CCToolKitToolAllPredicate *)v42 addObject:v49];
          }

          v44 = [(CCToolKitToolAllPredicate *)obja countByEnumeratingWithState:&v87 objects:v103 count:16];
        }

        while (v44);
      }

      v27 = v73;
      v24 = v74;
      v28 = v71;
      v30 = v42;
      v25 = v77;
LABEL_57:
      v52 = [dictionaryCopy objectForKeyedSubscript:@"searchableItem"];
      if (v52)
      {
        v75 = v30;
        v85 = 0;
        objb = v52;
        v53 = [[CCToolKitToolSearchableItemPredicateTemplate alloc] initWithJSONDictionary:v52 error:&v85];
        v54 = v85;
        v55 = v54;
        v81 = v53;
        if (!v53 || v54)
        {
          CCSetError();
          v37 = 0;
          v30 = v75;
LABEL_84:

          v12 = v70;
          goto LABEL_85;
        }

        objb = v53;
        v30 = v75;
      }

      else
      {
        objb = 0;
      }

      v55 = [dictionaryCopy objectForKeyedSubscript:@"valid"];
      v72 = v28;
      if (v55)
      {
        v84 = 0;
        v57 = [[CCToolKitToolValidPredicate alloc] initWithJSONDictionary:v55 error:&v84];
        v58 = v84;
        if (!v57 || v58)
        {
          v81 = v58;
          CCSetError();
          v37 = 0;
          goto LABEL_83;
        }

        v55 = v57;
      }

      v59 = [dictionaryCopy objectForKeyedSubscript:@"valueSearch"];
      if (v59)
      {
        v60 = v30;
        v83 = 0;
        v81 = v59;
        v61 = [[CCToolKitToolValueSearchPredicateTemplate alloc] initWithJSONDictionary:v59 error:&v83];
        v62 = v83;
        v57 = v62;
        if (!v61 || v62)
        {
          CCSetError();

          v37 = 0;
          v30 = v60;
          v25 = v77;
          goto LABEL_83;
        }

        v81 = v61;
        v30 = v60;
      }

      else
      {
        v81 = 0;
      }

      v76 = v55;
      v63 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
      if (v63)
      {
        v57 = v63;
        v64 = v30;
        v82 = 0;
        v65 = [[CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata alloc] initWithJSONDictionary:v63 error:&v82];
        v66 = v82;
        v67 = v66;
        if (!v65 || v66)
        {
          CCSetError();

          v37 = 0;
          v30 = v64;
          v55 = v76;
          v25 = v77;
          goto LABEL_83;
        }

        v30 = v64;
      }

      else
      {
        v65 = 0;
      }

      v69 = v65;
      v57 = v65;
      v55 = v76;
      v25 = v77;
      v37 = [[CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates alloc] initWithComparison:v13 stringSearch:v24 idSearch:v27 all:v77 suggested:v72 sampleInvocations:v30 searchableItem:objb valid:v76 valueSearch:v81 metadata:v69 error:error];
LABEL_83:

      v28 = v72;
      goto LABEL_84;
    }

    CCSetError();
    v37 = 0;
    v30 = v39;
    v12 = v41;
    v27 = v73;
    v24 = v74;
LABEL_85:

    goto LABEL_86;
  }

  CCSetError();
  v37 = 0;
LABEL_89:

  return v37;
}

- (id)jsonDictionary
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_comparison)
  {
    v4 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    comparison = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self comparison];
    v6 = [comparison countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(comparison);
          }

          jsonDictionary = [*(*(&v40 + 1) + 8 * i) jsonDictionary];
          [v4 addObject:jsonDictionary];
        }

        v7 = [comparison countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"comparison"];
  }

  if (self->_stringSearch)
  {
    stringSearch = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self stringSearch];
    jsonDictionary2 = [stringSearch jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"stringSearch"];
  }

  if (self->_idSearch)
  {
    idSearch = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self idSearch];
    jsonDictionary3 = [idSearch jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"idSearch"];
  }

  if (self->_all)
  {
    v15 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self all];
    jsonDictionary4 = [v15 jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"all"];
  }

  if (self->_suggested)
  {
    suggested = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self suggested];
    jsonDictionary5 = [suggested jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"suggested"];
  }

  if (self->_sampleInvocations)
  {
    v19 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    sampleInvocations = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self sampleInvocations];
    v21 = [sampleInvocations countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(sampleInvocations);
          }

          jsonDictionary6 = [*(*(&v36 + 1) + 8 * j) jsonDictionary];
          [v19 addObject:jsonDictionary6];
        }

        v22 = [sampleInvocations countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_searchableItem)
  {
    searchableItem = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self searchableItem];
    jsonDictionary7 = [searchableItem jsonDictionary];
    [v3 setObject:jsonDictionary7 forKeyedSubscript:@"searchableItem"];
  }

  if (self->_valid)
  {
    valid = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self valid];
    jsonDictionary8 = [valid jsonDictionary];
    [v3 setObject:jsonDictionary8 forKeyedSubscript:@"valid"];
  }

  if (self->_valueSearch)
  {
    valueSearch = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self valueSearch];
    jsonDictionary9 = [valueSearch jsonDictionary];
    [v3 setObject:jsonDictionary9 forKeyedSubscript:@"valueSearch"];
  }

  if (self->_metadata)
  {
    metadata = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self metadata];
    jsonDictionary10 = [metadata jsonDictionary];
    [v3 setObject:jsonDictionary10 forKeyedSubscript:@"metadata"];
  }

  v34 = [v3 copy];

  return v34;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v18 = blockCopy;
  if (self->_comparison)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] repeatedSubMessageValue:self->_comparison];
    v18[2](v18, v7);
  }

  if (self->_stringSearch)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_stringSearch];
    v18[2](v18, v8);
  }

  if (self->_idSearch)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_idSearch];
    v18[2](v18, v9);
  }

  if (self->_all)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_all];
    v18[2](v18, v10);
  }

  if (self->_suggested)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_suggested];
    v18[2](v18, v11);
  }

  if (self->_sampleInvocations)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_sampleInvocations];
    v18[2](v18, v12);
  }

  if (self->_searchableItem)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_searchableItem];
    v18[2](v18, v13);
  }

  if (self->_valid)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valid];
    v18[2](v18, v14);
  }

  if (self->_valueSearch)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valueSearch];
    v18[2](v18, v15);
  }

  v16 = v18;
  if (self->_metadata)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_metadata];
    v18[2](v18, v17);

    v16 = v18;
  }
}

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata)metadata
{
  v2 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata *)self->_metadata copy];

  return v2;
}

- (CCToolKitToolValueSearchPredicateTemplate)valueSearch
{
  v2 = [(CCToolKitToolValueSearchPredicateTemplate *)self->_valueSearch copy];

  return v2;
}

- (CCToolKitToolValidPredicate)valid
{
  v2 = [(CCToolKitToolValidPredicate *)self->_valid copy];

  return v2;
}

- (CCToolKitToolSearchableItemPredicateTemplate)searchableItem
{
  v2 = [(CCToolKitToolSearchableItemPredicateTemplate *)self->_searchableItem copy];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

  return v2;
}

- (CCToolKitToolSuggestedPredicate)suggested
{
  v2 = [(CCToolKitToolSuggestedPredicate *)self->_suggested copy];

  return v2;
}

- (CCToolKitToolAllPredicate)all
{
  v2 = [(CCToolKitToolAllPredicate *)self->_all copy];

  return v2;
}

- (CCToolKitToolIdSearchPredicateTemplate)idSearch
{
  v2 = [(CCToolKitToolIdSearchPredicateTemplate *)self->_idSearch copy];

  return v2;
}

- (CCToolKitToolStringSearchPredicateTemplate)stringSearch
{
  v2 = [(CCToolKitToolStringSearchPredicateTemplate *)self->_stringSearch copy];

  return v2;
}

- (NSArray)comparison
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_comparison copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v52 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_63;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_62;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_62;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 5)
      {
        if (v23 > 7)
        {
          switch(v23)
          {
            case 8:
              v36 = [CCToolKitToolValidPredicate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v55 = 0;
              v26 = [(CCItemMessage *)v36 initWithData:v25 error:&v55];
              v8 = v55;
              v27 = 72;
              goto LABEL_54;
            case 9:
              v38 = [CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplatesPredicateMetadata alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v53 = 0;
              v26 = [(CCItemMessage *)v38 initWithData:v25 error:&v53];
              v8 = v53;
              v27 = 88;
              goto LABEL_54;
            case 0xA:
              v28 = [CCToolKitToolValueSearchPredicateTemplate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v54 = 0;
              v26 = [(CCItemMessage *)v28 initWithData:v25 error:&v54];
              v8 = v54;
              v27 = 80;
              goto LABEL_54;
          }

          goto LABEL_58;
        }

        if (v23 != 6)
        {
          if (v23 == 7)
          {
            v30 = [CCToolKitToolSearchableItemPredicateTemplate alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v56 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v56];
            v8 = v56;
            v27 = 64;
            goto LABEL_54;
          }

LABEL_58:
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
LABEL_56:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_63;
          }

          v40 = objc_opt_class();
          v25 = NSStringFromClass(v40);
          v8 = CCSkipFieldErrorForMessage();
LABEL_55:

          goto LABEL_56;
        }

        v25 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v34 = [CCToolKitToolSampleInvocationDefinition alloc];
        v57 = 0;
        v32 = [(CCItemMessage *)v34 initWithData:v25 error:&v57];
        v8 = v57;
        if (!v8 && v32)
        {
          v33 = v9;
          goto LABEL_48;
        }
      }

      else
      {
        if (v23 > 2)
        {
          switch(v23)
          {
            case 3:
              v35 = [CCToolKitToolIdSearchPredicateTemplate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v60 = 0;
              v26 = [(CCItemMessage *)v35 initWithData:v25 error:&v60];
              v8 = v60;
              v27 = 32;
              goto LABEL_54;
            case 4:
              v37 = [CCToolKitToolAllPredicate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v59 = 0;
              v26 = [(CCItemMessage *)v37 initWithData:v25 error:&v59];
              v8 = v59;
              v27 = 40;
              goto LABEL_54;
            case 5:
              v24 = [CCToolKitToolSuggestedPredicate alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v58 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v58];
              v8 = v58;
              v27 = 48;
LABEL_54:
              v39 = *(&self->super.super.isa + v27);
              *(&self->super.super.isa + v27) = v26;

              goto LABEL_55;
          }

          goto LABEL_58;
        }

        if (v23 != 1)
        {
          if (v23 == 2)
          {
            v29 = [CCToolKitToolStringSearchPredicateTemplate alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v61 = 0;
            v26 = [(CCItemMessage *)v29 initWithData:v25 error:&v61];
            v8 = v61;
            v27 = 24;
            goto LABEL_54;
          }

          goto LABEL_58;
        }

        v25 = CCPBReaderReadDataNoCopy();
        if (!v52)
        {
          v52 = objc_opt_new();
        }

        v31 = [CCToolKitToolComparisonPredicateTemplate alloc];
        v62 = 0;
        v32 = [(CCItemMessage *)v31 initWithData:v25 error:&v62];
        v8 = v62;
        if (!v8 && v32)
        {
          v33 = v52;
LABEL_48:
          [v33 addObject:v32];
        }
      }

      break;
    }

    goto LABEL_55;
  }

  v9 = 0;
  v52 = 0;
LABEL_62:
  v8 = 0;
LABEL_63:
  v41 = [v52 copy];
  comparison = self->_comparison;
  self->_comparison = v41;

  v43 = [v9 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v43;

  if (v8)
  {
    CCSetError();
    v45 = 0;
    v46 = dataCopy;
  }

  else
  {
    v46 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }
  }

  return v45;
}

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)initWithComparison:(id)comparison stringSearch:(id)search idSearch:(id)idSearch all:(id)all suggested:(id)suggested sampleInvocations:(id)invocations searchableItem:(id)item valid:(id)self0 valueSearch:(id)self1 metadata:(id)self2 error:(id *)self3
{
  errorCopy = error;
  v92 = *MEMORY[0x1E69E9840];
  comparisonCopy = comparison;
  searchCopy = search;
  idSearchCopy = idSearch;
  allCopy = all;
  suggestedCopy = suggested;
  invocationsCopy = invocations;
  itemCopy = item;
  validCopy = valid;
  valueSearchCopy = valueSearch;
  metadataCopy = metadata;
  v21 = objc_opt_new();
  v71 = valueSearchCopy;
  if (comparisonCopy)
  {
    objc_opt_class();
    v89 = 0;
    v22 = CCValidateArrayValues();
    v23 = 0;
    if (!v22)
    {
      CCSetError();
      v34 = 0;
      selfCopy5 = self;
      v30 = allCopy;
LABEL_30:
      v42 = invocationsCopy;
      goto LABEL_31;
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v24 = comparisonCopy;
    v25 = [v24 countByEnumeratingWithState:&v85 objects:v91 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v86;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v86 != v27)
          {
            objc_enumerationMutation(v24);
          }

          data = [*(*(&v85 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v26 = [v24 countByEnumeratingWithState:&v85 objects:v91 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v23 = 0;
  }

  v30 = allCopy;
  if (searchCopy)
  {
    objc_opt_class();
    v84 = v23;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v32 = v23;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_27;
    }

    data2 = [searchCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v32 = v23;
  }

  if (idSearchCopy)
  {
    objc_opt_class();
    v83 = v32;
    v36 = CCValidateIsInstanceOfExpectedClass();
    v23 = v32;

    if (!v36)
    {
LABEL_28:
      CCSetError();
      v34 = 0;
      goto LABEL_29;
    }

    data3 = [idSearchCopy data];
    CCPBDataWriterWriteDataField();

    if (!allCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = v32;
    if (!allCopy)
    {
LABEL_20:
      v32 = v23;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  v82 = v23;
  v38 = CCValidateIsInstanceOfExpectedClass();
  v32 = v23;

  if (!v38)
  {
LABEL_27:
    CCSetError();
    v34 = 0;
    v23 = v32;
LABEL_29:
    selfCopy5 = self;
    goto LABEL_30;
  }

  data4 = [allCopy data];
  CCPBDataWriterWriteDataField();

LABEL_24:
  if (!suggestedCopy)
  {
    v23 = v32;
    goto LABEL_35;
  }

  objc_opt_class();
  v81 = v32;
  v40 = CCValidateIsInstanceOfExpectedClass();
  v23 = v32;

  if (!v40)
  {
    goto LABEL_28;
  }

  data5 = [suggestedCopy data];
  CCPBDataWriterWriteDataField();

LABEL_35:
  v42 = invocationsCopy;
  if (!invocationsCopy)
  {
    v47 = v23;
    goto LABEL_46;
  }

  objc_opt_class();
  v80 = v23;
  v46 = CCValidateArrayValues();
  v47 = v23;

  if (v46)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v48 = invocationsCopy;
    v49 = [v48 countByEnumeratingWithState:&v76 objects:v90 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v77;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v77 != v51)
          {
            objc_enumerationMutation(v48);
          }

          data6 = [*(*(&v76 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v50 = [v48 countByEnumeratingWithState:&v76 objects:v90 count:16];
      }

      while (v50);
    }

    v30 = allCopy;
LABEL_46:
    v43 = itemCopy;
    if (itemCopy)
    {
      objc_opt_class();
      v54 = CCValidateIsInstanceOfExpectedClass();
      v23 = v47;

      if (!v54)
      {
        goto LABEL_58;
      }

      data7 = [itemCopy data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v23 = v47;
    }

    if (validCopy)
    {
      objc_opt_class();
      v56 = CCValidateIsInstanceOfExpectedClass();
      v57 = v23;

      if (!v56)
      {
        CCSetError();
        v34 = 0;
        v23 = v57;
        selfCopy5 = self;
        v44 = validCopy;
        v42 = invocationsCopy;
        goto LABEL_33;
      }

      data8 = [validCopy data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v57 = v23;
    }

    if (!v71)
    {
      v23 = v57;
      goto LABEL_62;
    }

    objc_opt_class();
    v59 = CCValidateIsInstanceOfExpectedClass();
    v23 = v57;

    if (v59)
    {
      data9 = [v71 data];
      CCPBDataWriterWriteDataField();

LABEL_62:
      if (!metadataCopy)
      {
LABEL_65:
        immutableData = [v21 immutableData];
        selfCopy5 = [(CCItemMessage *)self initWithData:immutableData error:v66];

        v34 = selfCopy5;
        goto LABEL_66;
      }

      objc_opt_class();
      v61 = CCValidateIsInstanceOfExpectedClass();
      v62 = v23;

      if (v61)
      {
        data10 = [metadataCopy data];
        CCPBDataWriterWriteDataField();

        v23 = v62;
        goto LABEL_65;
      }

      CCSetError();
      v34 = 0;
      v23 = v62;
LABEL_59:
      selfCopy5 = self;
LABEL_66:
      v42 = invocationsCopy;
      goto LABEL_32;
    }

LABEL_58:
    CCSetError();
    v34 = 0;
    goto LABEL_59;
  }

  CCSetError();
  v34 = 0;
  v23 = v47;
  selfCopy5 = self;
LABEL_31:
  v43 = itemCopy;
LABEL_32:
  v44 = validCopy;
LABEL_33:

  return v34;
}

@end
@interface QPECRClient
- (id)generateEntityRequest:(id)request entityFilterType:(int64_t)type mode:(int64_t)mode enableBackupSearch:(BOOL)search;
- (id)visualIdentifiersWithQuery:(id)query entityFilterType:(int64_t)type enableBackupSearch:(BOOL)search error:(id *)error;
- (id)visualIdentifiersWithText:(id)text allowPrefixSearch:(BOOL)search entityFilterType:(int64_t)type includeInferredNames:(BOOL)names allowGroundingToNamesAndEmails:(BOOL)emails useNamesAndEmailsForNonRelations:(BOOL)relations enableBackupSearch:(BOOL)backupSearch error:(id *)self0;
- (void)cooldownAsync;
- (void)cooldownSync;
- (void)warmUpAsync;
- (void)warmUpSync;
@end

@implementation QPECRClient

- (void)warmUpSync
{
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C6584000, v5, v6, "Unable to warmup %@: %@", v7, v8, v9, v10);
}

- (void)warmUpAsync
{
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__QPECRClient_warmUpAsync__block_invoke;
  block[3] = &unk_1E82667C0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (id)generateEntityRequest:(id)request entityFilterType:(int64_t)type mode:(int64_t)mode enableBackupSearch:(BOOL)search
{
  searchCopy = search;
  v9 = MEMORY[0x1E69A9E88];
  requestCopy = request;
  v11 = [v9 alloc];
  v12 = &unk_1F45F8C30;
  if (type == 2)
  {
    v12 = &unk_1F45F8C48;
  }

  if (type == 1)
  {
    v13 = &unk_1F45F8C60;
  }

  else
  {
    v13 = v12;
  }

  if (searchCopy)
  {
    BYTE2(v17) = 1;
    LOWORD(v17) = 256;
    v14 = [v11 initWithText:requestCopy entityClassFilter:v13 spans:0 mode:0 constraint:0 sourceIDs:0 kgq:0 includeFeatures:v17 includeInferredNames:? enableBackupSearch:?];
  }

  else
  {
    v14 = [v11 initWithText:requestCopy entityClassFilter:v13 spans:0 mode:mode constraint:0 includeInferredNames:1];
  }

  v15 = v14;

  return v15;
}

- (id)visualIdentifiersWithQuery:(id)query entityFilterType:(int64_t)type enableBackupSearch:(BOOL)search error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  [(QPECRClient *)self generateEntityRequest:query entityFilterType:type mode:0 enableBackupSearch:search];
  v58 = v85 = 0;
  v8 = [QPECRClient resolveEntitiesWithRequest:"resolveEntitiesWithRequest:error:" error:?];
  v9 = 0;
  if (v9)
  {
    v10 = v9;
    dictionary = 0;
    *error = v9;
  }

  else
  {
    rankedResults = [v8 rankedResults];
    v13 = [rankedResults count];

    if (v13)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = [v8 rankedResults];
      v14 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v82;
        v60 = dictionary;
        v61 = v8;
        v59 = *v82;
        do
        {
          v17 = 0;
          v62 = v15;
          do
          {
            if (*v82 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v81 + 1) + 8 * v17);
            span = [v18 span];
            text = [span text];

            span2 = [v18 span];
            [span2 range];
            v23 = v22;

            if ([text length])
            {
              v24 = v23 == 0;
            }

            else
            {
              v24 = 1;
            }

            if (!v24)
            {
              v65 = v17;
              span3 = [v18 span];
              range = [span3 range];
              v28 = [text substringWithRange:{range, v27}];

              v29 = [dictionary objectForKeyedSubscript:v28];

              if (!v29)
              {
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                [dictionary setObject:dictionary2 forKeyedSubscript:v28];
              }

              v64 = v28;
              v72 = [dictionary objectForKeyedSubscript:v28];
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              rankedItems = [v18 rankedItems];
              v68 = [rankedItems countByEnumeratingWithState:&v77 objects:v88 count:16];
              if (v68)
              {
                v67 = *v78;
                do
                {
                  v31 = 0;
                  do
                  {
                    if (*v78 != v67)
                    {
                      objc_enumerationMutation(rankedItems);
                    }

                    v70 = v31;
                    v32 = *(*(&v77 + 1) + 8 * v31);
                    identifierInformation = [v32 identifierInformation];
                    v73 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    v69 = identifierInformation;
                    visualIdentifiers = [identifierInformation visualIdentifiers];
                    v34 = [visualIdentifiers countByEnumeratingWithState:&v73 objects:v87 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v74;
                      do
                      {
                        for (i = 0; i != v35; ++i)
                        {
                          if (*v74 != v36)
                          {
                            objc_enumerationMutation(visualIdentifiers);
                          }

                          v38 = [*(*(&v73 + 1) + 8 * i) componentsSeparatedByString:@"/"];
                          firstObject = [v38 firstObject];
                          v40 = [firstObject length];

                          if (v40)
                          {
                            firstObject2 = [v38 firstObject];
                            v42 = [v72 objectForKeyedSubscript:firstObject2];

                            firstObject3 = [v42 firstObject];
                            [firstObject3 doubleValue];
                            v45 = v44;

                            lastObject = [v42 lastObject];
                            [lastObject doubleValue];
                            v48 = v47;

                            [v32 nameScore];
                            if (v49 > v45)
                            {
                              [v32 nameScore];
                              v45 = v50;
                            }

                            [v32 confirmationConfidence];
                            if (v51 > v48)
                            {
                              [v32 confirmationConfidence];
                              v48 = v52;
                            }

                            v53 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
                            v86[0] = v53;
                            v54 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                            v86[1] = v54;
                            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
                            firstObject4 = [v38 firstObject];
                            [v72 setObject:v55 forKeyedSubscript:firstObject4];
                          }
                        }

                        v35 = [visualIdentifiers countByEnumeratingWithState:&v73 objects:v87 count:16];
                      }

                      while (v35);
                    }

                    v31 = v70 + 1;
                  }

                  while (v70 + 1 != v68);
                  v68 = [rankedItems countByEnumeratingWithState:&v77 objects:v88 count:16];
                }

                while (v68);
              }

              dictionary = v60;
              v8 = v61;
              v16 = v59;
              v15 = v62;
              text = v64;
              v17 = v65;
            }

            ++v17;
          }

          while (v17 != v15);
          v15 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
        }

        while (v15);
      }
    }

    else
    {
      dictionary = MEMORY[0x1E695E0F8];
    }

    v10 = 0;
  }

  return dictionary;
}

- (id)visualIdentifiersWithText:(id)text allowPrefixSearch:(BOOL)search entityFilterType:(int64_t)type includeInferredNames:(BOOL)names allowGroundingToNamesAndEmails:(BOOL)emails useNamesAndEmailsForNonRelations:(BOOL)relations enableBackupSearch:(BOOL)backupSearch error:(id *)self0
{
  relationsCopy = relations;
  emailsCopy = emails;
  v136 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v14 = textCopy;
  if (!search)
  {
    v15 = textCopy;
    v16 = [textCopy stringByAppendingString:@" "];

    v14 = v16;
  }

  v86 = v14;
  v17 = [(QPECRClient *)self generateEntityRequest:v14 entityFilterType:type mode:3 enableBackupSearch:backupSearch];
  v124 = 0;
  v18 = [(QPECRClient *)self resolveEntitiesWithRequest:v17 error:&v124];
  v19 = v124;
  v20 = v19;
  v81 = v18;
  if (v19)
  {
    v21 = v19;
    v22 = 0;
    *error = v20;
  }

  else
  {
    [v18 rankedResults];
    v24 = v23 = v18;
    v25 = [v24 count];

    if (v25)
    {
      v80 = v17;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      array3 = [MEMORY[0x1E695DF70] array];
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      obj = [v23 rankedResults];
      v84 = [obj countByEnumeratingWithState:&v120 objects:v135 count:16];
      if (v84)
      {
        v83 = *v121;
        v90 = array2;
        v91 = array;
        v89 = array3;
        do
        {
          v29 = 0;
          do
          {
            if (*v121 != v83)
            {
              objc_enumerationMutation(obj);
            }

            v85 = v29;
            v30 = *(*(&v120 + 1) + 8 * v29);
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            rankedItems = [v30 rankedItems];
            v94 = [rankedItems countByEnumeratingWithState:&v116 objects:v134 count:16];
            if (v94)
            {
              v93 = *v117;
              do
              {
                v31 = 0;
                do
                {
                  if (*v117 != v93)
                  {
                    objc_enumerationMutation(rankedItems);
                  }

                  v97 = v31;
                  v32 = *(*(&v116 + 1) + 8 * v31);
                  isRelationshipMatch = [v32 isRelationshipMatch];
                  identifierInformation = [v32 identifierInformation];
                  v112 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v96 = identifierInformation;
                  visualIdentifiers = [identifierInformation visualIdentifiers];
                  v34 = [visualIdentifiers countByEnumeratingWithState:&v112 objects:v133 count:16];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *v113;
                    do
                    {
                      for (i = 0; i != v35; ++i)
                      {
                        if (*v113 != v36)
                        {
                          objc_enumerationMutation(visualIdentifiers);
                        }

                        v38 = [*(*(&v112 + 1) + 8 * i) componentsSeparatedByString:@"/"];
                        firstObject = [v38 firstObject];
                        v40 = [firstObject length];

                        if (v40)
                        {
                          firstObject2 = [v38 firstObject];
                          v42 = [dictionary objectForKeyedSubscript:firstObject2];

                          firstObject3 = [v42 firstObject];
                          [firstObject3 doubleValue];
                          v45 = v44;

                          lastObject = [v42 lastObject];
                          [lastObject doubleValue];
                          v48 = v47;

                          [v32 nameScore];
                          if (v49 > v45)
                          {
                            [v32 nameScore];
                            v45 = v50;
                          }

                          [v32 confirmationConfidence];
                          if (v51 > v48)
                          {
                            [v32 confirmationConfidence];
                            v48 = v52;
                          }

                          v53 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
                          v132[0] = v53;
                          v54 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                          v132[1] = v54;
                          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
                          firstObject4 = [v38 firstObject];
                          [dictionary setObject:v55 forKeyedSubscript:firstObject4];
                        }
                      }

                      v35 = [visualIdentifiers countByEnumeratingWithState:&v112 objects:v133 count:16];
                    }

                    while (v35);
                  }

                  if (emailsCopy && isRelationshipMatch | relationsCopy)
                  {
                    v110 = 0u;
                    v111 = 0u;
                    v108 = 0u;
                    v109 = 0u;
                    v57 = v96;
                    names = [v96 names];
                    v59 = [names countByEnumeratingWithState:&v108 objects:v131 count:16];
                    array2 = v90;
                    array = v91;
                    array3 = v89;
                    if (v59)
                    {
                      v60 = v59;
                      v61 = *v109;
                      do
                      {
                        for (j = 0; j != v60; ++j)
                        {
                          if (*v109 != v61)
                          {
                            objc_enumerationMutation(names);
                          }

                          [v91 addObject:*(*(&v108 + 1) + 8 * j)];
                        }

                        v60 = [names countByEnumeratingWithState:&v108 objects:v131 count:16];
                      }

                      while (v60);
                    }

                    v106 = 0u;
                    v107 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    emails = [v96 emails];
                    v64 = [emails countByEnumeratingWithState:&v104 objects:v130 count:16];
                    if (v64)
                    {
                      v65 = v64;
                      v66 = *v105;
                      do
                      {
                        for (k = 0; k != v65; ++k)
                        {
                          if (*v105 != v66)
                          {
                            objc_enumerationMutation(emails);
                          }

                          [v90 addObject:*(*(&v104 + 1) + 8 * k)];
                        }

                        v65 = [emails countByEnumeratingWithState:&v104 objects:v130 count:16];
                      }

                      while (v65);
                    }

                    v102 = 0u;
                    v103 = 0u;
                    v100 = 0u;
                    v101 = 0u;
                    contactIdentifiers = [v96 contactIdentifiers];
                    v69 = [contactIdentifiers countByEnumeratingWithState:&v100 objects:v129 count:16];
                    if (v69)
                    {
                      v70 = v69;
                      v71 = *v101;
                      do
                      {
                        for (m = 0; m != v70; ++m)
                        {
                          if (*v101 != v71)
                          {
                            objc_enumerationMutation(contactIdentifiers);
                          }

                          [v89 addObject:*(*(&v100 + 1) + 8 * m)];
                        }

                        v70 = [contactIdentifiers countByEnumeratingWithState:&v100 objects:v129 count:16];
                      }

                      while (v70);
                    }

                    v73 = v97;
                  }

                  else
                  {
                    array2 = v90;
                    array = v91;
                    array3 = v89;
                    v57 = v96;
                    if (ecrClientLogger_token != -1)
                    {
                      [QPECRClient warmUpSync];
                    }

                    v73 = v97;
                    v74 = ecrClientLogger_log;
                    if (os_log_type_enabled(ecrClientLogger_log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v128 = v86;
                      _os_log_impl(&dword_1C6584000, v74, OS_LOG_TYPE_DEFAULT, "Not using ECR output names, emails and phone number for text:%@", buf, 0xCu);
                    }
                  }

                  v31 = v73 + 1;
                }

                while (v31 != v94);
                v94 = [rankedItems countByEnumeratingWithState:&v116 objects:v134 count:16];
              }

              while (v94);
            }

            v29 = v85 + 1;
          }

          while (v85 + 1 != v84);
          v84 = [obj countByEnumeratingWithState:&v120 objects:v135 count:16];
        }

        while (v84);
      }

      v125[0] = @"visualIdentifier";
      v75 = [dictionary copy];
      v126[0] = v75;
      v125[1] = @"personNames";
      v76 = [array copy];
      v126[1] = v76;
      v125[2] = @"personEmails";
      v77 = [array2 copy];
      v126[2] = v77;
      v125[3] = @"personContactIdentifiers";
      v78 = [array3 copy];
      v126[3] = v78;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:4];

      v20 = 0;
      v17 = v80;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F8];
    }
  }

  return v22;
}

- (void)cooldownSync
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1C6584000, selfCopy, OS_LOG_TYPE_DEBUG, "Cooled down %@", &v5, 0xCu);
}

- (void)cooldownAsync
{
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__QPECRClient_cooldownAsync__block_invoke;
  block[3] = &unk_1E82667C0;
  block[4] = self;
  dispatch_async(v4, block);
}

@end
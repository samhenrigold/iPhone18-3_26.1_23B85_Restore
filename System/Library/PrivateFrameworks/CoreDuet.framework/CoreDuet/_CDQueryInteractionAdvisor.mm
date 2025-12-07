@interface _CDQueryInteractionAdvisor
- (_CDQueryInteractionAdvisor)initWithStore:(id)store;
- (id)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings;
@end

@implementation _CDQueryInteractionAdvisor

- (_CDQueryInteractionAdvisor)initWithStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = _CDQueryInteractionAdvisor;
  v5 = [(_CDQueryInteractionAdvisor *)&v8 init];
  store = v5->_store;
  v5->_store = storeCopy;

  return v5;
}

- (id)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings
{
  v138 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  settingsCopy = settings;
  store = self->_store;
  v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v80 = [(_CDInteractionStore *)store countInteractionsUsingPredicate:v7 error:0];

  v73 = [settingsCopy copy];
  v8 = MEMORY[0x1E695DFA8];
  constrainKeywords = [settingsCopy constrainKeywords];
  v72 = [v8 setWithSet:constrainKeywords];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  [v72 addObjectsFromArray:v11];

  [v73 setConstrainKeywords:v72];
  interactionPredicate = [v73 interactionPredicate];
  v12 = [(_CDInteractionStore *)self->_store queryInteractionsUsingPredicate:interactionPredicate sortDescriptors:0 limit:0 error:0];
  whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v86 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet2];

  v84 = [MEMORY[0x1E695DFD8] setWithArray:v86];
  v87 = [v86 count];
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__7;
  v129 = __Block_byref_object_dispose__7;
  v130 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:100];
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__7;
  v123 = __Block_byref_object_dispose__7;
  v124 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __82___CDQueryInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke;
  v118[3] = &unk_1E7368320;
  v118[4] = &v125;
  v118[5] = &v119;
  v118[6] = v87;
  v14 = MEMORY[0x193B00C50](v118);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v76 = v12;
  v81 = [v76 countByEnumeratingWithState:&v114 objects:v137 count:16];
  if (v81)
  {
    v82 = *v115;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v115 != v82)
        {
          objc_enumerationMutation(v76);
        }

        v15 = *(*(&v114 + 1) + 8 * i);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        keywords = [v15 keywords];
        v17 = [keywords countByEnumeratingWithState:&v110 objects:v136 count:16];
        if (v17)
        {
          v88 = *v111;
          v85 = keywords;
          do
          {
            firstObject = v17;
            for (j = 0; j != firstObject; j = (j + 1))
            {
              if (*v111 != v88)
              {
                objc_enumerationMutation(keywords);
              }

              v19 = *(*(&v110 + 1) + 8 * j);
              if ([v84 containsObject:v19])
              {
                sender = [v15 sender];
                (v14)[2](v14, sender, v19);

                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                recipients = [v15 recipients];
                v22 = [recipients countByEnumeratingWithState:&v106 objects:v135 count:16];
                if (v22)
                {
                  v23 = *v107;
                  do
                  {
                    for (k = 0; k != v22; ++k)
                    {
                      if (*v107 != v23)
                      {
                        objc_enumerationMutation(recipients);
                      }

                      v14[2](v14, *(*(&v106 + 1) + 8 * k), v19);
                    }

                    v22 = [recipients countByEnumeratingWithState:&v106 objects:v135 count:16];
                  }

                  while (v22);
                }

                keywords = v85;
              }
            }

            v17 = [keywords countByEnumeratingWithState:&v110 objects:v136 count:16];
          }

          while (v17);
        }
      }

      v81 = [v76 countByEnumeratingWithState:&v114 objects:v137 count:16];
    }

    while (v81);
  }

  v70 = &v68;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = v26;
  bzero(v85, v26);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v27 = v126[5];
  v28 = [v27 countByEnumeratingWithState:&v102 objects:v134 count:16];
  if (v28)
  {
    v29 = *v103;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v103 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = [v126[5] objectForKeyedSubscript:*(*(&v102 + 1) + 8 * m)];
        if (v87)
        {
          for (n = 0; n != v87; ++n)
          {
            v33 = [v86 objectAtIndexedSubscript:n];
            v34 = [v31 objectForKey:v33];

            if (v34)
            {
              *&v85[4 * n] = *&v85[4 * n] + 1.0;
            }
          }
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v102 objects:v134 count:16];
    }

    while (v28);
  }

  if (v87)
  {
    v35 = v80;
    v36 = v87;
    v37 = v85;
    do
    {
      *v37 = logf(v35 / *v37);
      ++v37;
      --v36;
    }

    while (v36);
  }

  v69 = [v120[5] count];
  MEMORY[0x1EEE9AC00](v69);
  v77 = &v68 - v38;
  bzero(&v68 - v38, v39);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v78 = v120[5];
  v80 = [v78 countByEnumeratingWithState:&v98 objects:v133 count:16];
  if (v80)
  {
    v81 = 0;
    v79 = *v99;
    do
    {
      v81 = v81;
      v82 = 0;
      firstObject = &v77[i * v81];
      do
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(v78);
        }

        v40 = *(*(&v98 + 1) + 8 * v82);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v88 = v86;
        v41 = [v88 countByEnumeratingWithState:&v94 objects:v132 count:16];
        if (v41)
        {
          LODWORD(v42) = 0;
          v43 = *v95;
          do
          {
            v44 = 0;
            v42 = v42;
            do
            {
              if (*v95 != v43)
              {
                objc_enumerationMutation(v88);
              }

              v45 = *(*(&v94 + 1) + 8 * v44);
              v46 = [v126[5] objectForKeyedSubscript:v40];
              v47 = [v46 objectForKeyedSubscript:v45];
              LODWORD(v45) = [v47 intValue];

              firstObject[v42++] = v45;
              ++v44;
            }

            while (v41 != v44);
            v41 = [v88 countByEnumeratingWithState:&v94 objects:v132 count:16];
          }

          while (v41);
        }

        firstObject = (firstObject + i);
        ++v81;
        ++v82;
      }

      while (v82 != v80);
      v80 = [v78 countByEnumeratingWithState:&v98 objects:v133 count:16];
    }

    while (v80);
  }

  firstObject = [v76 firstObject];
  v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:v69];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v80 = v120[5];
  v48 = [v80 countByEnumeratingWithState:&v90 objects:v131 count:16];
  if (v48)
  {
    v49 = 0;
    v81 = *v91;
    do
    {
      v50 = 0;
      v51 = &v77[i * v49];
      v88 = v48;
      do
      {
        if (*v91 != v81)
        {
          objc_enumerationMutation(v80);
        }

        v52 = *(*(&v90 + 1) + 8 * v50);
        v53 = objc_alloc_init(_CDAdvisedInteraction);
        -[_CDAdvisedInteraction setMechanism:](v53, "setMechanism:", [firstObject mechanism]);
        bundleId = [firstObject bundleId];
        [(_CDAdvisedInteraction *)v53 setBundleId:bundleId];

        account = [firstObject account];
        [(_CDAdvisedInteraction *)v53 setAccount:account];
        v56 = v87 == 0;

        v57 = 0.0;
        if (!v56)
        {
          v58 = v87;
          v59 = v51;
          v60 = v85;
          do
          {
            v61 = *v59++;
            v62 = v61;
            v63 = *v60++;
            v57 = v57 + (v62 * v63);
            --v58;
          }

          while (v58);
        }

        [(_CDAdvisedInteraction *)v53 setScore:v57];
        [(_CDAdvisedInteraction *)v53 setContact:v52];
        [v82 addObject:v53];

        ++v49;
        v50 = v50 + 1;
        v51 += i;
      }

      while (v50 != v88);
      v48 = [v80 countByEnumeratingWithState:&v90 objects:v131 count:16];
    }

    while (v48);
  }

  v64 = [v82 sortedArrayUsingComparator:&__block_literal_global_20];
  resultLimit = [settingsCopy resultLimit];
  if (resultLimit < [v64 count])
  {
    v66 = [v64 subarrayWithRange:{0, objc_msgSend(settingsCopy, "resultLimit")}];

    v64 = v66;
  }

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v125, 8);

  return v64;
}

@end
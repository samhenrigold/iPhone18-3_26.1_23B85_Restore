@interface REHTTPDebugCoordinator
- (REHTTPDebugCoordinator)initWithSimulator:(id)simulator;
- (id)_createContentItemWithTitle:(id)title content:(id)content;
- (id)_createHTMLTableFromDictionary:(id)dictionary;
- (id)_createHTMLTableRowFromArray:(id)array itemElementTag:(id)tag;
- (id)_createTableWithItems:(id)items itemFormatBlock:(id)block valueBlock:(id)valueBlock;
- (id)_linkElementForTableItem:(id)item paths:(id)paths;
- (id)_linkToPaths:(id)paths;
- (id)_stringElementForObject:(id)object;
- (id)_stringForObject:(id)object;
- (id)_urlFromPaths:(id)paths;
- (void)generateDiagnosticsForPaths:(id)paths completion:(id)completion;
@end

@implementation REHTTPDebugCoordinator

- (REHTTPDebugCoordinator)initWithSimulator:(id)simulator
{
  simulatorCopy = simulator;
  v9.receiver = self;
  v9.super_class = REHTTPDebugCoordinator;
  v6 = [(REHTTPDebugCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_simulator, simulator);
  }

  return v7;
}

- (id)_urlFromPaths:(id)paths
{
  v19 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  relevanceEngineName = [(RETrainingSimulator *)self->_simulator relevanceEngineName];
  v6 = [@"/" stringByAppendingString:relevanceEngineName];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 = [v12 stringByAppendingPathComponent:{*(*(&v14 + 1) + 8 * v11), v14}];

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_linkElementForTableItem:(id)item paths:(id)paths
{
  pathsCopy = paths;
  v7 = [(REHTTPDebugCoordinator *)self _stringElementForObject:item];
  v8 = [(REHTTPDebugCoordinator *)self _urlFromPaths:pathsCopy];

  v9 = [REHTMLElement link:v8 title:&stru_283B97458];

  v10 = [v9 addChild:v7];

  return v10;
}

- (id)_linkToPaths:(id)paths
{
  pathsCopy = paths;
  lastObject = [pathsCopy lastObject];
  v6 = REDisplayStringForPropertyName(lastObject);

  v7 = [(REHTTPDebugCoordinator *)self _urlFromPaths:pathsCopy];

  v8 = [REHTMLElement link:v7 title:v6];

  return v8;
}

- (id)_stringForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(objectCopy)))
    {
      bOOLValue = [objectCopy BOOLValue];
      v7 = @"NO";
      if (bOOLValue)
      {
        v7 = @"YES";
      }

      v4 = v7;
    }

    else
    {
      v4 = [objectCopy description];
    }
  }

  v8 = v4;
  v9 = [MEMORY[0x277CCAB68] stringWithString:v4];
  [v9 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"\t" withString:@"&#9;" options:0 range:{0, objc_msgSend(v9, "length")}];
  v10 = [v9 copy];

  return v10;
}

- (id)_stringElementForObject:(id)object
{
  v3 = [(REHTTPDebugCoordinator *)self _stringForObject:object];
  v4 = [REHTMLElement elementWithHTMLString:v3];

  return v4;
}

- (void)generateDiagnosticsForPaths:(id)paths completion:(id)completion
{
  v157 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  completionCopy = completion;
  if (completionCopy)
  {
    v107 = completionCopy;
    v6 = RELogForDomain(21);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [pathsCopy componentsJoinedByString:@"->"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "Loading diagnostics for object path %@", &buf, 0xCu);
    }

    v108 = [(RETrainingSimulator *)self->_simulator encodedObjectAtPath:pathsCopy];
    v109 = [v108 dataUsingEncoding:4];
    v8 = RELogForDomain(21);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [REHTTPDebugCoordinator generateDiagnosticsForPaths:v108 completion:v8];
    }

    lastObject = [pathsCopy lastObject];
    v110 = REDisplayStringForPropertyName(lastObject);

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString integerValue](v110, "integerValue")}];
    stringValue = [v10 stringValue];
    v106 = [stringValue isEqualToString:v110];

    if (v109 && ([MEMORY[0x277CCAAA0] JSONObjectWithData:v109 options:4 error:0], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v119 = v12;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        keyEnumerator = [v119 keyEnumerator];
        v16 = [keyEnumerator countByEnumeratingWithState:&v147 objects:&buf count:16];
        if (v16)
        {
          v17 = *v148;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v148 != v17)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              v19 = *(*(&v147 + 1) + 8 * i);
              if (REPropertyIsInternalAttribute(v19, v15))
              {
                v20 = [v119 objectForKeyedSubscript:v19];
                v21 = REPropertyNameFromInternalAttribute(v19);
                [dictionary setObject:v20 forKeyedSubscript:v21];
              }
            }

            v16 = [keyEnumerator countByEnumeratingWithState:&v147 objects:&buf count:16];
          }

          while (v16);
        }

        v104 = [dictionary copy];
        v22 = [v104 objectForKeyedSubscript:@"type"];
        v23 = [v22 isEqualToString:@"table"];

        if (v23)
        {
          v121 = [(REHTTPDebugCoordinator *)self _createHTMLTableFromDictionary:v119];
        }

        else
        {
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v115 = v119;
          v69 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v115, "count")}];
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          keyEnumerator2 = [v115 keyEnumerator];
          v72 = [keyEnumerator2 countByEnumeratingWithState:&v147 objects:&buf count:16];
          if (v72)
          {
            v73 = *v148;
            do
            {
              for (j = 0; j != v72; ++j)
              {
                if (*v148 != v73)
                {
                  objc_enumerationMutation(keyEnumerator2);
                }

                v75 = *(*(&v147 + 1) + 8 * j);
                if ((REPropertyIsInternalAttribute(v75, v71) & 1) == 0)
                {
                  [v69 addObject:v75];
                }
              }

              v72 = [keyEnumerator2 countByEnumeratingWithState:&v147 objects:&buf count:16];
            }

            while (v72);
          }

          [v69 sortUsingSelector:?];
          v112 = [v69 copy];

          v117 = [v112 countByEnumeratingWithState:&v143 objects:v153 count:16];
          if (v117)
          {
            v121 = 0;
            v113 = *v144;
            do
            {
              for (k = 0; k != v117; ++k)
              {
                if (*v144 != v113)
                {
                  objc_enumerationMutation(v112);
                }

                v77 = *(*(&v143 + 1) + 8 * k);
                v78 = [pathsCopy arrayByAddingObject:v77];
                v124 = [(REHTTPDebugCoordinator *)self _linkToPaths:v78];
                v79 = [v115 objectForKeyedSubscript:v77];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v80 = v79;
                  v81 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v80, "count")}];
                  v149 = 0u;
                  v150 = 0u;
                  v147 = 0u;
                  v148 = 0u;
                  keyEnumerator3 = [v80 keyEnumerator];
                  v84 = [keyEnumerator3 countByEnumeratingWithState:&v147 objects:&buf count:16];
                  if (v84)
                  {
                    v85 = *v148;
                    do
                    {
                      for (m = 0; m != v84; ++m)
                      {
                        if (*v148 != v85)
                        {
                          objc_enumerationMutation(keyEnumerator3);
                        }

                        v87 = *(*(&v147 + 1) + 8 * m);
                        if ((REPropertyIsInternalAttribute(v87, v83) & 1) == 0)
                        {
                          [v81 addObject:v87];
                        }
                      }

                      v84 = [keyEnumerator3 countByEnumeratingWithState:&v147 objects:&buf count:16];
                    }

                    while (v84);
                  }

                  [v81 sortUsingSelector:sel_compare_];
                  v88 = [v81 copy];

                  v89 = MEMORY[0x277D85DD0];
                  v141[0] = MEMORY[0x277D85DD0];
                  v141[1] = 3221225472;
                  v141[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke;
                  v141[3] = &unk_2785FBB58;
                  v141[4] = self;
                  v142 = v78;
                  v138[0] = v89;
                  v138[1] = 3221225472;
                  v138[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_2;
                  v138[3] = &unk_2785FBB58;
                  v139 = v80;
                  selfCopy = self;
                  v90 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v88 itemFormatBlock:v141 valueBlock:v138];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *&buf = 0;
                    *(&buf + 1) = &buf;
                    v155 = 0x2020000000;
                    v156 = 0;
                    v135[0] = MEMORY[0x277D85DD0];
                    v135[1] = 3221225472;
                    v135[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_3;
                    v135[3] = &unk_2785FBB80;
                    p_buf = &buf;
                    v135[4] = self;
                    v136 = v78;
                    v90 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v79 itemFormatBlock:v135 valueBlock:0];

                    _Block_object_dispose(&buf, 8);
                  }

                  else
                  {
                    v91 = +[REHTMLElement div];
                    v92 = [(REHTTPDebugCoordinator *)self _stringElementForObject:v79];
                    v90 = [v91 addChild:v92];
                  }
                }

                v93 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:v124 content:v90];
                if (v121)
                {
                  v94 = [v121 append:v93];

                  v121 = v94;
                }

                else
                {
                  v121 = v93;
                }
              }

              v117 = [v112 countByEnumeratingWithState:&v143 objects:v153 count:16];
            }

            while (v117);
          }

          else
          {
            v121 = 0;
          }
        }

        if (v106)
        {
          v95 = v119;
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v96 = REEncodeIdentificationProperites();
          v97 = [v96 countByEnumeratingWithState:&v147 objects:&buf count:16];
          if (v97)
          {
            v98 = *v148;
LABEL_110:
            v99 = 0;
            while (1)
            {
              if (*v148 != v98)
              {
                objc_enumerationMutation(v96);
              }

              v100 = [v95 objectForKeyedSubscript:*(*(&v147 + 1) + 8 * v99)];
              if (v100)
              {
                break;
              }

              if (v97 == ++v99)
              {
                v97 = [v96 countByEnumeratingWithState:&v147 objects:&buf count:16];
                if (v97)
                {
                  goto LABEL_110;
                }

                goto LABEL_116;
              }
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_120;
            }

            v101 = [MEMORY[0x277CCAB68] stringWithString:v100];
            [v101 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v101, "length")}];
            [v101 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v101, "length")}];
            [v101 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v101, "length")}];
            [v101 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:0 range:{0, objc_msgSend(v101, "length")}];
            [v101 replaceOccurrencesOfString:@"\t" withString:@"&#9;" options:0 range:{0, objc_msgSend(v101, "length")}];
            v24 = [v101 copy];
          }

          else
          {
LABEL_116:

            v100 = 0;
LABEL_120:
            v24 = &stru_283B97458;
          }
        }

        else
        {
          v24 = v110;
        }

        v107[2](v107, v121, v24);

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v105 = v12;
        if ([v105 count])
        {
          firstObject = [v105 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            obj = v105;
            v116 = [obj countByEnumeratingWithState:&v131 objects:v152 count:16];
            if (v116)
            {
              v120 = 0;
              v123 = 0;
              v114 = *v132;
              do
              {
                for (n = 0; n != v116; ++n)
                {
                  if (*v132 != v114)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v28 = *(*(&v131 + 1) + 8 * n);
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  v149 = 0u;
                  v150 = 0u;
                  v147 = 0u;
                  v148 = 0u;
                  keyEnumerator4 = [v28 keyEnumerator];
                  v32 = [keyEnumerator4 countByEnumeratingWithState:&v147 objects:&buf count:16];
                  if (v32)
                  {
                    v33 = *v148;
                    do
                    {
                      for (ii = 0; ii != v32; ++ii)
                      {
                        if (*v148 != v33)
                        {
                          objc_enumerationMutation(keyEnumerator4);
                        }

                        v35 = *(*(&v147 + 1) + 8 * ii);
                        if (REPropertyIsInternalAttribute(v35, v31))
                        {
                          v36 = [v28 objectForKeyedSubscript:v35];
                          v37 = REPropertyNameFromInternalAttribute(v35);
                          [dictionary2 setObject:v36 forKeyedSubscript:v37];
                        }
                      }

                      v32 = [keyEnumerator4 countByEnumeratingWithState:&v147 objects:&buf count:16];
                    }

                    while (v32);
                  }

                  v122 = [dictionary2 copy];
                  v38 = [v122 objectForKeyedSubscript:@"type"];
                  v39 = [v38 isEqualToString:@"table"];

                  if (v39)
                  {
                    v40 = [(REHTTPDebugCoordinator *)self _createHTMLTableFromDictionary:v28];
                  }

                  else
                  {
                    v41 = v28;
                    v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v41, "count")}];
                    v149 = 0u;
                    v150 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    keyEnumerator5 = [v41 keyEnumerator];
                    v45 = [keyEnumerator5 countByEnumeratingWithState:&v147 objects:&buf count:16];
                    if (v45)
                    {
                      v46 = *v148;
                      do
                      {
                        for (jj = 0; jj != v45; ++jj)
                        {
                          if (*v148 != v46)
                          {
                            objc_enumerationMutation(keyEnumerator5);
                          }

                          v48 = *(*(&v147 + 1) + 8 * jj);
                          if ((REPropertyIsInternalAttribute(v48, v44) & 1) == 0)
                          {
                            [v42 addObject:v48];
                          }
                        }

                        v45 = [keyEnumerator5 countByEnumeratingWithState:&v147 objects:&buf count:16];
                      }

                      while (v45);
                    }

                    [v42 sortUsingSelector:sel_compare_];
                    v49 = [v42 copy];

                    v50 = MEMORY[0x277D85DD0];
                    v128[0] = MEMORY[0x277D85DD0];
                    v128[1] = 3221225472;
                    v128[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_4;
                    v128[3] = &unk_2785FBBA8;
                    v128[4] = self;
                    v129 = pathsCopy;
                    v130 = v123;
                    v127[0] = v50;
                    v127[1] = 3221225472;
                    v127[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_5;
                    v127[3] = &unk_2785FBB58;
                    v127[4] = self;
                    v127[5] = v41;
                    v40 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v49 itemFormatBlock:v128 valueBlock:v127];
                  }

                  v51 = v28;
                  v147 = 0u;
                  v148 = 0u;
                  v149 = 0u;
                  v150 = 0u;
                  v52 = REEncodeIdentificationProperites();
                  v53 = [v52 countByEnumeratingWithState:&v147 objects:&buf count:16];
                  if (v53)
                  {
                    v54 = *v148;
                    while (2)
                    {
                      for (kk = 0; kk != v53; ++kk)
                      {
                        if (*v148 != v54)
                        {
                          objc_enumerationMutation(v52);
                        }

                        v56 = [v51 objectForKeyedSubscript:*(*(&v147 + 1) + 8 * kk)];
                        if (v56)
                        {

                          v58 = [(REHTTPDebugCoordinator *)self _stringForObject:v56];
                          v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v123];
                          stringValue2 = [v59 stringValue];
                          v151 = stringValue2;
                          v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v151 count:1];
                          v62 = [pathsCopy arrayByAddingObjectsFromArray:v61];
                          v57 = [(REHTTPDebugCoordinator *)self _linkElementForTableItem:v58 paths:v62];

                          goto LABEL_63;
                        }
                      }

                      v53 = [v52 countByEnumeratingWithState:&v147 objects:&buf count:16];
                      if (v53)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v57 = 0;
LABEL_63:
                  v63 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:v57 content:v40];

                  if (v120)
                  {
                    v64 = [v120 append:v63];

                    v120 = v64;
                  }

                  else
                  {
                    v120 = v63;
                  }

                  ++v123;
                }

                v116 = [obj countByEnumeratingWithState:&v131 objects:v152 count:16];
              }

              while (v116);
            }

            else
            {
              v120 = 0;
            }
          }

          else
          {
            v126[0] = MEMORY[0x277D85DD0];
            v126[1] = 3221225472;
            v126[2] = __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_6;
            v126[3] = &unk_2785FBBD0;
            v126[4] = self;
            v102 = [(REHTTPDebugCoordinator *)self _createTableWithItems:v105 itemFormatBlock:v126 valueBlock:0];
            v120 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:0 content:v102];
          }

          v103 = v110;
          if (v106)
          {

            v103 = &stru_283B97458;
          }

          v110 = v103;
          (v107[2])(v107, v120);
        }

        else
        {
          v120 = +[REHTMLElement div];
          v107[2](v107, v120, v110);
        }
      }

      else
      {
        v65 = +[REHTMLElement div];
        v66 = [(REHTTPDebugCoordinator *)self _stringElementForObject:v12];
        v67 = [v65 addChild:v66];
        v68 = [(REHTTPDebugCoordinator *)self _createContentItemWithTitle:0 content:v67];

        v107[2](v107, v68, v110);
      }
    }

    else
    {
      v107[2](v107, 0, v110);
    }

    v24 = v110;
LABEL_22:

    completionCopy = v107;
  }
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 arrayByAddingObject:v4];
  v6 = [v2 _linkElementForTableItem:v4 paths:v5];

  return v6;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [*(a1 + 40) _stringElementForObject:v3];

  return v4;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = REEncodeIdentificationProperites();
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
          if (v10)
          {
            v12 = v10;

            v13 = *(a1 + 32);
            v14 = *(a1 + 40);
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24) - 1];
            v16 = [v15 stringValue];
            v17 = [v14 arrayByAddingObject:v16];
            v11 = [v13 _linkElementForTableItem:v4 paths:v17];

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = [*(a1 + 32) _stringElementForObject:{v3, v19}];
LABEL_13:

  return v11;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_4(void *a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = MEMORY[0x277CCABB0];
  v5 = a1[6];
  v6 = a2;
  v7 = [v4 numberWithUnsignedInteger:v5];
  v8 = [v7 stringValue];
  v13[0] = v8;
  v13[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v3 arrayByAddingObjectsFromArray:v9];
  v11 = [v2 _linkElementForTableItem:v6 paths:v10];

  return v11;
}

id __65__REHTTPDebugCoordinator_generateDiagnosticsForPaths_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v4 = [v2 _stringElementForObject:v3];

  return v4;
}

- (id)_createContentItemWithTitle:(id)title content:(id)content
{
  titleCopy = title;
  contentCopy = content;
  if (titleCopy)
  {
    v7 = +[REHTMLElement div];
    v8 = [v7 elementByAddingClass:@"section"];

    v9 = [v8 addChild:titleCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[REHTMLElement div];
  v11 = [v10 elementByAddingClass:@"content-item"];

  if (v9)
  {
    v12 = [v11 addChild:v9];

    v11 = v12;
  }

  if (contentCopy)
  {
    v13 = [v11 addChild:contentCopy];

    v11 = v13;
  }

  return v11;
}

- (id)_createHTMLTableRowFromArray:(id)array itemElementTag:(id)tag
{
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  tagCopy = tag;
  v7 = [REHTMLElement htmlElementWithTag:@"tr" content:0];
  if (_createHTMLTableRowFromArray_itemElementTag__onceToken != -1)
  {
    [REHTTPDebugCoordinator _createHTMLTableRowFromArray:itemElementTag:];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * v12);
        if ([v14 hasPrefix:{@"0x", v21}])
        {
          v15 = 1;
        }

        else
        {
          v16 = [v14 stringByTrimmingCharactersInSet:_createHTMLTableRowFromArray_itemElementTag__NumericCharacterSet];
          v15 = [v16 length] == 0;
        }

        v17 = [REHTMLElement htmlElementWithTag:tagCopy content:v14];
        v18 = v17;
        if (v15)
        {
          v19 = [v17 elementByAddingClass:@"monospaced"];

          v18 = v19;
        }

        v7 = [v13 addChild:v18];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

uint64_t __70__REHTTPDebugCoordinator__createHTMLTableRowFromArray_itemElementTag___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890.-+"];
  v1 = _createHTMLTableRowFromArray_itemElementTag__NumericCharacterSet;
  _createHTMLTableRowFromArray_itemElementTag__NumericCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_createHTMLTableFromDictionary:(id)dictionary
{
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  keyEnumerator = [dictionaryCopy keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (REPropertyIsInternalAttribute(v12, v8))
        {
          v13 = [dictionaryCopy objectForKeyedSubscript:v12];
          v14 = REPropertyNameFromInternalAttribute(v12);
          [dictionary setObject:v13 forKeyedSubscript:v14];
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  v15 = [dictionary copy];
  v16 = [v15 objectForKeyedSubscript:@"sortable"];
  bOOLValue = [v16 BOOLValue];

  v18 = [REHTMLElement htmlElementWithTag:@"table" content:0];
  v19 = v18;
  v35 = v15;
  if (bOOLValue)
  {
    v20 = [v18 elementByAddingClasses:&unk_283BBD9B0];

    v19 = v20;
  }

  v21 = [REHTMLElement htmlElementWithTag:@"thead" content:0];
  v22 = [dictionaryCopy objectForKeyedSubscript:@"header"];
  v23 = [(REHTTPDebugCoordinator *)self _createHTMLTableRowFromArray:v22 itemElementTag:@"th"];
  v24 = [v21 addChild:v23];

  v34 = [v19 addChild:v24];

  v25 = [REHTMLElement htmlElementWithTag:@"tbody" content:0];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 0];
  v27 = [dictionaryCopy objectForKeyedSubscript:v26];

  if (v27)
  {
    v28 = 1;
    do
    {
      v29 = [(REHTTPDebugCoordinator *)self _createHTMLTableRowFromArray:v27 itemElementTag:@"td"];
      v30 = [v25 addChild:v29];

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v28];
      v27 = [dictionaryCopy objectForKeyedSubscript:v31];

      ++v28;
      v25 = v30;
    }

    while (v27);
  }

  else
  {
    v30 = v25;
  }

  v32 = [v34 addChild:v30];

  return v32;
}

- (id)_createTableWithItems:(id)items itemFormatBlock:(id)block valueBlock:(id)valueBlock
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  valueBlockCopy = valueBlock;
  v10 = +[REHTMLElement div];
  v11 = [v10 elementByAddingClass:@"content-table"];

  v30 = [itemsCopy count];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = itemsCopy;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v32 = *v35;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        v13 = v11;
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = +[REHTMLElement div];
        v16 = [v15 elementByAddingClass:@"table-item"];

        v17 = blockCopy[2](blockCopy, v14);
        v18 = +[REHTMLElement div];
        v19 = [v18 elementByAddingClass:@"item-key"];
        v20 = [v19 addChild:v17];

        v21 = [v16 addChild:v20];

        if (valueBlockCopy)
        {
          v22 = valueBlockCopy[2](valueBlockCopy, v14);
          if (v22)
          {
            v23 = v22;
            v24 = +[REHTMLElement div];
            v25 = [v24 elementByAddingClass:@"item-value"];
            v26 = [v25 addChild:v23];

            v27 = [v21 addChild:v26];

            v21 = v27;
          }
        }

        v11 = [v13 addChild:v21];
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  if (v30 <= 2)
  {
    v28 = [v11 elementByAddingClass:@"two-column"];

    v11 = v28;
  }

  return v11;
}

- (void)generateDiagnosticsForPaths:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "Received json %@", &v2, 0xCu);
}

@end
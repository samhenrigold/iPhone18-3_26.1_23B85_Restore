@interface AXSSDocument
+ (id)documentWithAttributedText:(id)text;
+ (id)documentWithText:(id)text;
- (AXSSDocument)init;
- (NSArray)nodes;
- (id)_generateAllDocIssues;
- (id)_generateAllWordIssues;
- (id)generateAllIssues;
- (id)stringByAcceptingFirstSuggestionForIssues:(id)issues;
- (void)addNode:(id)node;
@end

@implementation AXSSDocument

+ (id)documentWithText:(id)text
{
  v4 = MEMORY[0x277CCA898];
  textCopy = text;
  v6 = [[v4 alloc] initWithString:textCopy];

  v7 = [self documentWithAttributedText:v6];

  return v7;
}

+ (id)documentWithAttributedText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(AXSSDocumentNode);
  [(AXSSDocumentNode *)v4 setText:textCopy];

  v5 = objc_opt_new();
  [v5 addNode:v4];

  return v5;
}

- (AXSSDocument)init
{
  v6.receiver = self;
  v6.super_class = AXSSDocument;
  v2 = [(AXSSDocument *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodes = v2->__nodes;
    v2->__nodes = v3;
  }

  return v2;
}

- (NSArray)nodes
{
  _nodes = [(AXSSDocument *)self _nodes];
  v3 = [_nodes copy];

  return v3;
}

- (void)addNode:(id)node
{
  nodeCopy = node;
  _nodes = [(AXSSDocument *)self _nodes];
  [_nodes addObject:nodeCopy];
}

- (id)generateAllIssues
{
  _generateAllWordIssues = [(AXSSDocument *)self _generateAllWordIssues];
  _generateAllDocIssues = [(AXSSDocument *)self _generateAllDocIssues];
  v5 = [_generateAllWordIssues arrayByAddingObjectsFromArray:_generateAllDocIssues];

  return v5;
}

- (id)_generateAllDocIssues
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = +[AXSSDocumentTextRulesetManager sharedManager];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(AXSSDocument *)self nodes];
  v21 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v21)
  {
    v20 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(obj);
        }

        text = [*(*(&v32 + 1) + 8 * i) text];
        if ([text length])
        {
          v22 = i;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          rulesets = [v19 rulesets];
          v6 = [rulesets countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v29;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v29 != v8)
                {
                  objc_enumerationMutation(rulesets);
                }

                v10 = [*(*(&v28 + 1) + 8 * j) rulesForGranularity:2];
                v24 = 0u;
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v11 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v25;
                  do
                  {
                    for (k = 0; k != v12; ++k)
                    {
                      if (*v25 != v13)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v15 = [*(*(&v24 + 1) + 8 * k) issuesInText:text];
                      if ([v15 count])
                      {
                        [v3 addObjectsFromArray:v15];
                      }
                    }

                    v12 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
                  }

                  while (v12);
                }
              }

              v7 = [rulesets countByEnumeratingWithState:&v28 objects:v37 count:16];
            }

            while (v7);
          }

          i = v22;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v21);
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_generateAllWordIssues
{
  v45 = *MEMORY[0x277D85DE8];
  v21 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(AXSSDocument *)self nodes];
  v3 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v3)
  {
    v20 = *v41;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    v19 = vnegq_f64(v4);
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * i);
        v7 = objc_opt_new();
        text = [v6 text];
        string = [text string];
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy_;
        v38 = __Block_byref_object_dispose_;
        v39 = 0;
        v29 = 0;
        v30 = &v29;
        v31 = 0x3010000000;
        v32 = &unk_23DBBDEAD;
        v33 = v19;
        v10 = [string length];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __38__AXSSDocument__generateAllWordIssues__block_invoke;
        v22[3] = &unk_278BF03B8;
        v11 = text;
        v23 = v11;
        v24 = v6;
        v27 = &v34;
        v28 = &v29;
        v12 = v7;
        v25 = v12;
        v13 = v21;
        v26 = v13;
        [string enumerateSubstringsInRange:0 options:v10 usingBlock:{1027, v22}];
        if (v35[5] && [v11 length] >= 3)
        {
          v14 = objc_opt_new();
          v15 = [v11 length];
          v16 = _CheckNodeWord(v6, v11, v14, v15, 0, v35[5], v30[4], v30[5], v12);

          if ([v16 count])
          {
            [v13 addObjectsFromArray:v16];
          }
        }

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v34, 8);
      }

      v3 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v3);
  }

  return v21;
}

void __38__AXSSDocument__generateAllWordIssues__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) attributedSubstringFromRange:?];
  v11 = _CheckNodeWord(*(a1 + 40), *(a1 + 32), v7, a3, a4, *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(a1 + 48));
  if ([v11 count])
  {
    [*(a1 + 56) addObjectsFromArray:v11];
  }

  v8 = *(*(a1 + 72) + 8);
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (id)stringByAcceptingFirstSuggestionForIssues:(id)issues
{
  v46 = *MEMORY[0x277D85DE8];
  issuesCopy = issues;
  v28 = objc_opt_new();
  v26 = issuesCopy;
  v30 = [issuesCopy mutableCopy];
  [v30 sortUsingComparator:&__block_literal_global_0];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(AXSSDocument *)self nodes];
  v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v29 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        text = [v6 text];
        v33 = [text mutableCopy];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = v30;
        v8 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v37;
          do
          {
            v12 = 0;
            v34 = v9;
            do
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(v35);
              }

              v13 = *(*(&v36 + 1) + 8 * v12);
              node = [v13 node];
              v15 = [node isEqual:v6];

              if (v15)
              {
                range = [v13 range];
                v18 = v17;
                suggestions = [v13 suggestions];
                firstObject = [suggestions firstObject];
                if (firstObject)
                {
                  v21 = v6;
                  v22 = [v33 length];
                  [v33 replaceCharactersInRange:range - v10 withAttributedString:{v18, firstObject}];
                  v23 = [v33 length];
                  v24 = v22 + v10;
                  v6 = v21;
                  v9 = v34;
                  v10 = v24 - v23;
                }
              }

              ++v12;
            }

            while (v9 != v12);
            v9 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v9);
        }

        if ([v33 length])
        {
          [v28 appendAttributedString:v33];
        }

        v5 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v31);
  }

  return v28;
}

uint64_t __58__AXSSDocument_stringByAcceptingFirstSuggestionForIssues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 range];
  if (v6 == [v5 range])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 range];
    if (v8 < [v5 range])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

@end
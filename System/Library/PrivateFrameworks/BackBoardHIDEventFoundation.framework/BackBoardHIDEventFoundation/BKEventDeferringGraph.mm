@interface BKEventDeferringGraph
- (BKEventDeferringGraph)init;
- (NSString)description;
- (id)_aggregateIdentitiesLabel:(uint64_t)label;
- (id)_dictionaryWithGraphToIdentityMapping;
- (id)deferringPathForPID:(void *)d environment:(void *)environment display:(void *)display dispatchTarget:(void *)target returnModalities:;
- (id)describeDeliveryChains:(id)chains identifier:(id)identifier;
- (void)_mapSelectionTargetablesByEnvironment:(void *)environment block:;
- (void)_setRules:(int)rules forPID:(void *)d toDisplay:;
- (void)logGraphToTarget:(uint64_t)target;
- (void)logRulesToTarget:(uint64_t)target;
@end

@implementation BKEventDeferringGraph

- (id)describeDeliveryChains:(id)chains identifier:(id)identifier
{
  sub_223CC73DC(0, &qword_28133EF10, 0x277CF05F8);
  sub_223CC73DC(0, &qword_28133EF38, off_2784F5E98);
  sub_223CC67D8(&qword_28133EF08, &qword_28133EF10, 0x277CF05F8);
  v4 = sub_223CEACD0();
  v5 = sub_223CEACF0();
  sub_223CC46F4(v4, v5, v6);

  v7 = sub_223CEACE0();

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(BKStringTranscriptTarget);
  [(BKEventDeferringGraph *)self logGraphToTarget:v3];
  build = [(BKStringTranscriptTarget *)v3 build];

  return build;
}

- (void)logGraphToTarget:(uint64_t)target
{
  v3 = a2;
  if (target)
  {
    _dictionaryWithGraphToIdentityMapping = [(BKEventDeferringGraph *)target _dictionaryWithGraphToIdentityMapping];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__BKEventDeferringGraph_logGraphToTarget___block_invoke;
    v5[3] = &unk_2784F6D40;
    v5[4] = target;
    v6 = v3;
    [_dictionaryWithGraphToIdentityMapping enumerateKeysAndObjectsUsingBlock:v5];
  }
}

- (id)_dictionaryWithGraphToIdentityMapping
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(self + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__BKEventDeferringGraph__dictionaryWithGraphToIdentityMapping__block_invoke;
  v6[3] = &unk_2784F6CF0;
  v4 = v2;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __42__BKEventDeferringGraph_logGraphToTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [(BKEventDeferringGraph *)v5 _aggregateIdentitiesLabel:a3];
  v8 = [v6 graphDescriptionWithLabel:v7];

  [*(a1 + 40) writeString:v8];
  [*(a1 + 40) writeString:@"\n"];
}

- (id)_aggregateIdentitiesLabel:(uint64_t)label
{
  if (label)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__BKEventDeferringGraph__aggregateIdentitiesLabel___block_invoke;
    v5[3] = &unk_2784F6D18;
    v5[4] = label;
    v2 = [a2 bs_map:v5];
    v3 = [v2 componentsJoinedByString:@"|"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __51__BKEventDeferringGraph__aggregateIdentitiesLabel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 display];
    v6 = [v5 _isNullDisplay];

    if (v6)
    {
      v7 = [v4 environment];
      v8 = [v7 description];
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v7 = [v4 environment];
      v10 = [v4 display];
      v8 = [v9 stringWithFormat:@"%@-%@", v7, v10];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __62__BKEventDeferringGraph__dictionaryWithGraphToIdentityMapping__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v4 bs_addObject:v6 toCollectionClass:objc_opt_class() forKey:v5];
}

- (BKEventDeferringGraph)init
{
  v8.receiver = self;
  v8.super_class = BKEventDeferringGraph;
  v2 = [(BKEventDeferringGraph *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identityToGraph = v2->_identityToGraph;
    v2->_identityToGraph = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pidToRules = v2->_pidToRules;
    v2->_pidToRules = v5;
  }

  return v2;
}

void __83__BKEventDeferringGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v77 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if (v77)
  {
    v7 = [v77[4] objectForKey:v5];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = *(a1 + 40);
  v11 = [(BKEventDeferringGraph *)*(a1 + 48) _aggregateIdentitiesLabel:v6];

  if (!v8)
  {
    v69 = [v9 stringWithFormat:@"not in %@\n", v11];
    [v10 writeString:v69];

    goto LABEL_65;
  }

  v12 = [v9 stringWithFormat:@"%@\n", v11];
  [v10 writeString:v12];

  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v13;
  if (v77)
  {
    v16 = [v77[4] objectForKey:v14];
    v17 = v16;
    v18 = MEMORY[0x277CF0C08];
    if (v16)
    {
      v19 = *(v16 + 16);
      v20 = [v18 descriptionForRootObject:v19];
      [v15 writeString:v20];

      [v15 writeString:@"\n"];
      v21 = v17[3];
    }

    else
    {
      v70 = [MEMORY[0x277CF0C08] descriptionForRootObject:0];
      [v15 writeString:v70];

      [v15 writeString:@"\n"];
      v21 = 0;
    }

    v22 = v21;
    v23 = [v22 bs_map:&__block_literal_global_3223];

    v24 = MEMORY[0x277CCACA8];
    v72 = v23;
    v25 = [MEMORY[0x277CF0C08] descriptionForRootObject:v23];
    v26 = [v24 stringWithFormat:@"has supernodes %@\n", v25];
    [v15 writeString:v26];

    v73 = v14;
    v74 = a1;
    if (v17)
    {
      v27 = v17[4];
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = [v28 bs_map:&__block_literal_global_80];

    v30 = MEMORY[0x277CCACA8];
    v71 = v29;
    v31 = [MEMORY[0x277CF0C08] descriptionForRootObject:v29];
    v32 = [v30 stringWithFormat:@"has subnodes %@\n", v31];
    v81 = v15;
    [v15 writeString:v32];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v77[3];
    v80 = v17;
    v78 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v78)
    {
      v76 = *v88;
      do
      {
        v33 = 0;
        do
        {
          if (*v88 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v79 = v33;
          v34 = *(*(&v87 + 1) + 8 * v33);
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v82 = v77[3];
          v35 = [v82 countByEnumeratingWithState:&v83 objects:v91 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v84;
            do
            {
              v38 = 0;
              do
              {
                if (*v84 != v37)
                {
                  objc_enumerationMutation(v82);
                }

                v39 = *(*(&v83 + 1) + 8 * v38);
                v41 = v34 == v17 || v39 == v17;
                if (v34 != v39 && v41)
                {
                  v43 = [BKEventDeferringEnvironmentGraph _matchSubnode:v34 toSupernode:?];
                  if (v43)
                  {
                    if (v34)
                    {
                      v44 = v34[2];
                    }

                    else
                    {
                      v44 = 0;
                    }

                    v45 = MEMORY[0x277CCACA8];
                    v46 = v44;
                    v47 = [v46 identity];
                    if (v39)
                    {
                      v48 = v39[2];
                    }

                    else
                    {
                      v48 = 0;
                    }

                    v49 = v48;
                    v50 = [v49 identity];
                    v51 = [v45 stringWithFormat:@" %@  -> %@: %@\n", v47, v50, v43];
                    [v81 writeString:v51];

                    v17 = v80;
                  }
                }

                ++v38;
              }

              while (v36 != v38);
              v52 = [v82 countByEnumeratingWithState:&v83 objects:v91 count:16];
              v36 = v52;
            }

            while (v52);
          }

          v33 = v79 + 1;
        }

        while (v79 + 1 != v78);
        v78 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
      }

      while (v78);
    }

    v53 = v77[1];
    v14 = v73;
    v54 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v73, "pid")}];
    v55 = [v53 objectForKey:v54];
    v56 = v55;
    if (v55)
    {
      v57 = *(v55 + 32);
    }

    else
    {
      v57 = 0;
    }

    a1 = v74;
    v15 = v81;
    v58 = v57;
    v59 = [v58 containsObject:v17];

    if (!v59)
    {
      goto LABEL_63;
    }

    if (v17)
    {
      v60 = v17[3];
    }

    else
    {
      v60 = 0;
    }

    v61 = v60;
    v62 = [v61 count];

    v63 = MEMORY[0x277CCACA8];
    if (v17)
    {
      v64 = BSProcessDescriptionForPID();
      if (v62)
      {
        v65 = v17[3];
LABEL_51:
        v66 = v65;
        v67 = [v66 bs_map:&__block_literal_global_91_3227];
        v68 = [v63 stringWithFormat:@"entrypoint into %@ from %@\n", v64, v67];
        [v15 writeString:v68];

LABEL_62:
LABEL_63:

        goto LABEL_64;
      }
    }

    else
    {
      v64 = BSProcessDescriptionForPID();
      if (v62)
      {
        v65 = 0;
        v17 = v80;
        v15 = v81;
        goto LABEL_51;
      }

      v17 = v80;
      v15 = v81;
    }

    v66 = [v63 stringWithFormat:@"root node in %@\n", v64];
    [v15 writeString:v66];
    goto LABEL_62;
  }

LABEL_64:

  [*(a1 + 40) writeString:@"\n"];
LABEL_65:
}

- (void)logRulesToTarget:(uint64_t)target
{
  if (target)
  {
    v2 = MEMORY[0x277CF0C08];
    v3 = *(target + 16);
    v4 = a2;
    allValues = [v3 allValues];
    bs_flatten = [allValues bs_flatten];
    v6 = [v2 descriptionForRootObject:bs_flatten];
    [v4 writeString:v6];
  }
}

- (void)_mapSelectionTargetablesByEnvironment:(void *)environment block:
{
  environmentCopy = environment;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__BKEventDeferringGraph__mapSelectionTargetablesByEnvironment_block___block_invoke;
  v10[3] = &unk_2784F6DB8;
  v10[4] = self;
  v6 = [a2 bs_dictionaryByPartitioning:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__BKEventDeferringGraph__mapSelectionTargetablesByEnvironment_block___block_invoke_3;
  v8[3] = &unk_2784F6DE0;
  v8[4] = self;
  v7 = environmentCopy;
  v9 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

id __69__BKEventDeferringGraph__mapSelectionTargetablesByEnvironment_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__BKEventDeferringGraph__mapSelectionTargetablesByEnvironment_block___block_invoke_2;
  v9[3] = &unk_2784F6D90;
  v10 = v3;
  v5 = v3;
  v6 = [v4 bs_compactMap:v9];
  v7 = [v6 bs_array];

  return v7;
}

void __69__BKEventDeferringGraph__mapSelectionTargetablesByEnvironment_block___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  (*(*(a1 + 40) + 16))();
}

id __69__BKEventDeferringGraph__mapSelectionTargetablesByEnvironment_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectionTarget];
  v5 = [v4 display];
  v6 = _BKHIDEventDeferringDisplayMatch(v5, v3);

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CF05F8]);
    v8 = [v4 environment];
    v9 = [v7 initWithDisplay:v3 environment:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __66__BKEventDeferringGraph_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v25 = *(a1 + 32);
  v4 = a3;
  if (a2)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a2[2];
      v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v4];
      *buf = 138544130;
      v34 = v6;
      v35 = 2048;
      v36 = a2;
      v37 = 1024;
      v38 = v25;
      v39 = 2114;
      v40 = v7;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] setConstraintAssertions:forPID(%d): %{public}@", buf, 0x26u);
    }

    v8 = [v4 count];
    v9 = a2[8];
    if (v8)
    {
      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v11 = a2[8];
        a2[8] = v10;

        v9 = a2[8];
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInt:v25];
      [v9 setObject:v4 forKey:v12];
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInt:v25];
      [v9 removeObjectForKey:v12];
    }

    [(BKEventDeferringEnvironmentGraph *)a2 _updateConstraintMap];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v4;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [v18 selectionTarget];
          v20 = a2[5];
          v21 = [v19 target];
          v22 = [v20 objectForKey:v21];

          if (v22)
          {
            v23 = [v18 pathIdentifier];
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __77__BKEventDeferringEnvironmentGraph_setConstraintAssertions_forClientWithPID___block_invoke;
            v26[3] = &unk_2784F7088;
            v26[4] = a2;
            v27 = v22;
            v28 = v25;
            [(BKEventDeferringEnvironmentGraph *)a2 _forEachSelectionPath:v23 block:v26];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:buf count:16];
      }

      while (v15);
    }

    v4 = v24;
  }
}

void __64__BKEventDeferringGraph_setModalityAssertions_forClientWithPID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v31 = *(a1 + 32);
  v4 = a3;
  if (a2)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 16);
      v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v4];
      *buf = 138544130;
      v43 = v6;
      v44 = 2048;
      v45 = a2;
      v46 = 1024;
      v47 = v31;
      v48 = 2114;
      v49 = v7;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] setModalityAssertions:forPID(%d): %{public}@", buf, 0x26u);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:v31];
    v9 = [*(a2 + 56) objectForKey:v8];
    v30 = v4;
    v10 = v4;
    v11 = v10;
    if ([v9 count])
    {
      v11 = v10;
      if ([v10 count])
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __75__BKEventDeferringEnvironmentGraph_setModalityAssertions_forClientWithPID___block_invoke;
        v40[3] = &unk_2784F70B0;
        v41 = v9;
        v11 = [v10 bs_filter:v40];
      }
    }

    v12 = [v10 count];
    v13 = *(a2 + 56);
    if (v12)
    {
      if (!v13)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v15 = *(a2 + 56);
        *(a2 + 56) = v14;

        v13 = *(a2 + 56);
      }

      [v13 setObject:v10 forKey:{v8, v9, v8}];
    }

    else
    {
      [v13 removeObjectForKey:{v8, v9, v8}];
    }

    [(BKEventDeferringEnvironmentGraph *)a2 _updateModalityMap];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = [v21 selectionTarget];
          v23 = *(a2 + 40);
          v24 = [v22 target];
          v25 = [v23 objectForKey:v24];

          if (v25)
          {
            v26 = [v21 pathIdentifier];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __75__BKEventDeferringEnvironmentGraph_setModalityAssertions_forClientWithPID___block_invoke_2;
            v32[3] = &unk_2784F70D8;
            v32[4] = a2;
            v27 = v25;
            v35 = v31;
            v33 = v27;
            v34 = v21;
            [(BKEventDeferringEnvironmentGraph *)a2 _forEachSelectionPath:v26 block:v32];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:buf count:16];
      }

      while (v18);
    }

    v4 = v30;
  }
}

void __65__BKEventDeferringGraph_requestSelectionChange_forClientWithPID___block_invoke(uint64_t a1, id *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = [v4 selectionTarget];
    v6 = [v5 target];

    if (v6)
    {
      v7 = [v6 token];

      if (v7)
      {
        v8 = [a2[5] objectForKey:v6];
        v9 = v8;
        if (!v8)
        {
          v18 = BKLogEventDelivery();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v4;
            _os_log_error_impl(&dword_223CBE000, v18, OS_LOG_TYPE_ERROR, "selection request target not found: %{public}@", buf, 0xCu);
          }

          goto LABEL_19;
        }

        v10 = v8;
        v11 = v10;
        if (*(v10 + 2) != v3)
        {
          v12 = v10[2];
          v13 = [v12 target];
          if ([v13 pid] != v3)
          {
            v20 = v11[3];
            v21 = [v20 firstObject];
            if (v21)
            {
              v22 = v21[2];
            }

            else
            {
              v22 = 0;
            }

            if (v22 == v3)
            {
              v18 = BKLogEventDelivery();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v23 = BSProcessDescriptionForPID();
                *buf = 138543618;
                *&buf[4] = v23;
                *&buf[12] = 2114;
                *&buf[14] = v4;
                _os_log_error_impl(&dword_223CBE000, v18, OS_LOG_TYPE_ERROR, "selection request token is not accessible by the requesting process(%{public}@): %{public}@", buf, 0x16u);
              }

              goto LABEL_19;
            }

LABEL_9:
            v14 = [v4 basis];
            if (!v14)
            {
              v24 = MEMORY[0x277CCACA8];
              v25 = objc_opt_class();
              v26 = NSStringFromClass(v25);
              v27 = [v24 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"basis", v26];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v28 = NSStringFromSelector(sel__selectDeferringPathForRequest_requestingPID_);
                v29 = objc_opt_class();
                v30 = NSStringFromClass(v29);
                *buf = 138544642;
                *&buf[4] = v28;
                *&buf[12] = 2114;
                *&buf[14] = v30;
                *&buf[22] = 2048;
                v41 = a2;
                LOWORD(v42) = 2114;
                *(&v42 + 2) = @"BKEventDeferringEnvironmentGraph.m";
                WORD5(v42) = 1024;
                HIDWORD(v42) = 369;
                *v43 = 2114;
                *&v43[2] = v27;
                _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              [v27 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x223CE328CLL);
            }

            v15 = v14;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v31 = MEMORY[0x277CCACA8];
              v32 = [v15 classForCoder];
              if (!v32)
              {
                v32 = objc_opt_class();
              }

              v33 = NSStringFromClass(v32);
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = [v31 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"basis", v33, v35];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v37 = NSStringFromSelector(sel__selectDeferringPathForRequest_requestingPID_);
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                *buf = 138544642;
                *&buf[4] = v37;
                *&buf[12] = 2114;
                *&buf[14] = v39;
                *&buf[22] = 2048;
                v41 = a2;
                LOWORD(v42) = 2114;
                *(&v42 + 2) = @"BKEventDeferringEnvironmentGraph.m";
                WORD5(v42) = 1024;
                HIDWORD(v42) = 369;
                *v43 = 2114;
                *&v43[2] = v36;
                _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              [v36 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x223CE33C8);
            }

            v16 = [v4 ignoreModalities];
            v17 = [v4 pathIdentifier];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __81__BKEventDeferringEnvironmentGraph__selectDeferringPathForRequest_requestingPID___block_invoke;
            v41 = &unk_2784F7100;
            *&v42 = a2;
            *&v43[8] = v3;
            *(&v42 + 1) = v11;
            *v43 = v15;
            v44 = v16;
            v18 = v15;
            [(BKEventDeferringEnvironmentGraph *)a2 _forEachSelectionPath:v17 block:buf];

LABEL_19:
            goto LABEL_20;
          }
        }

        goto LABEL_9;
      }

      v9 = BKLogEventDelivery();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v4;
        v19 = "selection request deferring target token is nil: %{public}@";
        goto LABEL_16;
      }
    }

    else
    {
      v9 = BKLogEventDelivery();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v4;
        v19 = "selection request deferring target is nil: %{public}@";
LABEL_16:
        _os_log_error_impl(&dword_223CBE000, v9, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
      }
    }

LABEL_20:
  }
}

- (id)deferringPathForPID:(void *)d environment:(void *)environment display:(void *)display dispatchTarget:(void *)target returnModalities:
{
  v78 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v11 = MEMORY[0x277CF05F8];
    targetCopy = target;
    displayCopy = display;
    environmentCopy = environment;
    dCopy = d;
    v16 = [[v11 alloc] initWithDisplay:environmentCopy environment:dCopy];

    v17 = [*(self + 8) objectForKey:v16];
    v18 = displayCopy;
    v19 = targetCopy;
    if (!v17)
    {
      v20 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = *(v17 + 8);
    v22 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v23 = [v21 objectForKey:v22];

    v24 = v23;
    v25 = v24;
    if (v24)
    {
      v26 = v24[4];
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    selectionPathIdentifier = [v18 selectionPathIdentifier];
    if (!selectionPathIdentifier)
    {
      selectionPathIdentifier = [MEMORY[0x277CF0648] primary];
    }

    v29 = [*(v17 + 48) objectForKey:selectionPathIdentifier];
    if (!v29)
    {
      v29 = [[BKEventDeferringSelectionPathContainer alloc] initWithPathIdentifier:selectionPathIdentifier];
      [*(v17 + 48) setObject:v29 forKey:selectionPathIdentifier];
    }

    v62 = selectionPathIdentifier;
    v63 = v27;
    if (v18)
    {
      deferringToken = [v18 deferringToken];
      v61 = deferringToken != 0;
      firstObject = v25;
      if (deferringToken)
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        obj = v27;
        v32 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
        firstObject = v25;
        if (v32)
        {
          v33 = v32;
          v55 = v25;
          v57 = v18;
          v52 = v19;
          v53 = v20;
          v54 = v17;
          v59 = v16;
          v34 = *v70;
LABEL_13:
          v35 = 0;
          while (1)
          {
            if (*v70 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v69 + 1) + 8 * v35);
            v37 = v36 ? v36[2] : 0;
            v38 = v37;
            predicate = [v38 predicate];
            token = [predicate token];
            v41 = [token isEqual:deferringToken];

            if (v41)
            {
              break;
            }

            if (v33 == ++v35)
            {
              v42 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
              v33 = v42;
              if (!v42)
              {
                v25 = v55;
                firstObject = v55;
                goto LABEL_27;
              }

              goto LABEL_13;
            }
          }

          firstObject = v36;
          v25 = v55;

LABEL_27:
          v18 = v57;
          v16 = v59;
          v20 = v53;
          v17 = v54;
          v19 = v52;
        }

        v27 = v63;
      }

      if (firstObject)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v61 = 0;
      firstObject = v25;
      if (v25)
      {
        goto LABEL_31;
      }
    }

    firstObject = [v27 firstObject];
    if (!firstObject)
    {
LABEL_35:
      if (v19)
      {
        v58 = v18;
        v60 = v16;
        v56 = v25;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        reverseObjectEnumerator = [v20 reverseObjectEnumerator];
        v45 = [reverseObjectEnumerator countByEnumeratingWithState:&v65 objects:buf count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v66;
          while (2)
          {
            v48 = v19;
            for (i = 0; i != v46; ++i)
            {
              if (*v66 != v47)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v50 = [(BKEventDeferringSelectionPathContainer *)v29 modalitiesForNode:?];
              if ([v50 count])
              {
                v19 = v48;
                [v48 unionSet:v50];

                goto LABEL_46;
              }
            }

            v46 = [reverseObjectEnumerator countByEnumeratingWithState:&v65 objects:buf count:16];
            v19 = v48;
            if (v46)
            {
              continue;
            }

            break;
          }
        }

LABEL_46:

        v25 = v56;
        v18 = v58;
        v16 = v60;
        v27 = v63;
      }

      goto LABEL_48;
    }

LABEL_31:
    v43 = BKLogEventDelivery();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v74 = v29;
      v75 = 2114;
      v76 = firstObject;
      _os_log_debug_impl(&dword_223CBE000, v43, OS_LOG_TYPE_DEBUG, "CHOOSE %{public}@ @ %{public}@", buf, 0x16u);
    }

    [BKEventDeferringEnvironmentGraph _chooseSubnodeOfNode:firstObject forSelectionPath:v29 appendToPath:v20];
    if (!v61)
    {
      [v20 removeObjectAtIndex:0];
    }

    goto LABEL_35;
  }

  v20 = 0;
LABEL_49:

  return v20;
}

void __43__BKEventDeferringGraph_setSenderDisplays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  -[BKEventDeferringGraph _setRules:forPID:toDisplay:](*(a1 + 32), v5, [a2 intValue], *(a1 + 40));
}

- (void)_setRules:(int)rules forPID:(void *)d toDisplay:
{
  dCopy = d;
  v8 = dCopy;
  if (self)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__BKEventDeferringGraph__setRules_forPID_toDisplay___block_invoke;
    v20[3] = &unk_2784F6E50;
    v9 = dCopy;
    v21 = v9;
    v10 = [a2 bs_dictionaryByPartitioning:v20];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__BKEventDeferringGraph__setRules_forPID_toDisplay___block_invoke_2;
    v18[3] = &unk_2784F6E78;
    v18[4] = self;
    rulesCopy = rules;
    [v10 enumerateKeysAndObjectsUsingBlock:v18];
    v11 = [*(self + 8) copy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__BKEventDeferringGraph__setRules_forPID_toDisplay___block_invoke_3;
    v13[3] = &unk_2784F6EA0;
    v14 = v9;
    v15 = v10;
    rulesCopy2 = rules;
    selfCopy = self;
    v12 = v10;
    [v11 enumerateKeysAndObjectsUsingBlock:v13];
  }
}

id __52__BKEventDeferringGraph__setRules_forPID_toDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 predicate];
  v5 = [v4 display];
  v6 = _BKHIDEventDeferringDisplayMatch(v5, *(a1 + 32));

  if (v6)
  {
    v7 = [v3 predicate];
    v8 = [v7 environment];

    v9 = [objc_alloc(MEMORY[0x277CF05F8]) initWithDisplay:*(a1 + 32) environment:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __52__BKEventDeferringGraph__setRules_forPID_toDisplay___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKey:v22];
  if (!v6)
  {
    v6 = [BKEventDeferringEnvironmentGraph alloc];
    v7 = [v22 environment];
    v8 = v7;
    if (v6)
    {
      v23.receiver = v6;
      v23.super_class = BKEventDeferringEnvironmentGraph;
      v9 = objc_msgSendSuper2(&v23, sel_init);
      v6 = v9;
      if (v9)
      {
        objc_storeStrong(&v9->_environment, v7);
        v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
        allNodes = v6->_allNodes;
        v6->_allNodes = v10;

        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        nodeByDeferringTarget = v6->_nodeByDeferringTarget;
        v6->_nodeByDeferringTarget = v12;

        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        topLevelInEachProcess = v6->_topLevelInEachProcess;
        v6->_topLevelInEachProcess = v14;

        v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
        nodeByIdentity = v6->_nodeByIdentity;
        v6->_nodeByIdentity = v16;

        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        selectionPathContainerByIdentifier = v6->_selectionPathContainerByIdentifier;
        v6->_selectionPathContainerByIdentifier = v18;

        v20 = [MEMORY[0x277CF0648] primary];
        v21 = [[BKEventDeferringSelectionPathContainer alloc] initWithPathIdentifier:v20];
        [(NSMutableDictionary *)v6->_selectionPathContainerByIdentifier setObject:v21 forKey:v20];
      }
    }

    [*(*(a1 + 32) + 8) setObject:v6 forKey:v22];
  }

  [(BKEventDeferringEnvironmentGraph *)v6 setRules:v5 forPID:*(a1 + 40)];
}

void __52__BKEventDeferringGraph__setRules_forPID_toDisplay___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 display];
  v7 = v6;
  if (v6 == *(a1 + 32))
  {
    v8 = [*(a1 + 40) objectForKey:v9];

    if (!v8)
    {
      [(BKEventDeferringEnvironmentGraph *)v5 setRules:*(a1 + 56) forPID:?];
    }
  }

  else
  {
  }

  if (v5 && ![v5[3] count])
  {
    [*(*(a1 + 48) + 8) removeObjectForKey:v9];
  }
}

@end
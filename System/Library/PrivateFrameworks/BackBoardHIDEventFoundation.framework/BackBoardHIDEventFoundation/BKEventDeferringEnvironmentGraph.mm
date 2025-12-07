@interface BKEventDeferringEnvironmentGraph
- (BOOL)isEqual:(id)equal;
- (__CFString)_matchSubnode:(void *)subnode toSupernode:(void *)supernode;
- (id)allSelectionPathIdentifiers;
- (id)constraintsForNode:(uint64_t)node pathIdentifier:;
- (id)describeDeliveryChain:(id)chain identifier:(id)identifier;
- (id)graphDescriptionWithLabel:(id)label;
- (id)modalitiesForNode:(uint64_t)node pathIdentifier:;
- (uint64_t)topLevelInEachProcess;
- (void)_changeSelectionPath:(void *)path toNode:(int)node requestingPID:(void *)d basis:(char)basis ignoreModality:;
- (void)_chooseSubnodeOfNode:(void *)node forSelectionPath:(void *)path appendToPath:(void *)toPath;
- (void)_forEachSelectionPath:(void *)path block:;
- (void)_updateConstraintMap;
- (void)_updateModalityMap;
- (void)dealloc;
- (void)setRules:(int)rules forPID:;
@end

@implementation BKEventDeferringEnvironmentGraph

void __69__BKEventDeferringEnvironmentGraph__updateTopLevelNodesInEachProcess__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 count];

  if (!v7)
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:v8];
  }
}

- (void)_updateModalityMap
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(self + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke;
  v6[3] = &unk_2784F7168;
  v6[4] = self;
  v7 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_3;
  v5[3] = &unk_2784F7190;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)_updateConstraintMap
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(self + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke;
  v8[3] = &unk_2784F7168;
  v8[4] = self;
  v4 = v2;
  v9 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_3;
  v6[3] = &unk_2784F71B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (id)graphDescriptionWithLabel:(id)label
{
  v4 = sub_223CEACF0();
  v6 = v5;
  selfCopy = self;
  MEMORY[0x223DF72C0](v4, v6);
  MEMORY[0x223DF72C0](41, 0xE100000000000000);
  sub_223CC3B00(40, 0xE100000000000000, 0);

  sub_223CC4028(&selfCopy->super.isa);

  v8 = sub_223CEACE0();

  return v8;
}

- (id)describeDeliveryChain:(id)chain identifier:(id)identifier
{
  v6 = sub_223CEACF0();
  v8 = v7;
  chainCopy = chain;
  selfCopy = self;
  sub_223CC4424(chainCopy, v6, v8, &selfCopy->super.isa);

  v11 = sub_223CEACE0();

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMutableOrderedSet *)self->_allNodes isEqual:equalCopy->_allNodes];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(NSMutableOrderedSet *)self->_allNodes count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_allNodes;
    v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(BKEventDeferringNode *)*(*(&v9 + 1) + 8 * v7++) disconnectFromGraph];
        }

        while (v5 != v7);
        v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8.receiver = self;
  v8.super_class = BKEventDeferringEnvironmentGraph;
  [(BKEventDeferringEnvironmentGraph *)&v8 dealloc];
}

- (void)setRules:(int)rules forPID:
{
  v166 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (self)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(self + 16);
      v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v4];
      *buf = 138544130;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 1024;
      LODWORD(v165) = rules;
      WORD2(v165) = 2114;
      *(&v165 + 6) = v7;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] setRules:forPID(%d): %{public}@", buf, 0x26u);
    }

    v8 = *(self + 24);
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke;
    v128[3] = &__block_descriptor_36_e30__16__0__BKEventDeferringNode_8l;
    rulesCopy = rules;
    v103 = [v8 bs_compactMap:v128];
    v109 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v100 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v124 objects:v147 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v125;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v125 != v12)
          {
            objc_enumerationMutation(v9);
          }

          identity = [*(*(&v124 + 1) + 8 * i) identity];
          [v109 addObject:identity];
        }

        v11 = [v9 countByEnumeratingWithState:&v124 objects:v147 count:16];
      }

      while (v11);
    }

    v15 = [v109 mutableCopy];
    [v15 minusOrderedSet:v103];
    v16 = [v103 mutableCopy];
    [v16 minusOrderedSet:v109];
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_2;
    v121[3] = &unk_2784F7060;
    v104 = v15;
    v122 = v104;
    rulesCopy2 = rules;
    v101 = [v9 bs_compactMap:v121];
    v102 = v16;
    selfCopy = self;
    if ([v16 count])
    {
      v17 = BKLogEventDelivery();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v98 = *(self + 16);
        *buf = 138543618;
        *&buf[4] = v98;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_debug_impl(&dword_223CBE000, v17, OS_LOG_TYPE_DEBUG, "removing rules from %{public}@: %{public}@", buf, 0x16u);
      }

      v18 = v16;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      obj = v18;
      v19 = [v18 countByEnumeratingWithState:&v160 objects:buf count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v161;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v161 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [*(self + 32) objectForKey:*(*(&v160 + 1) + 8 * j)];
            v24 = v23;
            if (v23)
            {
              v25 = *(self + 48);
              *&v156 = MEMORY[0x277D85DD0];
              *(&v156 + 1) = 3221225472;
              *&v157 = __67__BKEventDeferringEnvironmentGraph__removeNodesWithIdentities_pid___block_invoke;
              *(&v157 + 1) = &unk_2784F7208;
              v26 = v23;
              *&v158 = v26;
              [v25 enumerateKeysAndObjectsUsingBlock:&v156];
              [(BKEventDeferringNode *)v26 disconnectFromGraph];
              v27 = v26[2];
              target = [v27 target];
              if (target)
              {
                [*(self + 40) removeObjectForKey:target];
              }

              v29 = *(self + 32);
              identity2 = [v27 identity];
              [v29 removeObjectForKey:identity2];

              self = selfCopy;
              [*(selfCopy + 24) removeObject:v26];
            }
          }

          v20 = [obj countByEnumeratingWithState:&v160 objects:buf count:16];
        }

        while (v20);
      }
    }

    if ([v104 count])
    {
      v31 = BKLogEventDelivery();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v99 = *(self + 16);
        *buf = 138543618;
        *&buf[4] = v99;
        *&buf[12] = 2114;
        *&buf[14] = v104;
        _os_log_debug_impl(&dword_223CBE000, v31, OS_LOG_TYPE_DEBUG, "adding rules to %{public}@: %{public}@", buf, 0x16u);
      }

      v32 = v101;
      [*(self + 24) addObjectsFromArray:v32];
      v144 = 0u;
      v145 = 0u;
      v142 = 0;
      v143 = 0u;
      v106 = v32;
      v33 = [v106 countByEnumeratingWithState:&v142 objects:buf count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v143;
        do
        {
          v36 = 0;
          do
          {
            if (*v143 != v35)
            {
              objc_enumerationMutation(v106);
            }

            v37 = *(v142.super_class + v36);
            if (v37)
            {
              v38 = *(v37 + 16);
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;
            v40 = *(self + 32);
            identity3 = [v39 identity];
            [v40 setObject:v37 forKey:identity3];

            target2 = [v39 target];
            if (target2)
            {
              [*(self + 40) setObject:v37 forKey:target2];
            }

            ++v36;
          }

          while (v34 != v36);
          v43 = [v106 countByEnumeratingWithState:&v142 objects:buf count:16];
          v34 = v43;
        }

        while (v43);
      }

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v44 = *(self + 24);
      v45 = [v44 countByEnumeratingWithState:&v138 objects:&v160 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v139;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v139 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [(BKEventDeferringNode *)*(*(&v138 + 1) + 8 * k) disconnectFromGraph];
          }

          v46 = [v44 countByEnumeratingWithState:&v138 objects:&v160 count:16];
        }

        while (v46);
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v105 = *(self + 24);
      v108 = [v105 countByEnumeratingWithState:&v134 objects:&v156 count:16];
      if (v108)
      {
        v107 = *v135;
        do
        {
          v49 = 0;
          do
          {
            if (*v135 != v107)
            {
              objc_enumerationMutation(v105);
            }

            v111 = v49;
            v50 = *(*(&v134 + 1) + 8 * v49);
            v51 = BKLogEventDelivery();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              if (v50)
              {
                v64 = v50[2];
              }

              else
              {
                v64 = 0;
              }

              v65 = v64;
              identity4 = [v65 identity];
              *v148 = 138543362;
              v149 = identity4;
              _os_log_debug_impl(&dword_223CBE000, v51, OS_LOG_TYPE_DEBUG, "match supernode %{public}@", v148, 0xCu);
            }

            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v52 = *(self + 24);
            v53 = [v52 countByEnumeratingWithState:&v130 objects:&v152 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v131;
              do
              {
                v56 = 0;
                do
                {
                  if (*v131 != v55)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v57 = *(*(&v130 + 1) + 8 * v56);
                  if (v50 != v57)
                  {
                    v58 = [BKEventDeferringEnvironmentGraph _matchSubnode:v50 toSupernode:?];
                    if (v58 != @"process doesn't match")
                    {
                      v59 = BKLogEventDelivery();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                      {
                        if (v57)
                        {
                          v60 = v57[2];
                        }

                        else
                        {
                          v60 = 0;
                        }

                        v61 = v60;
                        identity5 = [v61 identity];
                        *v148 = 138543618;
                        v149 = identity5;
                        v150 = 2114;
                        v151 = v58;
                        _os_log_debug_impl(&dword_223CBE000, v59, OS_LOG_TYPE_DEBUG, "   -> %{public}@: %{public}@", v148, 0x16u);
                      }

                      if (v58 == @"connected")
                      {
                        [(BKEventDeferringNode *)v50 connectSubnode:v57];
                      }
                    }
                  }

                  ++v56;
                }

                while (v54 != v56);
                v63 = [v52 countByEnumeratingWithState:&v130 objects:&v152 count:16];
                v54 = v63;
              }

              while (v63);
            }

            self = selfCopy;
            v49 = v111 + 1;
          }

          while (v111 + 1 != v108);
          v67 = [v105 countByEnumeratingWithState:&v134 objects:&v156 count:16];
          v108 = v67;
        }

        while (v67);
      }
    }

    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    obja = *(self + 24);
    v68 = [obja countByEnumeratingWithState:&v152 objects:&v160 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v153;
      do
      {
        v71 = 0;
        do
        {
          if (*v153 != v70)
          {
            objc_enumerationMutation(obja);
          }

          v72 = *(*(&v152 + 1) + 8 * v71);
          v73 = v72;
          if (v72)
          {
            v74 = *(v72 + 2);
          }

          else
          {
            v74 = 0;
          }

          v75 = [MEMORY[0x277CCABB0] numberWithInt:v74];
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          if (v73)
          {
            v76 = v73[3];
          }

          else
          {
            v76 = 0;
          }

          v77 = v76;
          v78 = [v77 countByEnumeratingWithState:&v156 objects:buf count:16];
          if (v78)
          {
            v79 = v78;
            v80 = *v157;
LABEL_92:
            v81 = 0;
            while (1)
            {
              if (*v157 != v80)
              {
                objc_enumerationMutation(v77);
              }

              v82 = *(*(&v156 + 1) + 8 * v81);
              if (v82)
              {
                LODWORD(v82) = *(v82 + 8);
              }

              if (v74 != v82)
              {
                break;
              }

              if (v79 == ++v81)
              {
                v79 = [v77 countByEnumeratingWithState:&v156 objects:buf count:16];
                if (v79)
                {
                  goto LABEL_92;
                }

                self = selfCopy;
                goto LABEL_107;
              }
            }
          }

          self = selfCopy;
          v77 = [*(selfCopy + 8) objectForKey:v75];
          if (!v77)
          {
            v83 = [BKEventDeferringNode alloc];
            if (v83)
            {
              v142.receiver = v83;
              v142.super_class = BKEventDeferringNode;
              v84 = objc_msgSendSuper2(&v142, sel_init);
              v77 = v84;
              if (v84)
              {
                *(v84 + 2) = v74;
                v85 = objc_alloc_init(MEMORY[0x277CBEB40]);
                v86 = v77[4];
                v77[4] = v85;

                v87 = objc_alloc_init(MEMORY[0x277CBEB40]);
                v88 = v77[3];
                v77[3] = v87;
              }
            }

            else
            {
              v77 = 0;
            }

            [*(selfCopy + 8) setObject:v77 forKey:v75];
          }

          [(BKEventDeferringNode *)v77 connectSubnode:v73];
LABEL_107:

          ++v71;
        }

        while (v71 != v69);
        v89 = [obja countByEnumeratingWithState:&v152 objects:&v160 count:16];
        v69 = v89;
      }

      while (v89);
    }

    v90 = [*(self + 8) copy];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __69__BKEventDeferringEnvironmentGraph__updateTopLevelNodesInEachProcess__block_invoke;
    *&v165 = &unk_2784F71E0;
    *(&v165 + 1) = self;
    [v90 enumerateKeysAndObjectsUsingBlock:buf];

    [(BKEventDeferringEnvironmentGraph *)self _updateModalityMap];
    [(BKEventDeferringEnvironmentGraph *)self _updateConstraintMap];
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v91 = v101;
    v92 = [v91 countByEnumeratingWithState:&v117 objects:v146 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v118;
      do
      {
        for (m = 0; m != v93; ++m)
        {
          if (*v118 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(&v117 + 1) + 8 * m);
          everySelectionPath = [MEMORY[0x277CF0648] everySelectionPath];
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_10;
          v115[3] = &unk_2784F7088;
          v115[4] = v96;
          v115[5] = selfCopy;
          rulesCopy3 = rules;
          [(BKEventDeferringEnvironmentGraph *)selfCopy _forEachSelectionPath:everySelectionPath block:v115];
        }

        v93 = [v91 countByEnumeratingWithState:&v117 objects:v146 count:16];
      }

      while (v93);
    }

    v4 = v100;
  }
}

id __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 2) == *(a1 + 32))
    {
      v5 = *(v3 + 2);
LABEL_4:
      v6 = v5;
      v7 = [v6 identity];

      goto LABEL_6;
    }

    v7 = 0;
  }

  else
  {
    v5 = 0;
    v9 = a1;
    v7 = 0;
    if (!*(v9 + 32))
    {
      goto LABEL_4;
    }
  }

LABEL_6:

  return v7;
}

BKEventDeferringNode *__52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v4 identity];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = [BKEventDeferringNode alloc];
    v8 = *(a1 + 40);
    v9 = v4;
    if (v7)
    {
      v16.receiver = v7;
      v16.super_class = BKEventDeferringNode;
      v10 = objc_msgSendSuper2(&v16, sel_init);
      v7 = v10;
      if (v10)
      {
        v10->_pid = v8;
        objc_storeStrong(&v10->_rule, a2);
        v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
        subnodes = v7->_subnodes;
        v7->_subnodes = v11;

        v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
        supernodes = v7->_supernodes;
        v7->_supernodes = v13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_10(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v3 = *(a1 + 32);
  if (v31)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v3;
    if (v3)
    {
      v4 = v3[3];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 firstObject];
    v7 = v6;
    v28 = a1;
    if (v6)
    {
      v8 = *(v6 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v37;
      v14 = -1.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [v31[4] objectForKey:{v16, v28, v29}];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v33;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v33 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [*(*(&v32 + 1) + 8 * j) timestamp];
                if (v22 > v14)
                {
                  v23 = v22;
                  v24 = v16;

                  v14 = v23;
                  v12 = v24;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v19);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    if (v12 && ([(BKEventDeferringSelectionPathContainer *)v31 containsNode:v12]& 1) == 0)
    {
      v25 = *(v28 + 40);
      v26 = *(v28 + 48);
      v27 = [MEMORY[0x277CF0618] constraintBasis];
      [(BKEventDeferringEnvironmentGraph *)v25 _changeSelectionPath:v31 toNode:v12 requestingPID:v26 basis:v27 ignoreModality:1];
    }
  }

  else
  {

    v12 = 0;
  }
}

- (void)_forEachSelectionPath:(void *)path block:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  pathCopy = path;
  if (self)
  {
    everySelectionPath = [MEMORY[0x277CF0648] everySelectionPath];

    if (everySelectionPath == v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      allValues = [*(self + 48) allValues];
      v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(allValues);
            }

            pathCopy[2](pathCopy, *(*(&v15 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v8 = v5;
      v9 = [*(self + 48) objectForKey:v8];
      if (!v9)
      {
        v9 = [[BKEventDeferringSelectionPathContainer alloc] initWithPathIdentifier:v8];
        [*(self + 48) setObject:v9 forKey:v8];
      }

      (pathCopy)[2](pathCopy, v9);
    }
  }
}

- (void)_changeSelectionPath:(void *)path toNode:(int)node requestingPID:(void *)d basis:(char)basis ignoreModality:
{
  v124 = *MEMORY[0x277D85DE8];
  v11 = a2;
  pathCopy = path;
  dCopy = d;
  if (self)
  {
    if (!pathCopy)
    {
      v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetNode != ((void*)0)"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v87 = NSStringFromSelector(sel__changeSelectionPath_toNode_requestingPID_basis_ignoreModality_);
        v88 = objc_opt_class();
        v89 = NSStringFromClass(v88);
        *buf = 138544642;
        v109 = v87;
        v110 = 2114;
        selfCopy4 = v89;
        v112 = 2048;
        selfCopy = self;
        v114 = 2114;
        *v115 = @"BKEventDeferringEnvironmentGraph.m";
        *&v115[8] = 1024;
        *&v115[10] = 403;
        v116 = 2114;
        v117 = v86;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v86 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CE8F40);
    }

    v14 = BKLogEventDelivery();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self[2];
      *buf = 138544386;
      v109 = v15;
      v110 = 2048;
      selfCopy4 = self;
      v112 = 2114;
      selfCopy = v11;
      v114 = 1024;
      *v115 = node;
      *&v115[4] = 2114;
      *&v115[6] = pathCopy;
      _os_log_impl(&dword_223CBE000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ requestingPID:(%d) toNode:%{public}@", buf, 0x30u);
    }

    eventProvenance = [dCopy eventProvenance];

    if (!eventProvenance)
    {
      if (*(pathCopy + 2) != node)
      {
        firstObject = BKLogEventDelivery();
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
        {
          v46 = self[2];
          *buf = 138544386;
          v109 = v46;
          v110 = 2048;
          selfCopy4 = self;
          v112 = 2114;
          selfCopy = v11;
          v114 = 1024;
          *v115 = node;
          *&v115[4] = 2114;
          *&v115[6] = pathCopy;
          _os_log_impl(&dword_223CBE000, firstObject, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting hostOverride: not hosted by pid(%d) -- %{public}@", buf, 0x30u);
        }

        goto LABEL_28;
      }

      v40 = *(pathCopy + 3);
      firstObject = [v40 firstObject];

      if (([(BKEventDeferringSelectionPathContainer *)v11 containsNode:firstObject]& 1) == 0)
      {
        v41 = firstObject ? firstObject[3].isa : 0;
        v42 = v41;
        v43 = [(objc_class *)v42 count];

        if (v43)
        {
          v44 = BKLogEventDelivery();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = self[2];
            *buf = 138544130;
            v109 = v45;
            v110 = 2048;
            selfCopy4 = self;
            v112 = 2114;
            selfCopy = v11;
            v114 = 2114;
            *v115 = pathCopy;
            _os_log_impl(&dword_223CBE000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting: parent not in selection path -- %{public}@", buf, 0x2Au);
          }

          goto LABEL_28;
        }
      }
    }

    basisCopy = basis;
    selfCopy5 = self;
    v96 = dCopy;
    v97 = pathCopy;
    firstObject3 = pathCopy;
    v18 = 0;
    v95 = firstObject3;
    v98 = v11;
    do
    {
      v19 = firstObject3;
      v20 = v11;
      v21 = [(BKEventDeferringSelectionPathContainer *)v20 constraintsForNode:v19];
      v22 = [v21 count];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v23 = v19[3];
      firstObject2 = [v23 firstObject];
      v25 = firstObject2;
      if (firstObject2)
      {
        v26 = *(firstObject2 + 32);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      v28 = [v27 countByEnumeratingWithState:&v103 objects:buf count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v104;
        while (2)
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v104 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v103 + 1) + 8 * i);
            if (v32 != v19)
            {
              v33 = [(BKEventDeferringSelectionPathContainer *)v20 constraintsForNode:v32];
              v34 = [v33 count];

              if (v34 && v22 == 0)
              {

                reverseObjectEnumerator = BKLogEventDelivery();
                if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = selfCopy5[2];
                  *buf = 138544130;
                  v109 = v39;
                  v110 = 2048;
                  selfCopy4 = selfCopy5;
                  v112 = 2114;
                  selfCopy = v20;
                  v114 = 2114;
                  *v115 = v95;
                  _os_log_impl(&dword_223CBE000, reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting because target is not reachable due to constraints -- %{public}@", buf, 0x2Au);
                }

                firstObject = v18;
                v11 = v98;
LABEL_27:
                dCopy = v96;
                pathCopy = v97;

                goto LABEL_28;
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v103 objects:buf count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      firstObject = v19;
      v37 = v19[3];
      firstObject3 = [v37 firstObject];

      v18 = firstObject;
      v11 = v98;
    }

    while (firstObject3);
    if ((basisCopy & 1) == 0)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v47 = [(BKEventDeferringSelectionPathContainer *)v20 modalitiesForNode:v95];
      activeInputModality = [MEMORY[0x277CF0630] activeInputModality];
      v49 = [v47 containsObject:activeInputModality];

      [BKEventDeferringEnvironmentGraph _chooseSubnodeOfNode:firstObject forSelectionPath:v20 appendToPath:v19];
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      reverseObjectEnumerator = [v19 reverseObjectEnumerator];
      v93 = [reverseObjectEnumerator countByEnumeratingWithState:&v99 objects:v107 count:16];
      if (v93)
      {
        v90 = *v100;
        v50 = 1;
        v91 = v49;
        while (2)
        {
          for (j = 0; j != v93; ++j)
          {
            if (*v100 != v90)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v52 = [(BKEventDeferringSelectionPathContainer *)v20 modalitiesForNode:?];
            activeInputModality2 = [MEMORY[0x277CF0630] activeInputModality];
            v54 = [v52 containsObject:activeInputModality2];

            if (!(v91 & 1 | ((v54 & 1) == 0)))
            {
              v55 = BKLogEventDelivery();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = selfCopy5[2];
                *buf = 138544130;
                v109 = v56;
                v110 = 2048;
                selfCopy4 = selfCopy5;
                v112 = 2114;
                selfCopy = v20;
                v114 = 2114;
                *v115 = v95;
                _os_log_impl(&dword_223CBE000, v55, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting because we can't switch from activeInput to not-activeInput -- %{public}@", buf, 0x2Au);
              }

              goto LABEL_27;
            }

            if (v54)
            {
              v50 = v91;
            }
          }

          v93 = [reverseObjectEnumerator countByEnumeratingWithState:&v99 objects:v107 count:16];
          if (v93)
          {
            continue;
          }

          break;
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }
    }

    firstObject6 = v95;
    do
    {
      v58 = firstObject6;
      v59 = v58;
      if (v20)
      {
        v60 = v58[3];
        firstObject4 = [v60 firstObject];
        v62 = firstObject4;
        if (firstObject4)
        {
          v63 = *(firstObject4 + 32);
        }

        else
        {
          v63 = 0;
        }

        v64 = v63;

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v65 = v64;
        v66 = [v65 countByEnumeratingWithState:&v103 objects:buf count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v104;
          do
          {
            for (k = 0; k != v67; ++k)
            {
              if (*v104 != v68)
              {
                objc_enumerationMutation(v65);
              }

              if (*(*(&v103 + 1) + 8 * k) != v59)
              {
                [v20 _removeNode:?];
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v103 objects:buf count:16];
          }

          while (v67);
        }

        v70 = v59;
        v71 = v70[2];
        identity = [v71 identity];

        if (identity)
        {
          v73 = v20[2];
          if (!v73)
          {
            v74 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v75 = v20[2];
            v20[2] = v74;

            v73 = v20[2];
          }

          [v73 addObject:identity];
          v76 = v59[3];
          firstObject5 = [v76 firstObject];
          v78 = [v20 _keyForNode:firstObject5];

          v79 = v20[3];
          if (!v79)
          {
            v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v81 = v20[3];
            v20[3] = v80;

            v79 = v20[3];
          }

          [v79 bs_addObject:v70 toCollectionClass:objc_opt_class() forKey:v78];
          v82 = BKLogEventDelivery();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            v84 = v20[1];
            v85 = [MEMORY[0x277CF0C08] descriptionForRootObject:v20[3]];
            *v118 = 138543874;
            v119 = v84;
            v120 = 2114;
            v121 = v78;
            v122 = 2114;
            v123 = v85;
            _os_log_debug_impl(&dword_223CBE000, v82, OS_LOG_TYPE_DEBUG, "selection history %{public}@ (add %{public}@): %{public}@", v118, 0x20u);
          }
        }
      }

      v83 = v59[3];
      firstObject6 = [v83 firstObject];

      v11 = v98;
    }

    while (firstObject6);
LABEL_53:
    dCopy = v96;
    pathCopy = v97;
LABEL_28:
  }
}

- (void)_chooseSubnodeOfNode:(void *)node forSelectionPath:(void *)path appendToPath:(void *)toPath
{
  v61 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  pathCopy = path;
  toPathCopy = toPath;
  [toPathCopy addObject:nodeCopy];
  if (nodeCopy)
  {
    v8 = nodeCopy[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  v44 = toPathCopy;
  obj = v9;
  if (pathCopy)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = nodeCopy;
      v14 = 0;
      lastObject = 0;
      v16 = *v52;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          if ([(BKEventDeferringSelectionPathContainer *)pathCopy containsNode:v18])
          {
            v19 = v18;

            v14 = @"selected";
            lastObject = v19;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v12);
      nodeCopy = v13;
      if (lastObject)
      {
        goto LABEL_40;
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = obj;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v45 = v20;
      v43 = nodeCopy;
      lastObject = 0;
      v23 = 0;
      v24 = *v48;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v45);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          v27 = [(BKEventDeferringSelectionPathContainer *)pathCopy modalitiesForNode:v26];
          v28 = [v27 count];

          if (v28)
          {
            v29 = 10;
          }

          else
          {
            v29 = 0;
          }

          v30 = [(BKEventDeferringSelectionPathContainer *)pathCopy constraintsForNode:v26];
          v31 = [v30 count];

          if (v31)
          {
            v32 = v29 | 0x64;
          }

          else
          {
            v32 = v29;
          }

          if (v32 > v23)
          {
            v33 = v26;

            lastObject = v33;
            v23 = v32;
          }
        }

        v22 = [v45 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v22);

      nodeCopy = v43;
      if (lastObject)
      {
        v14 = @"priority";
LABEL_40:
        v40 = BKLogEventDelivery();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          v56 = v14;
          v57 = 2114;
          v58 = lastObject;
          _os_log_debug_impl(&dword_223CBE000, v40, OS_LOG_TYPE_DEBUG, "CHOOSE %{public}@ subnode:%{public}@", buf, 0x16u);
        }

        toPathCopy = v44;
        [BKEventDeferringEnvironmentGraph _chooseSubnodeOfNode:lastObject forSelectionPath:pathCopy appendToPath:v44];
        v10 = obj;
        goto LABEL_46;
      }
    }

    else
    {
    }

    if (nodeCopy)
    {
      v34 = nodeCopy[4];
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v36 = pathCopy[3];
    v37 = [pathCopy _keyForNode:nodeCopy];
    v38 = [v36 objectForKey:v37];
    lastObject = [v38 lastObject];

    if (lastObject && ([v35 containsObject:lastObject] & 1) != 0)
    {

      v14 = @"previous";
      goto LABEL_40;
    }

    toPathCopy = v44;
    v10 = obj;
  }

  firstObject = [v10 firstObject];
  if (firstObject)
  {
    lastObject = firstObject;
    v14 = @"first";
    goto LABEL_40;
  }

  v41 = BKLogEventDelivery();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    succinctDescription = [(BKEventDeferringNode *)nodeCopy succinctDescription];
    *buf = 138543362;
    v56 = succinctDescription;
    _os_log_debug_impl(&dword_223CBE000, v41, OS_LOG_TYPE_DEBUG, "CHOOSE %{public}@ done", buf, 0xCu);
  }

  lastObject = 0;
LABEL_46:
}

void __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 pathIdentifier];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_2;
        v12[3] = &unk_2784F7140;
        v13 = *(a1 + 40);
        v14 = v8;
        [(BKEventDeferringEnvironmentGraph *)v9 _forEachSelectionPath:v10 block:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

void __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = *(*(a1 + 32) + 40);
        v13 = [v11 selectionTarget];
        v14 = [v13 target];
        v15 = [v12 objectForKey:v14];

        if (v15)
        {
          [v6 bs_addObject:v11 toCollectionClass:objc_opt_class() forKey:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v16 = v6;
  if (v19)
  {
    objc_storeStrong(v19 + 4, v6);
  }

  v17 = BKLogEventDelivery();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    *buf = 138543618;
    v26 = v19;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_223CBE000, v17, OS_LOG_TYPE_DEFAULT, "constraints(%{public}@) now %{public}@", buf, 0x16u);
  }
}

void __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 bs_addObject:v3 toCollectionClass:objc_opt_class() forKey:v4];
}

void __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 pathIdentifier];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_2;
        v12[3] = &unk_2784F7140;
        v13 = *(a1 + 40);
        v14 = v8;
        [(BKEventDeferringEnvironmentGraph *)v9 _forEachSelectionPath:v10 block:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

void __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 40);
        v14 = [v12 selectionTarget];
        v15 = [v14 target];
        v16 = [v13 objectForKey:v15];

        if (v16)
        {
          [v6 bs_addObject:v12 toCollectionClass:objc_opt_class() forKey:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = v6;
  if (v18)
  {
    objc_storeStrong(v18 + 5, v6);
  }
}

void __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 bs_addObject:v3 toCollectionClass:objc_opt_class() forKey:v4];
}

- (__CFString)_matchSubnode:(void *)subnode toSupernode:(void *)supernode
{
  v32 = *MEMORY[0x277D85DE8];
  subnodeCopy = subnode;
  supernodeCopy = supernode;
  v5 = supernodeCopy;
  if (subnodeCopy != supernodeCopy)
  {
    if (supernodeCopy)
    {
      v7 = supernodeCopy[2];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    target = [v8 target];

    v10 = [target pid];
    if (subnodeCopy)
    {
      if (v10 == *(subnodeCopy + 2))
      {
        v11 = subnodeCopy[2];
LABEL_8:
        v12 = v11;
        predicate = [v12 predicate];

        token = [predicate token];
        token2 = [target token];
        v16 = token2;
        if (token || !token2)
        {
          if ((BSEqualObjects() & 1) == 0)
          {
            v6 = @"no token match";
            goto LABEL_22;
          }

          if (![(BKEventDeferringNode *)v5 hasAncestorNode:subnodeCopy])
          {
            v6 = @"connected";
            goto LABEL_22;
          }
        }

        else
        {
          if (subnodeCopy)
          {
            v17 = subnodeCopy[3];
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          v19 = [v18 count];

          if (v19)
          {
            v6 = @"partial match, but there's already a supernode";
LABEL_22:

LABEL_31:
            goto LABEL_32;
          }

          if (([(BKEventDeferringNode *)v5 hasAncestorNode:subnodeCopy]& 1) == 0)
          {
            v6 = @"partial connection";
            goto LABEL_22;
          }
        }

        v20 = BKLogEventDelivery();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (v5)
          {
            v21 = v5[2];
          }

          else
          {
            v21 = 0;
          }

          v27 = v21;
          identity = [v27 identity];
          if (subnodeCopy)
          {
            v23 = subnodeCopy[2];
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          identity2 = [v24 identity];
          *buf = 138543618;
          v29 = identity;
          v30 = 2114;
          v31 = identity2;
          _os_log_error_impl(&dword_223CBE000, v20, OS_LOG_TYPE_ERROR, "cycle detected between %{public}@ -> %{public}@", buf, 0x16u);
        }

        v6 = @"cycle detected";
        goto LABEL_22;
      }
    }

    else if (!v10)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v6 = @"process doesn't match";
    goto LABEL_31;
  }

  v6 = 0;
LABEL_32:

  return v6;
}

void __67__BKEventDeferringEnvironmentGraph__removeNodesWithIdentities_pid___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a3 && [a3 _removeNode:v4])
  {
    if (v4)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 identity];

    if (v4)
    {
      v8 = v4[3];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 firstObject];
    v11 = [a3 _keyForNode:v10];

    [*(a3 + 24) bs_removeObject:v4 fromCollectionForKey:v11];
    [*(a3 + 24) removeObjectForKey:v7];
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a3 + 8);
      v14 = [MEMORY[0x277CF0C08] descriptionForRootObject:*(a3 + 24)];
      v15 = 138543874;
      v16 = v13;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v14;
      _os_log_debug_impl(&dword_223CBE000, v12, OS_LOG_TYPE_DEBUG, "selection history %{public}@ (remove %{public}@): %{public}@", &v15, 0x20u);
    }
  }
}

void __77__BKEventDeferringEnvironmentGraph_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = MEMORY[0x277CF0618];
  v6 = a2;
  v7 = [v5 constraintBasis];
  [(BKEventDeferringEnvironmentGraph *)v2 _changeSelectionPath:v6 toNode:v3 requestingPID:v4 basis:v7 ignoreModality:1];
}

void __75__BKEventDeferringEnvironmentGraph_setModalityAssertions_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 basis];
  [(BKEventDeferringEnvironmentGraph *)v2 _changeSelectionPath:v6 toNode:v3 requestingPID:v4 basis:v7 ignoreModality:1];
}

- (id)constraintsForNode:(uint64_t)node pathIdentifier:
{
  if (self)
  {
    v4 = *(self + 48);
    v5 = a2;
    v6 = [v4 objectForKey:node];
    v7 = [(BKEventDeferringSelectionPathContainer *)v6 constraintsForNode:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)modalitiesForNode:(uint64_t)node pathIdentifier:
{
  if (self)
  {
    v4 = *(self + 48);
    v5 = a2;
    v6 = [v4 objectForKey:node];
    v7 = [(BKEventDeferringSelectionPathContainer *)v6 modalitiesForNode:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allSelectionPathIdentifiers
{
  if (self)
  {
    self = [self[6] allKeys];
    v1 = vars8;
  }

  return self;
}

id __94__BKEventDeferringEnvironmentGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 identity];

  return v4;
}

id __94__BKEventDeferringEnvironmentGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 identity];

  return v4;
}

- (uint64_t)topLevelInEachProcess
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end